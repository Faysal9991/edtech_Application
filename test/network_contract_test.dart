import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/routing/internal_deep_link.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/features/authentication/data/models/auth_dto.dart';
import 'package:edtech_application/features/learning/data/services/lesson_progress_tracker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OpenAPI request serialization', () {
    test('registration uses display_name and no legacy Firebase fields', () {
      final json = const RegisterRequest(
        email: 'student@example.com',
        password: 'a-long-unique-passphrase',
        displayName: 'Student Name',
      ).toJson();

      expect(json, {
        'email': 'student@example.com',
        'password': 'a-long-unique-passphrase',
        'display_name': 'Student Name',
      });
      expect(json, isNot(contains('password_confirmation')));
    });

    test('progress uses snake_case and respects manual completion', () {
      final json = const ProgressWriteRequest(
        positionSeconds: 540,
        watchedSecondsDelta: 30,
        manualComplete: true,
      ).toJson();

      expect(json, {
        'position_seconds': 540,
        'watched_seconds_delta': 30,
        'manual_complete': true,
      });
    });

    test('teacher course writes retain optimistic version', () {
      final json = const CourseWriteRequest(
        title: 'Physics',
        slug: 'physics',
        description: 'Course',
        language: 'bn',
        level: 'intermediate',
        isFree: false,
        priceMinor: 10000,
        currency: 'BDT',
        version: 3,
      ).toJson();

      expect(json['is_free'], isFalse);
      expect(json['price_minor'], 10000);
      expect(json['version'], 3);
    });

    test('academic preferences use the new catalogue identifiers', () {
      final json = const AcademicPreferencesWriteRequest(
        programId: 'program',
        levelId: 'level',
        subjectIds: ['physics'],
        examTargetIds: ['medical'],
        preferredLanguage: 'bn',
      ).toJson();

      expect(json['program_id'], 'program');
      expect(json['subject_ids'], ['physics']);
      expect(json['exam_target_ids'], ['medical']);
      expect(json['preferred_language'], 'bn');
    });

    test('offline operation preserves stable id and UTC timestamp', () {
      final json = ProgressSyncOperation(
        clientOperationId: 'stable-operation-1',
        enrollmentId: 'enrollment',
        lessonId: 'lesson',
        positionSeconds: 42,
        watchedSecondsDelta: 12,
        clientUpdatedAt: DateTime.parse('2026-08-13T18:00:00+06:00'),
      ).toJson();

      expect(json['client_operation_id'], 'stable-operation-1');
      expect(json['client_updated_at'], '2026-08-13T12:00:00.000Z');
    });

    test('fixed point values remain exact internally', () {
      final value = FixedDecimal.parse('12.3400');
      expect(value.unscaled, BigInt.from(123400));
      expect(value.canonical, '12.3400');
    });
  });

  group('OpenAPI response parsing', () {
    test('cursor list tolerates typed JSON maps', () {
      final page = ListResponseDto.fromJson({
        'items': [
          {'id': 'one'},
          {'id': 'two'},
        ],
        'next_cursor': 'next-page',
      });

      expect(page.items.map((item) => item['id']), ['one', 'two']);
      expect(page.nextCursor, 'next-page');
    });

    test('quiz questions never require an answer key before submit', () {
      final attempt = QuizAttemptDto.fromJson({
        'id': 'attempt',
        'quiz_id': 'quiz',
        'attempt_number': 1,
        'status': 'in_progress',
        'started_at': '2026-08-09T12:00:00Z',
        'questions': [
          {
            'id': 'question',
            'type': 'single',
            'prompt': 'Question?',
            'points': 1,
            'options': [
              {'id': 'option', 'text': 'Answer'},
            ],
          },
        ],
      });

      expect(attempt.questions.single.options.single.correct, isNull);
    });

    test('student dashboard parses all mobile aggregate sections', () {
      final dashboard = StudentDashboardDto.fromJson({
        'generated_at': '2026-08-09T12:00:00Z',
        'continue_learning': [],
        'upcoming_live_classes': [],
        'due_assignments': [
          {
            'id': 'assignment',
            'course_id': 'course',
            'title': 'Daily practice',
            'course_title': 'Physics',
            'due_at': '2026-08-10T12:00:00Z',
          },
        ],
        'available_quizzes': [],
        'recent_results': [],
        'recommended_courses': [],
        'unread_notification_count': 3,
      });

      expect(dashboard.dueAssignments.single.id, 'assignment');
      expect(dashboard.unreadNotificationCount, 3);
    });

    test('typed playback retains signed alternate media tracks', () {
      final playback = PlaybackMetadataDto.fromJson({
        'media_asset_id': 'video',
        'content_type': 'video/mp4',
        'url': 'https://storage.example/video.mp4',
        'tracks': [
          {
            'id': 'subtitle',
            'type': 'subtitle',
            'language': 'bn',
            'label': 'বাংলা',
            'is_default': true,
            'content_type': 'text/vtt',
            'url': 'https://storage.example/subtitle.vtt',
          },
        ],
      });

      expect(playback.tracks.single.type, 'subtitle');
      expect(playback.tracks.single.isDefault, isTrue);
    });

    test('exam snapshot does not require correct-option flags', () {
      final attempt = ExamAttemptDto.fromJson({
        'id': 'attempt',
        'quiz_id': 'exam',
        'attempt_number': 1,
        'status': 'in_progress',
        'started_at': '2026-08-09T12:00:00Z',
        'submit_before': '2026-08-09T13:00:00Z',
        'questions': [
          {
            'id': 'question',
            'type': 'single',
            'prompt': 'Question?',
            'points': 1,
            'options': [
              {'id': 'option', 'text': 'Answer'},
            ],
          },
        ],
      });

      expect(attempt.questions.single.options.single.correct, isNull);
      expect(attempt.submitBefore, isNotNull);
    });

    test('RFC 7807 problem preserves field errors and request id', () {
      final request = RequestOptions(path: '/api/v1/auth/register');
      final error = DioException(
        requestOptions: request,
        response: Response<Map<String, dynamic>>(
          requestOptions: request,
          statusCode: 422,
          data: {
            'type': 'about:blank',
            'title': 'Validation failed',
            'status': 422,
            'detail': 'Request validation failed',
            'request_id': 'request-123',
            'errors': [
              {'field': 'password', 'message': 'minimum 12 characters'},
            ],
          },
        ),
      );

      final exception = AppException.fromDioException(error);
      expect(exception.statusCode, 422);
      expect(exception.requestId, 'request-123');
      expect(exception.fieldErrors['password'], 'minimum 12 characters');
      expect(exception.detail, 'Request validation failed');
    });

    test('RFC 7807 stack-like details never reach the user message', () {
      final request = RequestOptions(path: '/api/v1/student/dashboard');
      final error = DioException(
        requestOptions: request,
        response: Response<Map<String, dynamic>>(
          requestOptions: request,
          statusCode: 500,
          data: {
            'type': 'about:blank',
            'title': 'Internal Server Error',
            'status': 500,
            'detail': 'Traceback: at /app/src/dashboard.py:42',
            'request_id': 'request-500',
          },
        ),
      );

      final exception = AppException.fromDioException(error);
      expect(exception.detail, isNull);
      expect(exception.message, isNot(contains('Traceback')));
      expect(exception.requestId, 'request-500');
    });

    test('opaque offline cursor is retained without decoding', () {
      final page = OfflineChangeListDto.fromJson({
        'items': [],
        'next_cursor': 'signed.opaque+/cursor==',
      });
      expect(page.nextCursor, 'signed.opaque+/cursor==');
    });

    test(
      'unknown server status remains available as a forward-compatible value',
      () {
        final goal = StudentGoalDto.fromJson({
          'id': 'goal',
          'student_user_id': 'student',
          'title': 'Practice',
          'target_type': 'tasks',
          'target_value': 4,
          'starts_on': '2026-08-13',
          'ends_on': '2026-08-20',
          'status': 'future_status',
          'created_at': '2026-08-13T00:00:00Z',
          'updated_at': '2026-08-13T00:00:00Z',
        });
        expect(goal.status, 'future_status');
      },
    );
  });

  group('notification deep-link allowlist', () {
    test('accepts registered internal app routes', () {
      final link = InternalDeepLink.tryParse(
        '/exam?id=exam-1&organization_id=organization-1',
      );
      expect(link?.route, '/exam');
      expect(link?.argument, 'exam-1');
      expect(link?.organizationId, 'organization-1');
      expect(link?.requiredRole, MobileRole.student);
    });

    test('rejects external and protocol-relative URLs', () {
      expect(InternalDeepLink.tryParse('https://evil.example'), isNull);
      expect(InternalDeepLink.tryParse('//evil.example/path'), isNull);
      expect(InternalDeepLink.tryParse('/unknown/path'), isNull);
    });
  });

  test('lesson progress deltas never exceed backend maximum', () async {
    final deltas = <int>[];
    final tracker = LessonProgressTracker(
      reporter:
          ({required positionSeconds, required watchedSecondsDelta}) async {
            deltas.add(watchedSecondsDelta);
          },
    );

    await tracker.report(250);
    await tracker.report(280);
    tracker.reset();
    await tracker.report(15);
    await tracker.report(260);

    expect(deltas, [120, 30, 15, 120]);
    tracker.dispose();
  });
}
