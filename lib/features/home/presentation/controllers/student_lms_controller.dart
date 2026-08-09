import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/models/mock_data.dart';
import 'package:flutter/foundation.dart';

class StudentLmsController extends ChangeNotifier {
  StudentLmsController({StudentLmsRepository? repository})
    : _repository = repository;

  final StudentLmsRepository? _repository;

  List<Course> courses = const [];
  List<Course> enrollments = const [];
  List<ResultDto> results = const [];
  List<CertificateDto> certificates = const [];
  List<NotificationDto> notifications = const [];
  int unreadNotifications = 0;
  bool isLoadingCourses = false;
  bool isLoadingStudentData = false;
  String? coursesError;
  String? studentDataError;

  Future<void> loadInitialData() async {
    if (_repository == null) {
      courses = MockData.courses;
      enrollments = MockData.courses.take(2).toList();
      notifyListeners();
      return;
    }
    await Future.wait([loadCourses(), loadStudentData()]);
  }

  Future<void> loadCourses({String? query, String? level}) async {
    final repository = _repository;
    if (repository == null) {
      final normalized = query?.trim().toLowerCase() ?? '';
      courses = MockData.courses
          .where(
            (course) =>
                normalized.isEmpty ||
                course.title.toLowerCase().contains(normalized) ||
                course.subject.toLowerCase().contains(normalized),
          )
          .toList();
      notifyListeners();
      return;
    }
    isLoadingCourses = true;
    coursesError = null;
    notifyListeners();
    try {
      courses = await repository.listCourses(query: query, level: level);
    } on AppException catch (error) {
      coursesError = error.message;
    } catch (_) {
      coursesError = 'Course response বোঝা যায়নি।';
    } finally {
      isLoadingCourses = false;
      notifyListeners();
    }
  }

  Future<void> loadStudentData() async {
    final repository = _repository;
    if (repository == null) return;
    isLoadingStudentData = true;
    studentDataError = null;
    notifyListeners();
    AppException? firstError;
    Future<void> capture(Future<void> Function() load) async {
      try {
        await load();
      } on AppException catch (error) {
        firstError ??= error;
      } catch (_) {
        firstError ??= const AppException('Student data response বোঝা যায়নি।');
      }
    }

    await Future.wait([
      capture(() async {
        enrollments = await repository.listEnrollments();
      }),
      capture(() async {
        results = await repository.listResults();
      }),
      capture(() async {
        certificates = await repository.listCertificates();
      }),
      capture(() async {
        notifications = await repository.listNotifications();
      }),
      capture(() async {
        unreadNotifications = await repository.unreadNotificationCount();
      }),
    ]);
    studentDataError = firstError?.message;
    isLoadingStudentData = false;
    notifyListeners();
  }

  Future<Course> getCourse(Course course) {
    final repository = _repository;
    if (repository == null || course.slug.isEmpty) {
      return SynchronousFuture(course);
    }
    return repository.getCourse(course.slug, enrollmentId: course.enrollmentId);
  }

  Future<Course> enroll(Course course) async {
    final repository = _repository;
    if (repository == null) return course;
    final enrollment = await repository.enroll(course.id);
    await loadStudentData();
    if (course.slug.isEmpty) {
      return course.copyWith(enrollmentId: enrollment.id);
    }
    return repository.getCourse(course.slug, enrollmentId: enrollment.id);
  }

  Future<void> markNotificationRead(String id) async {
    final repository = _repository;
    if (repository == null) return;
    await repository.markNotificationRead(id);
    notifications = notifications
        .map(
          (item) => item.id == id
              ? item.copyWith(readAt: DateTime.now().toUtc())
              : item,
        )
        .toList();
    unreadNotifications = notifications
        .where((item) => item.readAt == null)
        .length;
    notifyListeners();
  }
}
