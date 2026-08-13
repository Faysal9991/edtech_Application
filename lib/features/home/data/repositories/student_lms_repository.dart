import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_gateway.dart';
import 'package:edtech_application/shared/models/course.dart';

class StudentLmsRepository implements OfflineLearningGateway {
  const StudentLmsRepository({required ApiService api, required Dio uploadDio})
    : _api = api,
      _uploadDio = uploadDio;

  final ApiService _api;
  final Dio _uploadDio;

  Future<List<Course>> listCourses({String? query, String? level}) =>
      _guard(() async {
        final items = await _allPages(
          (cursor) => _api.getCourses(
            cursor,
            100,
            _emptyToNull(query),
            null,
            null,
            _apiLevel(level),
          ),
        );
        return items.map(CourseDto.fromJson).map(_courseFromDto).toList();
      });

  Future<Course> getCourse(String slug, {String? enrollmentId}) =>
      _guard(() async {
        final detail = await _api.getCourse(slug);
        return _courseFromDto(
          detail.course,
          modules: detail.modules,
          enrollmentId: enrollmentId,
        );
      });

  Future<List<Course>> listEnrollments() => _guard(() async {
    final items = await _allPages(
      (cursor) => _api.getStudentEnrollments(cursor, 100),
    );
    return items.map((json) {
      final progress = _asDouble(json['completion_percentage']);
      return Course(
        id: _asString(json['course_id']),
        slug: _asString(json['course_slug']),
        title: _asString(json['course_title'], fallback: 'কোর্স'),
        category: 'Learning',
        instructor: 'Course instructor',
        duration: 'Self-paced',
        lessons: 100,
        completedLessons: progress.round(),
        rating: 0,
        colorValue: 0xFFEAF2FF,
        overview: '',
        enrollmentId: _asString(json['id']),
        status: _asString(json['status'], fallback: 'active'),
      );
    }).toList();
  });

  Future<StudentDashboardDto> getDashboard() => _guard(_api.studentDashboard);

  Future<List<StudentLiveClassDto>> listLiveClasses({String? status}) =>
      _guard(() async {
        final items = await _allPages(
          (cursor) => _api.studentListLiveClasses(
            null,
            null,
            status,
            null,
            null,
            cursor,
            100,
          ),
        );
        return items.map(StudentLiveClassDto.fromJson).toList();
      });

  Future<StudentLiveClassDto> getLiveClass(String id) =>
      _guard(() => _api.studentGetLiveClass(id));

  Future<List<StudentQuizDto>> listQuizzes({String? status}) =>
      _guard(() async {
        final items = await _allPages(
          (cursor) => _api.studentListQuizzes(
            null,
            null,
            status,
            null,
            null,
            cursor,
            100,
          ),
        );
        return items.map(StudentQuizDto.fromJson).toList();
      });

  Future<StudentQuizDto> getQuiz(String id) =>
      _guard(() => _api.studentGetQuiz(id));

  Future<List<StudentAssignmentDto>> listAssignments({String? status}) =>
      _guard(() async {
        final items = await _allPages(
          (cursor) => _api.studentListAssignments(
            null,
            null,
            status,
            null,
            null,
            null,
            cursor,
            100,
          ),
        );
        return items.map(StudentAssignmentDto.fromJson).toList();
      });

  Future<StudentAssignmentDto> getAssignment(String id) =>
      _guard(() => _api.studentGetAssignment(id));

  Future<List<StudentSubmissionDto>> listSubmissions({String? status}) =>
      _guard(() async {
        final items = await _allPages(
          (cursor) => _api.studentListSubmissions(
            null,
            null,
            status,
            null,
            null,
            cursor,
            100,
          ),
        );
        return items.map(StudentSubmissionDto.fromJson).toList();
      });

  Future<List<ExamDto>> listExams({String? status}) => _guard(() async {
    final items = await _allPages(
      (cursor) => _api.studentListExams(null, null, status, cursor, 100),
    );
    return items.map(ExamDto.fromJson).toList();
  });

  Future<ExamAttemptDto> startExam(String examId) =>
      _guard(() => _api.studentStartExamAttempt(examId));

  Future<ExamAttemptDto> restoreExamAttempt(String attemptId) =>
      _guard(() => _api.studentGetExamAttempt(attemptId));

  Future<void> saveExamAnswer({
    required String attemptId,
    required String questionId,
    List<String>? selectedOptionIds,
    String? textAnswer,
  }) => _guard(() async {
    await _api.studentAutosaveExamAnswer(
      attemptId,
      AnswerWriteRequest(
        questionId: questionId,
        selectedOptionIds: selectedOptionIds,
        textAnswer: textAnswer,
      ),
    );
  });

  Future<ExamAttemptDto> submitExam(String attemptId) =>
      _guard(() => _api.studentSubmitExamAttempt(attemptId));

  Future<ExamLeaderboardDto> getExamLeaderboard(
    String examId, {
    String scope = 'course',
  }) => _guard(() => _api.studentExamLeaderboard(examId, scope, null, 100));

  Future<EnrollmentDto> enroll(String courseId) =>
      _guard(() => _api.enroll(courseId));

  Future<ProgressDto> updateProgress({
    required String enrollmentId,
    required String lessonId,
    required int positionSeconds,
    required int watchedSecondsDelta,
    bool manualComplete = false,
  }) => _guard(
    () => _api.updateLessonProgress(
      enrollmentId,
      lessonId,
      ProgressWriteRequest(
        positionSeconds: positionSeconds,
        watchedSecondsDelta: watchedSecondsDelta.clamp(0, 120).toInt(),
        manualComplete: manualComplete,
      ),
    ),
  );

  Future<StudentSyllabusProgressListDto> getSyllabusProgress(
    String enrollmentId,
  ) => _guard(() => _api.studentGetSyllabusProgress(enrollmentId));

  Future<PhysicalAttendanceListDto> listAttendance({String? cursor}) =>
      _guard(() => _api.studentListPhysicalAttendance(cursor, 100));

  Future<PhysicalAttendanceRecordDto> checkInAttendance({
    required String attendanceSessionId,
    required String code,
    Map<String, dynamic>? riskEvidence,
  }) => _guard(
    () => _api.studentPhysicalAttendanceCheckIn(
      attendanceSessionId,
      AttendanceCheckInRequest(code: code.trim(), riskEvidence: riskEvidence),
    ),
  );

  Future<AttendanceCorrectionDto> requestAttendanceCorrection({
    required String attendanceRecordId,
    required String requestedStatus,
    required String reason,
  }) => _guard(
    () => _api.studentRequestAttendanceCorrection(
      attendanceRecordId,
      AttendanceCorrectionRequest(
        requestedStatus: requestedStatus,
        reason: reason.trim(),
      ),
    ),
  );

  Future<QuizAttemptDto> startQuiz(String quizId) =>
      _guard(() => _api.startQuizAttempt(quizId));

  Future<void> saveAnswer({
    required String attemptId,
    required String questionId,
    List<String>? selectedOptionIds,
    String? textAnswer,
  }) => _guard(() async {
    await _api.saveQuizAnswer(
      attemptId,
      AnswerWriteRequest(
        questionId: questionId,
        selectedOptionIds: selectedOptionIds,
        textAnswer: textAnswer,
      ),
    );
  });

  Future<QuizAttemptDto> submitQuiz(String attemptId) =>
      _guard(() => _api.submitQuiz(attemptId));

  Future<String> uploadAssignmentFile({
    required Uint8List bytes,
    required String filename,
    required String contentType,
    List<String> allowedContentTypes = const [],
    int? maximumSizeBytes,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
  }) => _guard(() async {
    if (maximumSizeBytes != null && bytes.length > maximumSizeBytes) {
      throw const AppException('ফাইলটি assignment-এর সর্বোচ্চ size ছাড়িয়েছে।');
    }
    final extension = filename.contains('.')
        ? filename.split('.').last.toLowerCase()
        : '';
    final typeAllowed =
        allowedContentTypes.isEmpty ||
        allowedContentTypes.any(
          (allowed) =>
              allowed.toLowerCase() == contentType.toLowerCase() ||
              allowed.toLowerCase() == extension ||
              (allowed.endsWith('/*') &&
                  contentType.startsWith(
                    allowed.substring(0, allowed.length - 1),
                  )),
        );
    if (!typeAllowed) {
      throw const AppException('এই file type assignment-এ অনুমোদিত নয়।');
    }

    Future<String> upload({required bool mayRetryExpiredIntent}) async {
      final intent = await _api.createUploadIntent(
        UploadIntentWriteRequest(
          kind: 'assignment',
          filename: filename,
          contentType: contentType,
          sizeBytes: bytes.length,
          checksumSha256: sha256.convert(bytes).toString(),
        ),
      );
      if (!intent.expiresAt.toUtc().isAfter(DateTime.now().toUtc())) {
        if (mayRetryExpiredIntent) return upload(mayRetryExpiredIntent: false);
        throw const AppException('Upload URL-এর মেয়াদ শেষ হয়েছে।');
      }
      try {
        // A clean client prevents bearer-token leakage to the presigned storage
        // origin, which may be different from the LMS API origin.
        await _uploadDio.put<void>(
          intent.uploadUrl,
          data: Stream<List<int>>.value(bytes),
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          options: Options(
            headers: {
              Headers.contentTypeHeader: contentType,
              Headers.contentLengthHeader: bytes.length,
            },
          ),
        );
      } on DioException catch (error) {
        if (mayRetryExpiredIntent &&
            (error.response?.statusCode == 401 ||
                error.response?.statusCode == 403)) {
          return upload(mayRetryExpiredIntent: false);
        }
        rethrow;
      }
      await _api.completeMediaUpload(intent.id);
      return intent.mediaAssetId;
    }

    return upload(mayRetryExpiredIntent: true);
  });

  Future<String> createAssignmentSubmission({
    required String assignmentId,
    String? text,
    List<String>? mediaAssetIds,
  }) => _guard(() async {
    final response = await _api.createAssignmentSubmission(
      assignmentId,
      SubmissionWriteRequest(
        textContent: _emptyToNull(text),
        mediaAssetIds: mediaAssetIds,
      ),
    );
    return _asString(response.value['id']);
  });

  Future<void> submitAssignment(String submissionId) => _guard(() async {
    await _api.submitAssignment(submissionId);
  });

  Future<LiveClassTokenResponse> getLiveClassToken(String liveClassId) =>
      _guard(() => _api.createLiveClassToken(liveClassId));

  Future<Uri> getMediaAccessUrl(String mediaAssetId) => _guard(() async {
    final response = await _api.getMediaAccessUrl(mediaAssetId);
    final rawUrl = _asString(response.value['url']);
    final url = Uri.tryParse(rawUrl);
    if (url == null || !url.hasScheme) {
      throw const AppException('Lesson media URL পাওয়া যায়নি।');
    }
    return url;
  });

  Future<PlaybackMetadataDto> getMediaPlayback(String mediaAssetId) =>
      _guard(() => _api.mediaPlayback(mediaAssetId));

  Future<OrderDto> createOrder(String courseId) => _guard(
    () => _api.createPaymentOrder(
      _idempotencyKey(),
      OrderWriteRequest(courseId: courseId),
    ),
  );

  Future<PaymentIntentDto> createPaymentIntent(String orderId) =>
      _guard(() => _api.createPaymentIntent(orderId));

  Future<List<Map<String, dynamic>>> listPayments() => _guard(() async {
    return _allPages((cursor) => _api.getStudentPayments(cursor, 100));
  });

  Future<List<ResultDto>> listResults() => _guard(() async {
    final items = await _allPages(
      (cursor) => _api.getStudentResults(cursor, 100),
    );
    return items.map(ResultDto.fromJson).toList();
  });

  Future<RecheckRequestDto> requestResultRecheck({
    required String resultId,
    required String reason,
  }) => _guard(
    () => _api.studentRequestResultRecheck(
      resultId,
      RecheckRequestWriteRequest(reason: reason.trim()),
    ),
  );

  Future<List<CertificateDto>> listCertificates() => _guard(() async {
    final items = await _allPages(
      (cursor) => _api.getStudentCertificates(cursor, 100),
    );
    return items.map(CertificateDto.fromJson).toList();
  });

  Future<CertificateVerificationDto> verifyCertificate(String number) =>
      _guard(() => _api.verifyCertificate(number.trim()));

  Future<Uri> certificateDownloadUrl(String certificateId) => _guard(() async {
    final response = await _api.getCertificateDownload(
      certificateId,
      Options(
        followRedirects: false,
        validateStatus: (status) => status == 302,
      ),
    );
    final location = response.response.headers.value('location');
    final uri = location == null ? null : Uri.tryParse(location);
    if (uri == null || !uri.hasScheme) {
      throw const AppException('Certificate download URL পাওয়া যায়নি।');
    }
    return uri;
  });

  Future<List<NotificationDto>> listNotifications() => _guard(() async {
    final items = await _allPages(
      (cursor) => _api.getNotifications(cursor, 100),
    );
    return items.map(NotificationDto.fromJson).toList();
  });

  Future<int> unreadNotificationCount() => _guard(() async {
    final response = await _api.getUnreadNotificationCount();
    return _asInt(response.value['count']);
  });

  Future<void> markNotificationRead(String id) => _guard(() async {
    await _api.markNotificationRead(id);
  });

  Future<void> markAllNotificationsRead() => _guard(() async {
    await _api.markAllNotificationsRead();
  });

  Future<void> registerDeviceToken({
    required String token,
    required String platform,
  }) => _guard(() async {
    await _api.registerDevice(
      DeviceTokenWriteRequest(token: token, platform: platform),
    );
  });

  Future<void> removeDeviceToken(String token) =>
      _guard(() => _api.removeDevice(token));

  Future<MasterySummaryDto> getTopicMastery({String? cursor}) =>
      _guard(() => _api.studentTopicMastery(cursor, 100));

  Future<MasterySummaryDto> getWeakTopics({String? cursor}) =>
      _guard(() => _api.studentWeakTopics(cursor, 100));

  Future<DoubtThreadListDto> listDoubts({String? cursor}) =>
      _guard(() => _api.studentListDoubts(cursor, 100));

  Future<DoubtThreadDto> createDoubt(DoubtWriteRequest request) =>
      _guard(() => _api.studentCreateDoubt(request));

  Future<DoubtThreadDetailDto> getDoubt(String doubtId) =>
      _guard(() => _api.studentGetDoubt(doubtId));

  Future<DoubtMessageDto> replyToDoubt({
    required String doubtId,
    required String body,
    List<String> attachmentAssetIds = const [],
  }) => _guard(
    () => _api.studentReplyToDoubt(
      doubtId,
      DoubtMessageWriteRequest(
        body: body.trim(),
        attachmentAssetIds: attachmentAssetIds,
      ),
    ),
  );

  Future<DoubtThreadDto> resolveDoubt(String doubtId) =>
      _guard(() => _api.studentResolveDoubt(doubtId));

  Future<DoubtThreadDto> reopenDoubt(String doubtId) =>
      _guard(() => _api.studentReopenDoubt(doubtId));

  Future<StudyPlanListDto> listStudyPlans({String? cursor}) =>
      _guard(() => _api.studentListStudyPlans(cursor, 100));

  Future<StudyTaskListDto> listStudyTasks({String? cursor, String? status}) =>
      _guard(() => _api.studentListStudyPlanTasks(cursor, 100, status));

  Future<StudyTaskDto> completeStudyTask({
    required String taskId,
    required int version,
  }) => _guard(
    () => _api.studentCompleteStudyPlanTask(
      taskId,
      VersionWriteRequest(version: version),
    ),
  );

  Future<StudyTaskDto> rescheduleStudyTask({
    required String taskId,
    required int version,
    required DateTime dueAt,
  }) => _guard(
    () => _api.studentRescheduleStudyPlanTask(
      taskId,
      StudyTaskRescheduleRequest(version: version, dueAt: dueAt),
    ),
  );

  Future<StudentGoalListDto> listGoals({String? cursor}) =>
      _guard(() => _api.studentListGoals(cursor, 100));

  Future<StudentGoalDto> createGoal(StudentGoalWriteRequest request) =>
      _guard(() => _api.studentCreateGoal(request));

  @override
  Future<OfflineEntitlementDto> issueOfflineEntitlement(String enrollmentId) =>
      _guard(
        () => _api.studentIssueOfflineEntitlement(
          OfflineEntitlementWriteRequest(enrollmentId: enrollmentId),
        ),
      );

  @override
  Future<OfflineManifestDto> getOfflineManifest(String enrollmentId) =>
      _guard(() => _api.studentGetOfflineManifest(enrollmentId));

  @override
  Future<OfflineChangeListDto> listOfflineChanges({String? cursor}) =>
      _guard(() => _api.studentListOfflineChanges(cursor, 100));

  @override
  Future<SyncResultListDto> syncOfflineProgress(
    List<ProgressSyncOperation> operations,
  ) {
    if (operations.isEmpty || operations.length > 100) {
      throw const AppException(
        'Offline sync-এ ১ থেকে ১০০টি operation প্রয়োজন।',
      );
    }
    return _guard(
      () => _api.studentSyncOfflineProgress(
        ProgressSyncWriteRequest(operations: operations),
      ),
    );
  }

  @override
  Future<SyncResultListDto> syncOfflineAnswers(
    List<AnswerSyncOperation> operations,
  ) {
    if (operations.isEmpty || operations.length > 100) {
      throw const AppException(
        'Offline sync-এ ১ থেকে ১০০টি operation প্রয়োজন।',
      );
    }
    return _guard(
      () => _api.studentSyncOfflineAnswers(
        AnswerSyncWriteRequest(operations: operations),
      ),
    );
  }

  Future<MediaRenditionListDto> listMediaRenditions(String mediaAssetId) =>
      _guard(() => _api.listMediaRenditions(mediaAssetId));

  Future<SmsContactListDto> listSmsContacts() => _guard(_api.listMySmsContacts);

  Future<SmsContactVerificationStartedDto> createSmsContact(String phone) =>
      _guard(
        () => _api.createMySmsContact(SmsContactWriteRequest(phone: phone)),
      );

  Future<SmsContactDto> verifySmsContact(String token) => _guard(
    () => _api.verifyMySmsContact(SmsContactVerifyRequest(token: token)),
  );

  Future<AdmitCardListDto> listAdmitCards() =>
      _guard(_api.studentListAdmitCards);

  Future<Uri> admitCardDownloadUrl(String admitCardId) => _guard(() async {
    final download = await _api.studentDownloadAdmitCard(admitCardId);
    if (!download.url.hasScheme) {
      throw const AppException('Admit-card download URL পাওয়া যায়নি।');
    }
    return download.url;
  });

  Future<PublicAdmitVerificationDto> verifyAdmitCard(String token) =>
      _guard(() => _api.publicVerifyAdmitCard(token.trim()));

  Future<PublicIdentifierVerificationDto> verifyStudentIdentifier(
    String token,
  ) => _guard(() => _api.publicVerifyStudentIdentifier(token.trim()));

  Course _courseFromDto(
    CourseDto dto, {
    List<CourseModuleDto> modules = const [],
    String? enrollmentId,
  }) {
    final domainModules = modules
        .map(
          (module) => CourseModule(
            id: module.id,
            title: module.title,
            description: module.description,
            position: module.position,
            lessons: module.lessons
                .map(
                  (lesson) => CourseLesson(
                    id: lesson.id,
                    title: lesson.title,
                    description: lesson.description,
                    type: lesson.lessonType ?? lesson.type,
                    position: lesson.position,
                    isPreview: lesson.isPreview,
                    isRequired: lesson.isRequired,
                    isPublished: lesson.isPublished,
                    durationSeconds: lesson.durationSeconds,
                    mediaAssetId: lesson.mediaAssetId,
                    body: lesson.body,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
    final lessonCount = domainModules.fold<int>(
      0,
      (total, module) => total + module.lessons.length,
    );
    return Course(
      id: dto.id,
      organizationId: dto.organizationId,
      slug: dto.slug,
      title: dto.title,
      category: dto.categoryName?.isNotEmpty == true
          ? dto.categoryName!
          : dto.level,
      subject: dto.categoryName?.isNotEmpty == true
          ? dto.categoryName!
          : 'General',
      instructor: 'Course instructor',
      duration: lessonCount == 0 ? 'Self-paced' : '$lessonCount lessons',
      lessons: lessonCount,
      rating: 0,
      colorValue: _courseColor(dto.id),
      educationLevel: _educationLabel(dto.level),
      language: dto.language == 'bn' ? 'বাংলা' : dto.language.toUpperCase(),
      priceMinor: dto.priceMinor,
      isFree: dto.isFree,
      overview: dto.description,
      level: dto.level,
      status: dto.status,
      currency: dto.currency,
      thumbnailAssetId: dto.thumbnailAssetId,
      enrollmentId: enrollmentId,
      modules: domainModules,
    );
  }

  Future<T> _guard<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } on AppException {
      rethrow;
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    } on FormatException {
      throw const AppException('Server response বোঝা যায়নি।');
    }
  }

  Future<List<Map<String, dynamic>>> _allPages(
    Future<ListResponseDto> Function(String? cursor) load,
  ) async {
    final items = <Map<String, dynamic>>[];
    final seenCursors = <String>{};
    String? cursor;
    do {
      final page = await load(cursor);
      items.addAll(page.items);
      cursor = page.nextCursor;
    } while (cursor != null && cursor.isNotEmpty && seenCursors.add(cursor));
    return items;
  }

  static String? _emptyToNull(String? value) {
    final normalized = value?.trim();
    return normalized == null || normalized.isEmpty ? null : normalized;
  }

  static String? _apiLevel(String? level) {
    return switch (level?.toLowerCase()) {
      'beginner' ||
      'intermediate' ||
      'advanced' ||
      'all' => level!.toLowerCase(),
      _ => null,
    };
  }

  static String _educationLabel(String level) => switch (level) {
    'beginner' => 'SSC',
    'intermediate' => 'HSC',
    'advanced' => 'Admission',
    _ => 'সব লেভেল',
  };

  static int _courseColor(String _) => 0xFFEAF2FF;

  static String _idempotencyKey() =>
      'mobile-${DateTime.now().microsecondsSinceEpoch}';

  static String _asString(Object? value, {String fallback = ''}) =>
      value is String ? value : fallback;

  static int _asInt(Object? value) => value is num ? value.toInt() : 0;

  static double _asDouble(Object? value) => value is num ? value.toDouble() : 0;
}
