import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/shared/models/course.dart';

class StudentLmsRepository {
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
        colorValue: 0xFFE8F5E9,
        overview: '',
        enrollmentId: _asString(json['id']),
        status: _asString(json['status'], fallback: 'active'),
      );
    }).toList();
  });

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
  }) => _guard(() async {
    final intent = await _api.createUploadIntent(
      UploadIntentWriteRequest(
        kind: 'assignment',
        filename: filename,
        contentType: contentType,
        sizeBytes: bytes.length,
      ),
    );
    // A clean client prevents bearer-token leakage to the presigned storage
    // origin, which may be different from the LMS API origin.
    await _uploadDio.put<void>(
      intent.uploadUrl,
      data: Stream<List<int>>.value(bytes),
      options: Options(
        headers: {
          Headers.contentTypeHeader: contentType,
          Headers.contentLengthHeader: bytes.length,
        },
      ),
    );
    await _api.completeMediaUpload(intent.id);
    return intent.mediaAssetId;
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
    } on FormatException catch (error) {
      throw AppException('Server response বোঝা যায়নি: ${error.message}');
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

  static int _courseColor(String id) {
    const colors = [0xFF1B5E20, 0xFF66BB6A, 0xFFA5D6A7, 0xFFE8F5E9];
    return colors[id.hashCode.abs() % colors.length];
  }

  static String _idempotencyKey() =>
      'mobile-${DateTime.now().microsecondsSinceEpoch}';

  static String _asString(Object? value, {String fallback = ''}) =>
      value is String ? value : fallback;

  static int _asInt(Object? value) => value is num ? value.toInt() : 0;

  static double _asDouble(Object? value) => value is num ? value.toDouble() : 0;
}
