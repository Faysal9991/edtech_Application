/// Handwritten DTOs for the mobile-only portion of the updated OpenAPI file.
///
/// The existing project uses generated Freezed DTOs for its original API
/// surface. These models intentionally stay small and explicit: the updated
/// contract contains several generic responses, while these endpoints have
/// concrete schemas that should not cross the data-source boundary as dynamic
/// maps.
library;

typedef JsonMap = Map<String, dynamic>;

String _string(JsonMap json, String key) {
  final value = json[key];
  if (value is String) return value;
  throw FormatException('Expected string field "$key".');
}

String? _nullableString(JsonMap json, String key) {
  final value = json[key];
  if (value == null) return null;
  if (value is String) return value;
  throw FormatException('Expected nullable string field "$key".');
}

int _integer(JsonMap json, String key) {
  final value = json[key];
  if (value is int) return value;
  throw FormatException('Expected integer field "$key".');
}

int? _nullableInteger(JsonMap json, String key) {
  final value = json[key];
  if (value == null) return null;
  if (value is int) return value;
  throw FormatException('Expected nullable integer field "$key".');
}

bool _boolean(JsonMap json, String key) {
  final value = json[key];
  if (value is bool) return value;
  throw FormatException('Expected boolean field "$key".');
}

double _number(JsonMap json, String key) {
  final value = json[key];
  if (value is num) return value.toDouble();
  throw FormatException('Expected numeric field "$key".');
}

DateTime _timestamp(JsonMap json, String key) =>
    DateTime.parse(_string(json, key)).toUtc();

DateTime? _nullableTimestamp(JsonMap json, String key) {
  final value = _nullableString(json, key);
  return value == null ? null : DateTime.parse(value).toUtc();
}

JsonMap _map(JsonMap json, String key) {
  final value = json[key];
  if (value is Map) return Map<String, dynamic>.from(value);
  throw FormatException('Expected object field "$key".');
}

List<JsonMap> _maps(JsonMap json, String key) {
  final value = json[key];
  if (value is! List) throw FormatException('Expected list field "$key".');
  return value
      .map((item) {
        if (item is! Map) throw FormatException('Expected object in "$key".');
        return Map<String, dynamic>.from(item);
      })
      .toList(growable: false);
}

String _utc(DateTime value) => value.toUtc().toIso8601String();

/// Exact four-decimal fixed-point value used by mastery and goal APIs.
class FixedDecimal {
  const FixedDecimal._(this.unscaled);

  factory FixedDecimal.parse(Object value) {
    final source = value.toString();
    final match = RegExp(r'^(-?)(\d+)(?:\.(\d{0,4}))?$').firstMatch(source);
    if (match == null) throw FormatException('Invalid fixed-point value.');
    final fraction = (match.group(3) ?? '').padRight(4, '0');
    final magnitude = BigInt.parse('${match.group(2)}$fraction');
    return FixedDecimal._(match.group(1) == '-' ? -magnitude : magnitude);
  }

  final BigInt unscaled;

  String get canonical {
    final negative = unscaled.isNegative;
    final digits = unscaled.abs().toString().padLeft(5, '0');
    final whole = digits.substring(0, digits.length - 4);
    final fraction = digits.substring(digits.length - 4);
    return '${negative ? '-' : ''}$whole.$fraction';
  }

  /// JSON only supports binary floating-point numbers. Internal calculations
  /// remain exact; conversion happens only at the HTTP serialization boundary.
  num toJsonNumber() => num.parse(canonical);

  @override
  String toString() => canonical;
}

class StudentSyllabusProgressDto {
  const StudentSyllabusProgressDto({
    required this.assignmentId,
    required this.batchId,
    required this.syllabusVersionId,
    required this.title,
    required this.code,
    required this.completionPercentage,
    required this.totalUnits,
    required this.completedUnits,
    required this.delayedUnits,
  });

  factory StudentSyllabusProgressDto.fromJson(JsonMap json) =>
      StudentSyllabusProgressDto(
        assignmentId: _string(json, 'assignment_id'),
        batchId: _string(json, 'batch_id'),
        syllabusVersionId: _string(json, 'syllabus_version_id'),
        title: _string(json, 'title'),
        code: _string(json, 'code'),
        completionPercentage: _number(json, 'completion_percentage'),
        totalUnits: _integer(json, 'total_units'),
        completedUnits: _integer(json, 'completed_units'),
        delayedUnits: _integer(json, 'delayed_units'),
      );

  final String assignmentId;
  final String batchId;
  final String syllabusVersionId;
  final String title;
  final String code;
  final double completionPercentage;
  final int totalUnits;
  final int completedUnits;
  final int delayedUnits;
}

class StudentSyllabusProgressListDto {
  const StudentSyllabusProgressListDto({required this.items});

  factory StudentSyllabusProgressListDto.fromJson(JsonMap json) =>
      StudentSyllabusProgressListDto(
        items: _maps(
          json,
          'items',
        ).map(StudentSyllabusProgressDto.fromJson).toList(growable: false),
      );

  final List<StudentSyllabusProgressDto> items;
}

class AttendanceCheckInRequest {
  const AttendanceCheckInRequest({required this.code, this.riskEvidence});

  final String code;
  final JsonMap? riskEvidence;

  JsonMap toJson() => {
    'code': code,
    if (riskEvidence != null) 'risk_evidence': riskEvidence,
  };
}

class PhysicalAttendanceRecordDto {
  const PhysicalAttendanceRecordDto({
    required this.id,
    required this.sessionId,
    required this.status,
    required this.source,
    required this.markedAt,
    required this.version,
    required this.riskEvidence,
    this.reason,
  });

  factory PhysicalAttendanceRecordDto.fromJson(JsonMap json) =>
      PhysicalAttendanceRecordDto(
        id: _string(json, 'id'),
        sessionId: _string(json, 'attendance_session_id'),
        status: _string(json, 'status'),
        source: _string(json, 'source'),
        markedAt: _timestamp(json, 'marked_at'),
        version: _integer(json, 'version'),
        riskEvidence: _map(json, 'risk_evidence'),
        reason: _nullableString(json, 'reason'),
      );

  final String id;
  final String sessionId;
  final String status;
  final String source;
  final DateTime markedAt;
  final int version;
  final JsonMap riskEvidence;
  final String? reason;
}

class PhysicalAttendanceListDto {
  const PhysicalAttendanceListDto({required this.items, this.nextCursor});

  factory PhysicalAttendanceListDto.fromJson(JsonMap json) =>
      PhysicalAttendanceListDto(
        items: _maps(
          json,
          'items',
        ).map(PhysicalAttendanceRecordDto.fromJson).toList(growable: false),
        nextCursor: _nullableString(json, 'next_cursor'),
      );

  final List<PhysicalAttendanceRecordDto> items;
  final String? nextCursor;
}

class AttendanceCorrectionRequest {
  const AttendanceCorrectionRequest({
    required this.requestedStatus,
    required this.reason,
  });

  final String requestedStatus;
  final String reason;

  JsonMap toJson() => {'requested_status': requestedStatus, 'reason': reason};
}

class AttendanceCorrectionDto {
  const AttendanceCorrectionDto({
    required this.id,
    required this.attendanceRecordId,
    required this.requestedStatus,
    required this.reason,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AttendanceCorrectionDto.fromJson(JsonMap json) =>
      AttendanceCorrectionDto(
        id: _string(json, 'id'),
        attendanceRecordId: _string(json, 'attendance_record_id'),
        requestedStatus: _string(json, 'requested_status'),
        reason: _string(json, 'reason'),
        status: _string(json, 'status'),
        createdAt: _timestamp(json, 'created_at'),
        updatedAt: _timestamp(json, 'updated_at'),
      );

  final String id;
  final String attendanceRecordId;
  final String requestedStatus;
  final String reason;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
}

class TopicMasteryDto {
  const TopicMasteryDto({
    required this.topicId,
    required this.score,
    required this.confidence,
    required this.evidenceCount,
    required this.factors,
    required this.algorithmVersion,
    required this.calculatedAt,
    this.topicName,
    this.chapterName,
    this.subjectName,
  });

  factory TopicMasteryDto.fromJson(JsonMap json) => TopicMasteryDto(
    topicId: _string(json, 'topic_id'),
    score: FixedDecimal.parse(json['score']!),
    confidence: FixedDecimal.parse(json['confidence']!),
    evidenceCount: _integer(json, 'evidence_count'),
    factors: List<JsonMap>.unmodifiable(_maps(json, 'factors')),
    algorithmVersion: _string(json, 'algorithm_version'),
    calculatedAt: _timestamp(json, 'calculated_at'),
    topicName: _nullableString(json, 'topic_name'),
    chapterName: _nullableString(json, 'chapter_name'),
    subjectName: _nullableString(json, 'subject_name'),
  );

  final String topicId;
  final FixedDecimal score;
  final FixedDecimal confidence;
  final int evidenceCount;
  final List<JsonMap> factors;
  final String algorithmVersion;
  final DateTime calculatedAt;
  final String? topicName;
  final String? chapterName;
  final String? subjectName;
}

class MasterySummaryDto {
  const MasterySummaryDto({required this.items, this.risk, this.nextCursor});

  factory MasterySummaryDto.fromJson(JsonMap json) => MasterySummaryDto(
    items: _maps(
      json,
      'items',
    ).map(TopicMasteryDto.fromJson).toList(growable: false),
    risk: json['risk'] is Map ? _map(json, 'risk') : null,
    nextCursor: _nullableString(json, 'next_cursor'),
  );

  final List<TopicMasteryDto> items;
  final JsonMap? risk;
  final String? nextCursor;
}

class DoubtWriteRequest {
  const DoubtWriteRequest({
    required this.courseId,
    required this.title,
    required this.body,
    this.subjectId,
    this.chapterId,
    this.topicId,
    this.attachmentAssetIds = const [],
  });

  final String courseId;
  final String title;
  final String body;
  final String? subjectId;
  final String? chapterId;
  final String? topicId;
  final List<String> attachmentAssetIds;

  JsonMap toJson() => {
    'course_id': courseId,
    'title': title,
    'body': body,
    if (subjectId != null) 'subject_id': subjectId,
    if (chapterId != null) 'chapter_id': chapterId,
    if (topicId != null) 'topic_id': topicId,
    if (attachmentAssetIds.isNotEmpty)
      'attachment_asset_ids': attachmentAssetIds,
  };
}

class DoubtMessageWriteRequest {
  const DoubtMessageWriteRequest({
    required this.body,
    this.attachmentAssetIds = const [],
  });

  final String body;
  final List<String> attachmentAssetIds;

  JsonMap toJson() => {
    'body': body,
    if (attachmentAssetIds.isNotEmpty)
      'attachment_asset_ids': attachmentAssetIds,
  };
}

class DoubtThreadDto {
  const DoubtThreadDto({
    required this.id,
    required this.courseId,
    required this.title,
    required this.status,
    required this.priority,
    required this.lastMessageAt,
    required this.version,
  });

  factory DoubtThreadDto.fromJson(JsonMap json) => DoubtThreadDto(
    id: _string(json, 'id'),
    courseId: _string(json, 'course_id'),
    title: _string(json, 'title'),
    status: _string(json, 'status'),
    priority: _string(json, 'priority'),
    lastMessageAt: _timestamp(json, 'last_message_at'),
    version: _integer(json, 'version'),
  );

  final String id;
  final String courseId;
  final String title;
  final String status;
  final String priority;
  final DateTime lastMessageAt;
  final int version;
}

class DoubtMessageDto {
  const DoubtMessageDto({
    required this.id,
    required this.threadId,
    required this.authorRole,
    required this.body,
    required this.moderationStatus,
    required this.createdAt,
  });

  factory DoubtMessageDto.fromJson(JsonMap json) => DoubtMessageDto(
    id: _string(json, 'id'),
    threadId: _string(json, 'thread_id'),
    authorRole: _string(json, 'author_role'),
    body: _string(json, 'body'),
    moderationStatus: _string(json, 'moderation_status'),
    createdAt: _timestamp(json, 'created_at'),
  );

  final String id;
  final String threadId;
  final String authorRole;
  final String body;
  final String moderationStatus;
  final DateTime createdAt;
}

class DoubtThreadListDto {
  const DoubtThreadListDto({required this.items, this.nextCursor});

  factory DoubtThreadListDto.fromJson(JsonMap json) => DoubtThreadListDto(
    items: _maps(
      json,
      'items',
    ).map(DoubtThreadDto.fromJson).toList(growable: false),
    nextCursor: _nullableString(json, 'next_cursor'),
  );

  final List<DoubtThreadDto> items;
  final String? nextCursor;
}

class DoubtThreadDetailDto {
  const DoubtThreadDetailDto({required this.thread, required this.messages});

  factory DoubtThreadDetailDto.fromJson(JsonMap json) => DoubtThreadDetailDto(
    thread: DoubtThreadDto.fromJson(_map(json, 'thread')),
    messages: _maps(
      json,
      'messages',
    ).map(DoubtMessageDto.fromJson).toList(growable: false),
  );

  final DoubtThreadDto thread;
  final List<DoubtMessageDto> messages;
}

class StudyPlanDto {
  const StudyPlanDto({
    required this.id,
    required this.title,
    required this.description,
    required this.startsOn,
    required this.endsOn,
    required this.timezone,
    required this.status,
    required this.source,
    required this.version,
    required this.explanation,
  });

  factory StudyPlanDto.fromJson(JsonMap json) => StudyPlanDto(
    id: _string(json, 'id'),
    title: _string(json, 'title'),
    description: _string(json, 'description'),
    startsOn: DateTime.parse(_string(json, 'starts_on')),
    endsOn: DateTime.parse(_string(json, 'ends_on')),
    timezone: _string(json, 'timezone'),
    status: _string(json, 'status'),
    source: _string(json, 'source'),
    version: _integer(json, 'version'),
    explanation: _map(json, 'explanation'),
  );

  final String id;
  final String title;
  final String description;
  final DateTime startsOn;
  final DateTime endsOn;
  final String timezone;
  final String status;
  final String source;
  final int version;
  final JsonMap explanation;
}

class StudyPlanListDto {
  const StudyPlanListDto({required this.items, this.nextCursor});

  factory StudyPlanListDto.fromJson(JsonMap json) => StudyPlanListDto(
    items: _maps(
      json,
      'items',
    ).map(StudyPlanDto.fromJson).toList(growable: false),
    nextCursor: _nullableString(json, 'next_cursor'),
  );

  final List<StudyPlanDto> items;
  final String? nextCursor;
}

class StudyTaskDto {
  const StudyTaskDto({
    required this.id,
    required this.studyPlanId,
    required this.taskType,
    required this.title,
    required this.dueAt,
    required this.status,
    required this.version,
    this.estimatedMinutes,
    this.completedAt,
  });

  factory StudyTaskDto.fromJson(JsonMap json) => StudyTaskDto(
    id: _string(json, 'id'),
    studyPlanId: _string(json, 'study_plan_id'),
    taskType: _string(json, 'task_type'),
    title: _string(json, 'title'),
    dueAt: _timestamp(json, 'due_at'),
    status: _string(json, 'status'),
    version: _integer(json, 'version'),
    estimatedMinutes: _nullableInteger(json, 'estimated_minutes'),
    completedAt: _nullableTimestamp(json, 'completed_at'),
  );

  final String id;
  final String studyPlanId;
  final String taskType;
  final String title;
  final DateTime dueAt;
  final String status;
  final int version;
  final int? estimatedMinutes;
  final DateTime? completedAt;
}

class StudyTaskListDto {
  const StudyTaskListDto({required this.items, this.nextCursor});

  factory StudyTaskListDto.fromJson(JsonMap json) => StudyTaskListDto(
    items: _maps(
      json,
      'items',
    ).map(StudyTaskDto.fromJson).toList(growable: false),
    nextCursor: _nullableString(json, 'next_cursor'),
  );

  final List<StudyTaskDto> items;
  final String? nextCursor;
}

class VersionWriteRequest {
  const VersionWriteRequest({required this.version});
  final int version;
  JsonMap toJson() => {'version': version};
}

class StudyTaskRescheduleRequest {
  const StudyTaskRescheduleRequest({
    required this.version,
    required this.dueAt,
  });
  final int version;
  final DateTime dueAt;
  JsonMap toJson() => {'version': version, 'due_at': _utc(dueAt)};
}

class StudentGoalWriteRequest {
  const StudentGoalWriteRequest({
    required this.title,
    required this.targetType,
    required this.targetValue,
    required this.startsOn,
    required this.endsOn,
  });

  final String title;
  final String targetType;
  final FixedDecimal targetValue;
  final DateTime startsOn;
  final DateTime endsOn;

  JsonMap toJson() => {
    'title': title,
    'target_type': targetType,
    'target_value': targetValue.toJsonNumber(),
    'starts_on': startsOn.toIso8601String().split('T').first,
    'ends_on': endsOn.toIso8601String().split('T').first,
  };
}

class StudentGoalDto {
  const StudentGoalDto({
    required this.id,
    required this.title,
    required this.targetType,
    required this.targetValue,
    required this.startsOn,
    required this.endsOn,
    required this.status,
  });

  factory StudentGoalDto.fromJson(JsonMap json) => StudentGoalDto(
    id: _string(json, 'id'),
    title: _string(json, 'title'),
    targetType: _string(json, 'target_type'),
    targetValue: FixedDecimal.parse(json['target_value']!),
    startsOn: DateTime.parse(_string(json, 'starts_on')),
    endsOn: DateTime.parse(_string(json, 'ends_on')),
    status: _string(json, 'status'),
  );

  final String id;
  final String title;
  final String targetType;
  final FixedDecimal targetValue;
  final DateTime startsOn;
  final DateTime endsOn;
  final String status;
}

class StudentGoalListDto {
  const StudentGoalListDto({
    required this.items,
    required this.currentStreakDays,
  });

  factory StudentGoalListDto.fromJson(JsonMap json) => StudentGoalListDto(
    items: _maps(
      json,
      'items',
    ).map(StudentGoalDto.fromJson).toList(growable: false),
    currentStreakDays: _integer(json, 'current_streak_days'),
  );

  final List<StudentGoalDto> items;
  final int currentStreakDays;
}

class OfflineEntitlementWriteRequest {
  const OfflineEntitlementWriteRequest({required this.enrollmentId});
  final String enrollmentId;
  JsonMap toJson() => {'enrollment_id': enrollmentId};
}

class OfflineEntitlementDto {
  const OfflineEntitlementDto({
    required this.id,
    required this.enrollmentId,
    required this.expiresAt,
    required this.status,
    required this.issuedAt,
    this.revokedAt,
  });

  factory OfflineEntitlementDto.fromJson(JsonMap json) => OfflineEntitlementDto(
    id: _string(json, 'id'),
    enrollmentId: _string(json, 'enrollment_id'),
    expiresAt: _timestamp(json, 'expires_at'),
    status: _string(json, 'status'),
    issuedAt: _timestamp(json, 'issued_at'),
    revokedAt: _nullableTimestamp(json, 'revoked_at'),
  );

  final String id;
  final String enrollmentId;
  final DateTime expiresAt;
  final String status;
  final DateTime issuedAt;
  final DateTime? revokedAt;

  bool get isUsable =>
      status == 'active' && expiresAt.isAfter(DateTime.now().toUtc());
}

class OfflineManifestMediaDto {
  const OfflineManifestMediaDto({
    required this.mediaAssetId,
    required this.contentType,
    required this.sizeBytes,
    required this.url,
  });

  factory OfflineManifestMediaDto.fromJson(JsonMap json) =>
      OfflineManifestMediaDto(
        mediaAssetId: _string(json, 'media_asset_id'),
        contentType: _string(json, 'content_type'),
        sizeBytes: _integer(json, 'size_bytes'),
        url: Uri.parse(_string(json, 'url')),
      );

  final String mediaAssetId;
  final String contentType;
  final int sizeBytes;
  final Uri url;
}

class OfflineManifestItemDto {
  const OfflineManifestItemDto({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.contentVersion,
    required this.checksumSha256,
    required this.sizeBytes,
    required this.position,
    required this.metadata,
    this.media,
  });

  factory OfflineManifestItemDto.fromJson(JsonMap json) =>
      OfflineManifestItemDto(
        id: _string(json, 'id'),
        entityType: _string(json, 'entity_type'),
        entityId: _string(json, 'entity_id'),
        contentVersion: _integer(json, 'content_version'),
        checksumSha256: _string(json, 'checksum_sha256'),
        sizeBytes: _integer(json, 'size_bytes'),
        position: _integer(json, 'position'),
        metadata: _map(json, 'metadata'),
        media: json['media'] is Map
            ? OfflineManifestMediaDto.fromJson(_map(json, 'media'))
            : null,
      );

  final String id;
  final String entityType;
  final String entityId;
  final int contentVersion;
  final String checksumSha256;
  final int sizeBytes;
  final int position;
  final JsonMap metadata;
  final OfflineManifestMediaDto? media;
}

class OfflineManifestDto {
  const OfflineManifestDto({
    required this.id,
    required this.courseId,
    required this.enrollmentId,
    required this.version,
    required this.checksumSha256,
    required this.publishedAt,
    required this.items,
  });

  factory OfflineManifestDto.fromJson(JsonMap json) => OfflineManifestDto(
    id: _string(json, 'id'),
    courseId: _string(json, 'course_id'),
    enrollmentId: _string(json, 'enrollment_id'),
    version: _integer(json, 'version'),
    checksumSha256: _string(json, 'checksum_sha256'),
    publishedAt: _timestamp(json, 'published_at'),
    items: _maps(
      json,
      'items',
    ).map(OfflineManifestItemDto.fromJson).toList(growable: false),
  );

  final String id;
  final String courseId;
  final String enrollmentId;
  final int version;
  final String checksumSha256;
  final DateTime publishedAt;
  final List<OfflineManifestItemDto> items;
}

class ProgressSyncOperation {
  const ProgressSyncOperation({
    required this.clientOperationId,
    required this.enrollmentId,
    required this.lessonId,
    required this.positionSeconds,
    required this.watchedSecondsDelta,
    required this.clientUpdatedAt,
    this.manualComplete = false,
  });

  final String clientOperationId;
  final String enrollmentId;
  final String lessonId;
  final int positionSeconds;
  final int watchedSecondsDelta;
  final DateTime clientUpdatedAt;
  final bool manualComplete;

  JsonMap toJson() => {
    'client_operation_id': clientOperationId,
    'enrollment_id': enrollmentId,
    'lesson_id': lessonId,
    'position_seconds': positionSeconds,
    'watched_seconds_delta': watchedSecondsDelta,
    'manual_complete': manualComplete,
    'client_updated_at': _utc(clientUpdatedAt),
  };
}

class AnswerSyncOperation {
  const AnswerSyncOperation({
    required this.clientOperationId,
    required this.attemptId,
    required this.questionId,
    required this.clientUpdatedAt,
    this.selectedOptionIds = const [],
    this.textAnswer,
  });

  final String clientOperationId;
  final String attemptId;
  final String questionId;
  final DateTime clientUpdatedAt;
  final List<String> selectedOptionIds;
  final String? textAnswer;

  JsonMap toJson() => {
    'client_operation_id': clientOperationId,
    'attempt_id': attemptId,
    'question_id': questionId,
    if (selectedOptionIds.isNotEmpty) 'selected_option_ids': selectedOptionIds,
    if (textAnswer != null) 'text_answer': textAnswer,
    'client_updated_at': _utc(clientUpdatedAt),
  };
}

class ProgressSyncWriteRequest {
  const ProgressSyncWriteRequest({required this.operations});
  final List<ProgressSyncOperation> operations;
  JsonMap toJson() => {
    'operations': operations.map((item) => item.toJson()).toList(),
  };
}

class AnswerSyncWriteRequest {
  const AnswerSyncWriteRequest({required this.operations});
  final List<AnswerSyncOperation> operations;
  JsonMap toJson() => {
    'operations': operations.map((item) => item.toJson()).toList(),
  };
}

class SyncResultDto {
  const SyncResultDto({
    required this.clientOperationId,
    required this.resourceId,
    required this.status,
    required this.replayed,
  });

  factory SyncResultDto.fromJson(JsonMap json) => SyncResultDto(
    clientOperationId: _string(json, 'client_operation_id'),
    resourceId: _string(json, 'resource_id'),
    status: _string(json, 'status'),
    replayed: _boolean(json, 'replayed'),
  );

  final String clientOperationId;
  final String resourceId;
  final String status;
  final bool replayed;
}

class SyncResultListDto {
  const SyncResultListDto({required this.items});
  factory SyncResultListDto.fromJson(JsonMap json) => SyncResultListDto(
    items: _maps(
      json,
      'items',
    ).map(SyncResultDto.fromJson).toList(growable: false),
  );
  final List<SyncResultDto> items;
}

class OfflineChangeListDto {
  const OfflineChangeListDto({required this.items, this.nextCursor});
  factory OfflineChangeListDto.fromJson(JsonMap json) => OfflineChangeListDto(
    items: List<JsonMap>.unmodifiable(_maps(json, 'items')),
    nextCursor: _nullableString(json, 'next_cursor'),
  );
  final List<JsonMap> items;
  final String? nextCursor;
}

class MediaRenditionDto {
  const MediaRenditionDto({
    required this.id,
    required this.sourceAssetId,
    required this.profile,
    required this.status,
    required this.attempts,
    this.contentType,
    this.byteSize,
    this.checksumSha256,
    this.accessUrl,
  });

  factory MediaRenditionDto.fromJson(JsonMap json) => MediaRenditionDto(
    id: _string(json, 'id'),
    sourceAssetId: _string(json, 'source_asset_id'),
    profile: _string(json, 'profile'),
    status: _string(json, 'status'),
    attempts: _integer(json, 'attempts'),
    contentType: _nullableString(json, 'content_type'),
    byteSize: _nullableInteger(json, 'byte_size'),
    checksumSha256: _nullableString(json, 'checksum_sha256'),
    accessUrl: _nullableString(json, 'access_url'),
  );

  final String id;
  final String sourceAssetId;
  final String profile;
  final String status;
  final int attempts;
  final String? contentType;
  final int? byteSize;
  final String? checksumSha256;
  final String? accessUrl;
}

class MediaRenditionListDto {
  const MediaRenditionListDto({required this.items});
  factory MediaRenditionListDto.fromJson(JsonMap json) => MediaRenditionListDto(
    items: _maps(
      json,
      'items',
    ).map(MediaRenditionDto.fromJson).toList(growable: false),
  );
  final List<MediaRenditionDto> items;
}

class SmsContactWriteRequest {
  const SmsContactWriteRequest({required this.phone});
  final String phone;
  JsonMap toJson() => {'phone': phone};
}

class SmsContactVerifyRequest {
  const SmsContactVerifyRequest({required this.token});
  final String token;
  JsonMap toJson() => {'token': token};
}

class SmsContactDto {
  const SmsContactDto({
    required this.id,
    required this.lastFour,
    required this.countryCode,
    required this.status,
    this.isPrimary = false,
    this.verifiedAt,
  });

  factory SmsContactDto.fromJson(JsonMap json) => SmsContactDto(
    id: _string(json, 'id'),
    lastFour: _string(json, 'last_four'),
    countryCode: _string(json, 'country_code'),
    status: _string(json, 'status'),
    isPrimary: json['is_primary'] is bool ? json['is_primary'] as bool : false,
    verifiedAt: _nullableTimestamp(json, 'verified_at'),
  );

  final String id;
  final String lastFour;
  final String countryCode;
  final String status;
  final bool isPrimary;
  final DateTime? verifiedAt;
}

class SmsContactListDto {
  const SmsContactListDto({required this.items});
  factory SmsContactListDto.fromJson(JsonMap json) => SmsContactListDto(
    items: _maps(
      json,
      'items',
    ).map(SmsContactDto.fromJson).toList(growable: false),
  );
  final List<SmsContactDto> items;
}

class SmsContactVerificationStartedDto {
  const SmsContactVerificationStartedDto({
    required this.id,
    required this.lastFour,
    required this.countryCode,
    required this.status,
    required this.expiresAt,
  });

  factory SmsContactVerificationStartedDto.fromJson(JsonMap json) =>
      SmsContactVerificationStartedDto(
        id: _string(json, 'id'),
        lastFour: _string(json, 'last_four'),
        countryCode: _string(json, 'country_code'),
        status: _string(json, 'status'),
        expiresAt: _timestamp(json, 'expires_at'),
      );

  final String id;
  final String lastFour;
  final String countryCode;
  final String status;
  final DateTime expiresAt;
}

class RecheckRequestWriteRequest {
  const RecheckRequestWriteRequest({required this.reason});
  final String reason;
  JsonMap toJson() => {'reason': reason};
}

class AdmitCardDto {
  const AdmitCardDto({
    required this.id,
    required this.quizId,
    required this.version,
    required this.status,
    required this.examTitle,
    required this.seatLabel,
    required this.roomName,
    required this.venueName,
    this.startsAt,
    this.endsAt,
    this.expiresAt,
  });

  factory AdmitCardDto.fromJson(JsonMap json) => AdmitCardDto(
    id: _string(json, 'id'),
    quizId: _string(json, 'quiz_id'),
    version: _integer(json, 'version'),
    status: _string(json, 'status'),
    examTitle: _string(json, 'exam_title'),
    seatLabel: _string(json, 'seat_label'),
    roomName: _string(json, 'room_name'),
    venueName: _string(json, 'venue_name'),
    startsAt: _nullableTimestamp(json, 'starts_at'),
    endsAt: _nullableTimestamp(json, 'ends_at'),
    expiresAt: _nullableTimestamp(json, 'expires_at'),
  );

  final String id;
  final String quizId;
  final int version;
  final String status;
  final String examTitle;
  final String seatLabel;
  final String roomName;
  final String venueName;
  final DateTime? startsAt;
  final DateTime? endsAt;
  final DateTime? expiresAt;
}

class AdmitCardListDto {
  const AdmitCardListDto({required this.items});
  factory AdmitCardListDto.fromJson(JsonMap json) => AdmitCardListDto(
    items: _maps(
      json,
      'items',
    ).map(AdmitCardDto.fromJson).toList(growable: false),
  );
  final List<AdmitCardDto> items;
}

class SignedDownloadDto {
  const SignedDownloadDto({required this.url});
  factory SignedDownloadDto.fromJson(JsonMap json) =>
      SignedDownloadDto(url: Uri.parse(_string(json, 'url')));
  final Uri url;
}

class PublicAdmitVerificationDto {
  const PublicAdmitVerificationDto({
    required this.id,
    required this.status,
    required this.studentName,
    required this.organizationName,
    required this.examTitle,
    required this.venueName,
    required this.roomName,
    required this.seatLabel,
  });

  factory PublicAdmitVerificationDto.fromJson(JsonMap json) =>
      PublicAdmitVerificationDto(
        id: _string(json, 'id'),
        status: _string(json, 'status'),
        studentName: _string(json, 'student_name'),
        organizationName: _string(json, 'organization_name'),
        examTitle: _string(json, 'exam_title'),
        venueName: _string(json, 'venue_name'),
        roomName: _string(json, 'room_name'),
        seatLabel: _string(json, 'seat_label'),
      );

  final String id;
  final String status;
  final String studentName;
  final String organizationName;
  final String examTitle;
  final String venueName;
  final String roomName;
  final String seatLabel;
}

class PublicIdentifierVerificationDto {
  const PublicIdentifierVerificationDto({
    required this.identifier,
    required this.status,
    required this.displayName,
    required this.organizationName,
    this.branchName,
  });

  factory PublicIdentifierVerificationDto.fromJson(JsonMap json) =>
      PublicIdentifierVerificationDto(
        identifier: _string(json, 'identifier'),
        status: _string(json, 'status'),
        displayName: _string(json, 'display_name'),
        organizationName: _string(json, 'organization_name'),
        branchName: _nullableString(json, 'branch_name'),
      );

  final String identifier;
  final String status;
  final String displayName;
  final String organizationName;
  final String? branchName;
}

/// Contract-defined recheck data. Optional grading fields are intentionally not
/// inferred when the backend omits them.
class RecheckRequestDto {
  const RecheckRequestDto({
    required this.id,
    required this.gradingVersionId,
    required this.reason,
    required this.status,
    required this.requestedAt,
    required this.version,
  });

  factory RecheckRequestDto.fromJson(JsonMap json) => RecheckRequestDto(
    id: _string(json, 'id'),
    gradingVersionId: _string(json, 'grading_version_id'),
    reason: _string(json, 'reason'),
    status: _string(json, 'status'),
    requestedAt: _timestamp(json, 'requested_at'),
    version: _integer(json, 'version'),
  );

  final String id;
  final String gradingVersionId;
  final String reason;
  final String status;
  final DateTime requestedAt;
  final int version;
}
