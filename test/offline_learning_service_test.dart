import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_gateway.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'offline outbox survives restart and removes acknowledged replay',
    () async {
      SharedPreferences.setMockInitialValues({});
      final preferences = await SharedPreferences.getInstance();
      final gateway = _FakeOfflineGateway();
      final first = OfflineLearningService(
        repository: gateway,
        preferences: preferences,
      );
      final operationId = await first.queueProgress(
        enrollmentId: 'enrollment-1',
        lessonId: 'lesson-1',
        positionSeconds: 30,
        watchedSecondsDelta: 30,
        clientUpdatedAt: DateTime.parse('2026-08-13T12:00:00Z'),
      );

      final restored = OfflineLearningService(
        repository: gateway,
        preferences: preferences,
      );
      expect(restored.pendingOperationCount, 1);
      final report = await restored.syncPending();

      expect(
        gateway.progressBatches.single.single.clientOperationId,
        operationId,
      );
      expect(
        gateway.progressBatches.single.single.clientUpdatedAt.isUtc,
        isTrue,
      );
      expect(report.applied, 1);
      expect(restored.pendingOperationCount, 0);
    },
  );

  test('operation id cannot be reused with a different payload', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final gateway = _FakeOfflineGateway();
    final service = OfflineLearningService(
      repository: gateway,
      preferences: preferences,
    );
    await service.queueProgress(
      clientOperationId: 'stable-operation',
      enrollmentId: 'enrollment-1',
      lessonId: 'lesson-1',
      positionSeconds: 30,
      watchedSecondsDelta: 30,
    );
    await service.syncPending();

    await expectLater(
      service.queueProgress(
        clientOperationId: 'stable-operation',
        enrollmentId: 'enrollment-1',
        lessonId: 'lesson-1',
        positionSeconds: 60,
        watchedSecondsDelta: 30,
      ),
      throwsA(isA<AppException>()),
    );
  });

  test('sync sends at most 100 operations per request', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final gateway = _FakeOfflineGateway();
    final service = OfflineLearningService(
      repository: gateway,
      preferences: preferences,
    );
    for (var index = 0; index < 101; index++) {
      await service.queueAnswer(
        attemptId: 'attempt-1',
        questionId: 'question-$index',
        textAnswer: '$index',
      );
    }

    await service.syncPending();
    expect(gateway.answerBatches.map((batch) => batch.length), [100, 1]);
  });

  test('offline outbox is isolated by user organization and role', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final service = OfflineLearningService(
      repository: _FakeOfflineGateway(),
      preferences: preferences,
    );

    await service.activateNamespace(
      userId: 'user-0001',
      organizationId: 'organization-0001',
      role: 'teacher',
    );
    await service.queueProgress(
      enrollmentId: 'enrollment-1',
      lessonId: 'lesson-1',
      positionSeconds: 30,
      watchedSecondsDelta: 30,
    );
    expect(service.pendingOperationCount, 1);

    await service.activateNamespace(
      userId: 'user-0001',
      organizationId: 'organization-0002',
      role: 'guardian',
    );
    expect(service.pendingOperationCount, 0);

    await service.activateNamespace(
      userId: 'user-0001',
      organizationId: 'organization-0001',
      role: 'teacher',
    );
    expect(service.pendingOperationCount, 1);
  });

  test('checksum mismatch deletes the partial offline file', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final root = await Directory.systemTemp.createTemp('lms-offline-test-');
    addTearDown(() async {
      if (await root.exists()) await root.delete(recursive: true);
    });
    final gateway = _FakeOfflineGateway(withManifest: true);
    final dio = Dio()..httpClientAdapter = _BytesAdapter([1, 2, 3]);
    final service = OfflineLearningService(
      repository: gateway,
      preferences: preferences,
      downloadDio: dio,
      offlineRoot: () async => root,
    );

    await expectLater(
      service.downloadEnrollment('enrollment-1'),
      throwsA(isA<AppException>()),
    );
    expect(root.listSync(recursive: true).whereType<File>(), isEmpty);
  });
}

class _FakeOfflineGateway implements OfflineLearningGateway {
  _FakeOfflineGateway({this.withManifest = false});

  final bool withManifest;
  final List<List<ProgressSyncOperation>> progressBatches = [];
  final List<List<AnswerSyncOperation>> answerBatches = [];

  @override
  Future<OfflineEntitlementDto> issueOfflineEntitlement(
    String enrollmentId,
  ) async => OfflineEntitlementDto(
    id: 'entitlement-1',
    enrollmentId: enrollmentId,
    expiresAt: DateTime.now().toUtc().add(const Duration(hours: 1)),
    status: 'active',
    issuedAt: DateTime.now().toUtc(),
  );

  @override
  Future<OfflineManifestDto> getOfflineManifest(String enrollmentId) async =>
      OfflineManifestDto(
        id: 'manifest-1',
        courseId: 'course-1',
        enrollmentId: enrollmentId,
        version: 1,
        checksumSha256: List.filled(64, '0').join(),
        publishedAt: DateTime.now().toUtc(),
        items: withManifest
            ? [
                OfflineManifestItemDto(
                  id: 'manifest-item-1',
                  entityType: 'lesson',
                  entityId: 'lesson-1',
                  contentVersion: 1,
                  checksumSha256: List.filled(64, '0').join(),
                  sizeBytes: 3,
                  position: 1,
                  metadata: const {},
                  media: OfflineManifestMediaDto(
                    mediaAssetId: 'media-asset-1',
                    contentType: 'video/mp4',
                    sizeBytes: 3,
                    url: Uri.parse('https://storage.example/file'),
                  ),
                ),
              ]
            : const [],
      );

  @override
  Future<OfflineChangeListDto> listOfflineChanges({String? cursor}) async =>
      const OfflineChangeListDto(items: []);

  @override
  Future<SyncResultListDto> syncOfflineProgress(
    List<ProgressSyncOperation> operations,
  ) async {
    progressBatches.add(operations);
    return SyncResultListDto(
      items: operations
          .map(
            (operation) => SyncResultDto(
              clientOperationId: operation.clientOperationId,
              resourceId: 'progress-1',
              status: 'applied',
              replayed: true,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<SyncResultListDto> syncOfflineAnswers(
    List<AnswerSyncOperation> operations,
  ) async {
    answerBatches.add(operations);
    return SyncResultListDto(
      items: operations
          .map(
            (operation) => SyncResultDto(
              clientOperationId: operation.clientOperationId,
              resourceId: 'answer-1',
              status: 'applied',
              replayed: false,
            ),
          )
          .toList(),
    );
  }
}

class _BytesAdapter implements HttpClientAdapter {
  _BytesAdapter(this.bytes);
  final List<int> bytes;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async => ResponseBody.fromBytes(bytes, HttpStatus.ok);

  @override
  void close({bool force = false}) {}
}
