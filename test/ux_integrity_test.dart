import 'dart:async';

import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';
import 'package:edtech_application/features/guardian/data/guardian_repository.dart';
import 'package:edtech_application/features/guardian/presentation/controllers/guardian_controller.dart';
import 'package:edtech_application/features/learning/presentation/pages/lesson_page.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('lesson route opens the lesson the learner selected', (
    tester,
  ) async {
    const course = Course(
      id: 'course-1',
      title: 'Physics',
      category: 'Science',
      instructor: 'Teacher',
      duration: '1 hour',
      lessons: 2,
      rating: 0,
      colorValue: 0xFF155EEF,
      modules: [
        CourseModule(
          id: 'module-1',
          title: 'Module',
          lessons: [
            CourseLesson(id: 'lesson-1', title: 'First lesson'),
            CourseLesson(id: 'lesson-2', title: 'Selected lesson'),
          ],
        ),
      ],
    );

    await tester.pumpWidget(
      const MaterialApp(
        locale: Locale('en'),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: LessonPage(course: course, initialLessonId: 'lesson-2'),
      ),
    );
    await tester.pump();

    // The selected lesson is rendered as both the page heading and the active
    // curriculum row. A non-selected lesson appears only in the curriculum.
    expect(find.text('Selected lesson'), findsNWidgets(2));
    expect(find.text('First lesson'), findsOneWidget);
  });

  test(
    'late Guardian response cannot overwrite a newly selected learner',
    () async {
      final repository = _RacingGuardianRepository();
      final controller = GuardianController(repository: repository);
      final first = _student('student-a', 'Learner A');
      final second = _student('student-b', 'Learner B');
      controller
        ..students = [first, second]
        ..selectedStudent = first;

      final firstLoad = controller.loadSelectedStudent();
      await controller.selectStudent(second);

      expect(controller.selectedStudent?.studentUserId, 'student-b');
      expect(controller.summary?.displayName, 'Learner B');

      repository.firstSummary.complete(_summary('student-a', 'Learner A'));
      await firstLoad;

      expect(controller.selectedStudent?.studentUserId, 'student-b');
      expect(controller.summary?.displayName, 'Learner B');
      expect(controller.childLoading, isFalse);
    },
  );
}

GuardianStudentDto _student(String id, String name) => GuardianStudentDto(
  linkId: 'link-$id',
  studentUserId: id,
  displayName: name,
  relationshipType: 'parent',
  linkedAt: DateTime.utc(2026),
);

GuardianStudentSummaryDto _summary(String id, String name) =>
    GuardianStudentSummaryDto(
      id: id,
      displayName: name,
      activeEnrollments: 1,
      averageProgress: 50,
      absences: 0,
      dueAssignments: 0,
      upcomingExams: 0,
    );

class _RacingGuardianRepository implements GuardianRepository {
  final firstSummary = Completer<GuardianStudentSummaryDto>();

  @override
  Future<GuardianStudentSummaryDto> student(String id) => id == 'student-a'
      ? firstSummary.future
      : Future.value(_summary('student-b', 'Learner B'));

  @override
  Future<GuardianAttendanceListDto> attendance(String studentId) async =>
      const GuardianAttendanceListDto(items: []);

  @override
  Future<GuardianProgressListDto> progress(String studentId) async =>
      const GuardianProgressListDto(items: []);

  @override
  Future<GuardianResultListDto> results(String studentId) async =>
      const GuardianResultListDto(items: []);

  @override
  Future<StudentCalendarDto> calendar(
    String studentId, {
    DateTime? from,
    DateTime? to,
  }) async => StudentCalendarDto(
    items: const [],
    fromDate: DateTime.utc(2026),
    toDate: DateTime.utc(2026, 1, 2),
  );

  @override
  Future<GuardianLearningSummaryDto> learningSummary(String studentId) async =>
      const GuardianLearningSummaryDto(weakTopics: [], supportUpdates: []);

  @override
  Future<StudentGuardianDto> acceptInvitation({
    String? token,
    String? invitationId,
    String? otp,
    String? password,
    String? displayName,
  }) => throw UnimplementedError();

  @override
  Future<GuardianNoticeAcknowledgementDto> acknowledgeNotice(String id) =>
      throw UnimplementedError();

  @override
  Future<GuardianDashboardDto> dashboard() => throw UnimplementedError();

  @override
  Future<List<GuardianStudentDto>> students() => throw UnimplementedError();
}
