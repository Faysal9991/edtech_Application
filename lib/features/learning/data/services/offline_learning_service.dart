import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_gateway.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef OfflineDownloadProgress = void Function(int received, int total);
typedef OfflineRootProvider = Future<Directory> Function();

/// Durable offline manifests and exactly-once mutation outbox.
///
/// Signed URLs are consumed during download and deliberately excluded from all
/// persisted metadata. Server cursors are stored and replayed as opaque values.
class OfflineLearningService {
  OfflineLearningService({
    required OfflineLearningGateway repository,
    required SharedPreferences preferences,
    Dio? downloadDio,
    OfflineRootProvider? offlineRoot,
  }) : _repository = repository,
       _preferences = preferences,
       _downloadDio = downloadDio ?? Dio(),
       _offlineRootProvider = offlineRoot;

  static const _manifestPrefix = 'offline_manifest_v1_';
  static const _entitlementPrefix = 'offline_entitlement_v1_';
  static const _changesCursorKey = 'offline_changes_cursor_v1';
  static const _outboxKey = 'offline_outbox_v1';
  static const _operationLedgerKey = 'offline_operation_ledger_v1';
  static const _maxOperationsPerSync = 100;
  static const _maxLedgerEntries = 1000;

  final OfflineLearningGateway _repository;
  final SharedPreferences _preferences;
  final Dio _downloadDio;
  final OfflineRootProvider? _offlineRootProvider;
  final Random _random = Random.secure();
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  void startConnectivityMonitoring() {
    _connectivitySubscription ??= Connectivity().onConnectivityChanged.listen((
      results,
    ) {
      if (results.any((result) => result != ConnectivityResult.none)) {
        unawaited(syncPending().catchError((_) => const OfflineSyncReport()));
      }
    });
  }

  Future<void> stopConnectivityMonitoring() async {
    await _connectivitySubscription?.cancel();
    _connectivitySubscription = null;
  }

  Future<OfflineDownloadResult> downloadEnrollment(
    String enrollmentId, {
    CancelToken? cancelToken,
    OfflineDownloadProgress? onProgress,
  }) async {
    final entitlement = await _repository.issueOfflineEntitlement(enrollmentId);
    if (!entitlement.isUsable) {
      await deleteEnrollment(enrollmentId);
      throw const AppException('Offline entitlement মেয়াদোত্তীর্ণ বা revoked।');
    }

    final manifest = await _repository.getOfflineManifest(enrollmentId);
    await _saveEntitlement(entitlement);
    await _saveManifestMetadata(manifest);

    var downloadedBytes = 0;
    final totalBytes = manifest.items.fold<int>(
      0,
      (sum, item) => sum + (item.media?.sizeBytes ?? 0),
    );
    var downloadedFiles = 0;
    for (final item in manifest.items) {
      final media = item.media;
      if (media == null) continue;
      final file = await _downloadManifestMedia(
        enrollmentId: enrollmentId,
        item: item,
        media: media,
        cancelToken: cancelToken,
        onProgress: (received) {
          onProgress?.call(downloadedBytes + received, totalBytes);
        },
      );
      downloadedBytes += await file.length();
      downloadedFiles++;
      onProgress?.call(downloadedBytes, totalBytes);
    }

    return OfflineDownloadResult(
      enrollmentId: enrollmentId,
      manifestVersion: manifest.version,
      downloadedFiles: downloadedFiles,
      downloadedBytes: downloadedBytes,
    );
  }

  Future<OfflineChangeListDto> fetchIncrementalChanges() async {
    final cursor = _preferences.getString(_changesCursorKey);
    final changes = await _repository.listOfflineChanges(cursor: cursor);
    final next = changes.nextCursor;
    if (next == null || next.isEmpty) {
      await _preferences.remove(_changesCursorKey);
    } else {
      await _preferences.setString(_changesCursorKey, next);
    }
    return changes;
  }

  Future<String> queueProgress({
    String? clientOperationId,
    required String enrollmentId,
    required String lessonId,
    required int positionSeconds,
    required int watchedSecondsDelta,
    bool manualComplete = false,
    DateTime? clientUpdatedAt,
  }) async {
    final id = clientOperationId ?? _newOperationId();
    final operation = ProgressSyncOperation(
      clientOperationId: id,
      enrollmentId: enrollmentId,
      lessonId: lessonId,
      positionSeconds: positionSeconds,
      watchedSecondsDelta: watchedSecondsDelta,
      manualComplete: manualComplete,
      clientUpdatedAt: (clientUpdatedAt ?? DateTime.now()).toUtc(),
    );
    await _enqueue(_OutboxEntry(kind: 'progress', payload: operation.toJson()));
    return id;
  }

  Future<String> queueAnswer({
    String? clientOperationId,
    required String attemptId,
    required String questionId,
    List<String> selectedOptionIds = const [],
    String? textAnswer,
    DateTime? clientUpdatedAt,
  }) async {
    final id = clientOperationId ?? _newOperationId();
    final operation = AnswerSyncOperation(
      clientOperationId: id,
      attemptId: attemptId,
      questionId: questionId,
      selectedOptionIds: selectedOptionIds,
      textAnswer: textAnswer,
      clientUpdatedAt: (clientUpdatedAt ?? DateTime.now()).toUtc(),
    );
    await _enqueue(_OutboxEntry(kind: 'answer', payload: operation.toJson()));
    return id;
  }

  Future<OfflineSyncReport> syncPending() async {
    final pending = _readOutbox();
    if (pending.isEmpty) return const OfflineSyncReport();

    final appliedIds = <String>{};
    for (final kind in const ['progress', 'answer']) {
      final entries = pending.where((entry) => entry.kind == kind).toList();
      for (
        var offset = 0;
        offset < entries.length;
        offset += _maxOperationsPerSync
      ) {
        final end = min(offset + _maxOperationsPerSync, entries.length);
        final batch = entries.sublist(offset, end);
        final SyncResultListDto result;
        if (kind == 'progress') {
          result = await _repository.syncOfflineProgress(
            batch.map((entry) => _progressFromJson(entry.payload)).toList(),
          );
        } else {
          result = await _repository.syncOfflineAnswers(
            batch.map((entry) => _answerFromJson(entry.payload)).toList(),
          );
        }
        appliedIds.addAll(
          result.items
              .where((item) => item.status == 'applied')
              .map((item) => item.clientOperationId),
        );
        await _writeOutbox(
          _readOutbox()
              .where((entry) => !appliedIds.contains(entry.clientOperationId))
              .toList(),
        );
      }
    }

    return OfflineSyncReport(
      attempted: pending.length,
      applied: appliedIds.length,
      remaining: _readOutbox().length,
    );
  }

  int get pendingOperationCount => _readOutbox().length;

  Future<int> storageUsageBytes() async {
    final root = await _offlineRoot();
    if (!await root.exists()) return 0;
    var total = 0;
    await for (final entity in root.list(recursive: true)) {
      if (entity is File) total += await entity.length();
    }
    return total;
  }

  Future<void> deleteEnrollment(String enrollmentId) async {
    final directory = await _enrollmentDirectory(enrollmentId);
    if (await directory.exists()) await directory.delete(recursive: true);
    await _preferences.remove('$_manifestPrefix$enrollmentId');
    await _preferences.remove('$_entitlementPrefix$enrollmentId');
  }

  Future<void> removeExpiredOrRevokedContent() async {
    final now = DateTime.now().toUtc();
    final keys = _preferences
        .getKeys()
        .where((key) => key.startsWith(_entitlementPrefix))
        .toList();
    for (final key in keys) {
      final raw = _preferences.getString(key);
      if (raw == null) continue;
      final json = jsonDecode(raw);
      if (json is! Map) continue;
      final value = Map<String, dynamic>.from(json);
      final status = value['status'];
      final expiresAt = DateTime.tryParse('${value['expires_at']}')?.toUtc();
      if (status != 'active' || expiresAt == null || !expiresAt.isAfter(now)) {
        await deleteEnrollment(key.substring(_entitlementPrefix.length));
      }
    }
  }

  Future<File> _downloadManifestMedia({
    required String enrollmentId,
    required OfflineManifestItemDto item,
    required OfflineManifestMediaDto media,
    CancelToken? cancelToken,
    void Function(int received)? onProgress,
  }) async {
    final directory = await _enrollmentDirectory(enrollmentId);
    await directory.create(recursive: true);
    final safeAssetId = _safeIdentifier(media.mediaAssetId);
    final target = File('${directory.path}/$safeAssetId.bin');
    final partial = File('${target.path}.part');
    final existing = await partial.exists() ? await partial.length() : 0;
    if (existing > media.sizeBytes) await partial.delete();
    final resumeAt = await partial.exists() ? await partial.length() : 0;

    final response = await _downloadDio.get<ResponseBody>(
      media.url.toString(),
      cancelToken: cancelToken,
      options: Options(
        responseType: ResponseType.stream,
        followRedirects: true,
        headers: {if (resumeAt > 0) 'Range': 'bytes=$resumeAt-'},
      ),
    );
    final body = response.data;
    if (body == null) throw const AppException('Offline download খালি।');
    final append =
        response.statusCode == HttpStatus.partialContent && resumeAt > 0;
    final sink = partial.openWrite(
      mode: append ? FileMode.append : FileMode.write,
    );
    var received = append ? resumeAt : 0;
    try {
      await for (final chunk in body.stream) {
        sink.add(chunk);
        received += chunk.length;
        onProgress?.call(received);
      }
    } finally {
      await sink.close();
    }

    if (await partial.length() != media.sizeBytes) {
      throw const AppException(
        'Offline download অসম্পূর্ণ। পরে আবার চেষ্টা করুন।',
      );
    }
    final digest = await sha256.bind(partial.openRead()).first;
    if (digest.toString().toLowerCase() != item.checksumSha256.toLowerCase()) {
      await partial.delete();
      throw const AppException('Offline file checksum মেলেনি।');
    }
    if (await target.exists()) await target.delete();
    return partial.rename(target.path);
  }

  Future<void> _saveEntitlement(OfflineEntitlementDto entitlement) =>
      _preferences.setString(
        '$_entitlementPrefix${entitlement.enrollmentId}',
        jsonEncode({
          'id': entitlement.id,
          'status': entitlement.status,
          'expires_at': entitlement.expiresAt.toIso8601String(),
          'issued_at': entitlement.issuedAt.toIso8601String(),
          if (entitlement.revokedAt != null)
            'revoked_at': entitlement.revokedAt!.toIso8601String(),
        }),
      );

  Future<void> _saveManifestMetadata(OfflineManifestDto manifest) =>
      _preferences.setString(
        '$_manifestPrefix${manifest.enrollmentId}',
        jsonEncode({
          'id': manifest.id,
          'course_id': manifest.courseId,
          'enrollment_id': manifest.enrollmentId,
          'version': manifest.version,
          'checksum_sha256': manifest.checksumSha256,
          'published_at': manifest.publishedAt.toIso8601String(),
          'items': manifest.items
              .map(
                (item) => {
                  'id': item.id,
                  'entity_type': item.entityType,
                  'entity_id': item.entityId,
                  'content_version': item.contentVersion,
                  'checksum_sha256': item.checksumSha256,
                  'size_bytes': item.sizeBytes,
                  'position': item.position,
                  'metadata': item.metadata,
                  if (item.media != null)
                    'media': {
                      'media_asset_id': item.media!.mediaAssetId,
                      'content_type': item.media!.contentType,
                      'size_bytes': item.media!.sizeBytes,
                    },
                },
              )
              .toList(),
        }),
      );

  Future<void> _enqueue(_OutboxEntry entry) async {
    final ledger = _readLedger();
    final payloadHash = sha256
        .convert(utf8.encode(_canonical(entry.payload)))
        .toString();
    final priorHash = ledger[entry.clientOperationId];
    if (priorHash != null && priorHash != payloadHash) {
      throw const AppException(
        'একই client_operation_id ভিন্ন payload-এর জন্য ব্যবহার করা যাবে না।',
      );
    }
    final outbox = _readOutbox();
    if (outbox.any(
      (item) => item.clientOperationId == entry.clientOperationId,
    )) {
      return;
    }
    outbox.add(entry);
    ledger[entry.clientOperationId] = payloadHash;
    while (ledger.length > _maxLedgerEntries) {
      ledger.remove(ledger.keys.first);
    }
    await _preferences.setString(_operationLedgerKey, jsonEncode(ledger));
    await _writeOutbox(outbox);
  }

  List<_OutboxEntry> _readOutbox() {
    final raw = _preferences.getString(_outboxKey);
    if (raw == null) return [];
    final decoded = jsonDecode(raw);
    if (decoded is! List) return [];
    return decoded
        .whereType<Map>()
        .map((item) => _OutboxEntry.fromJson(Map<String, dynamic>.from(item)))
        .toList();
  }

  Future<void> _writeOutbox(List<_OutboxEntry> entries) =>
      _preferences.setString(
        _outboxKey,
        jsonEncode(entries.map((entry) => entry.toJson()).toList()),
      );

  Map<String, String> _readLedger() {
    final raw = _preferences.getString(_operationLedgerKey);
    if (raw == null) return {};
    final decoded = jsonDecode(raw);
    if (decoded is! Map) return {};
    return decoded.map((key, value) => MapEntry('$key', '$value'));
  }

  String _newOperationId() {
    final random = List<int>.generate(16, (_) => _random.nextInt(256));
    return 'mobile-${DateTime.now().toUtc().microsecondsSinceEpoch}-'
        '${base64Url.encode(random).replaceAll('=', '')}';
  }

  Future<Directory> _offlineRoot() async {
    final provider = _offlineRootProvider;
    if (provider != null) return provider();
    return Directory(
      '${(await getApplicationSupportDirectory()).path}/offline_learning',
    );
  }

  Future<Directory> _enrollmentDirectory(String enrollmentId) async =>
      Directory(
        '${(await _offlineRoot()).path}/${_safeIdentifier(enrollmentId)}',
      );

  static String _safeIdentifier(String value) {
    if (!RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(value)) {
      throw const AppException('Unsafe offline content identifier।');
    }
    return value;
  }

  static String _canonical(JsonMap value) {
    final keys = value.keys.toList()..sort();
    return jsonEncode({for (final key in keys) key: value[key]});
  }

  static ProgressSyncOperation _progressFromJson(JsonMap json) =>
      ProgressSyncOperation(
        clientOperationId: json['client_operation_id']! as String,
        enrollmentId: json['enrollment_id']! as String,
        lessonId: json['lesson_id']! as String,
        positionSeconds: json['position_seconds']! as int,
        watchedSecondsDelta: json['watched_seconds_delta']! as int,
        manualComplete: json['manual_complete'] as bool? ?? false,
        clientUpdatedAt: DateTime.parse(json['client_updated_at']! as String),
      );

  static AnswerSyncOperation _answerFromJson(JsonMap json) =>
      AnswerSyncOperation(
        clientOperationId: json['client_operation_id']! as String,
        attemptId: json['attempt_id']! as String,
        questionId: json['question_id']! as String,
        selectedOptionIds:
            (json['selected_option_ids'] as List?)?.cast<String>() ?? const [],
        textAnswer: json['text_answer'] as String?,
        clientUpdatedAt: DateTime.parse(json['client_updated_at']! as String),
      );
}

class OfflineDownloadResult {
  const OfflineDownloadResult({
    required this.enrollmentId,
    required this.manifestVersion,
    required this.downloadedFiles,
    required this.downloadedBytes,
  });

  final String enrollmentId;
  final int manifestVersion;
  final int downloadedFiles;
  final int downloadedBytes;
}

class OfflineSyncReport {
  const OfflineSyncReport({
    this.attempted = 0,
    this.applied = 0,
    this.remaining = 0,
  });

  final int attempted;
  final int applied;
  final int remaining;
}

class _OutboxEntry {
  const _OutboxEntry({required this.kind, required this.payload});

  factory _OutboxEntry.fromJson(JsonMap json) => _OutboxEntry(
    kind: json['kind']! as String,
    payload: Map<String, dynamic>.from(json['payload']! as Map),
  );

  final String kind;
  final JsonMap payload;
  String get clientOperationId => payload['client_operation_id']! as String;
  JsonMap toJson() => {'kind': kind, 'payload': payload};
}
