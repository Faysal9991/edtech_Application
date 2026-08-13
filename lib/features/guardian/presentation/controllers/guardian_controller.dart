import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';
import 'package:edtech_application/features/guardian/data/guardian_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:edtech_application/shared/state/safe_change_notifier.dart';

class GuardianController extends ChangeNotifier with SafeChangeNotifier {
  GuardianController({required GuardianRepository repository})
    : _repository = repository;

  final GuardianRepository _repository;
  GuardianDashboardDto? dashboard;
  List<GuardianStudentDto> students = const [];
  GuardianStudentDto? selectedStudent;
  GuardianStudentSummaryDto? summary;
  GuardianAttendanceListDto? attendance;
  GuardianProgressListDto? progress;
  GuardianResultListDto? results;
  StudentCalendarDto? calendar;
  GuardianLearningSummaryDto? learning;
  bool loading = false;
  bool childLoading = false;
  String? error;
  int _childRequestGeneration = 0;

  Future<void> load() async {
    if (loading) return;
    loading = true;
    error = null;
    notifyListeners();
    try {
      final values = await Future.wait<Object>([
        _repository.dashboard(),
        _repository.students(),
      ]);
      dashboard = values[0] as GuardianDashboardDto;
      students = values[1] as List<GuardianStudentDto>;
      if (students.isEmpty) {
        _childRequestGeneration++;
        selectedStudent = null;
        _clearChildData();
      } else {
        final currentId = selectedStudent?.studentUserId;
        selectedStudent = students
            .where((student) => student.studentUserId == currentId)
            .firstOrNull;
        selectedStudent ??= students.first;
        await loadSelectedStudent(notify: false);
      }
    } on AppException catch (exception) {
      error = exception.message;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> selectStudent(GuardianStudentDto student) async {
    if (selectedStudent?.studentUserId == student.studentUserId) return;
    selectedStudent = student;
    _clearChildData();
    notifyListeners();
    await loadSelectedStudent();
  }

  Future<void> loadSelectedStudent({bool notify = true}) async {
    final student = selectedStudent;
    if (student == null) return;
    final generation = ++_childRequestGeneration;
    final studentId = student.studentUserId;
    childLoading = true;
    error = null;
    if (notify) notifyListeners();
    try {
      final values = await Future.wait<Object>([
        _repository.student(studentId),
        _repository.attendance(studentId),
        _repository.progress(studentId),
        _repository.results(studentId),
        _repository.calendar(studentId),
        _repository.learningSummary(studentId),
      ]);
      if (generation != _childRequestGeneration ||
          selectedStudent?.studentUserId != studentId) {
        return;
      }
      summary = values[0] as GuardianStudentSummaryDto;
      attendance = values[1] as GuardianAttendanceListDto;
      progress = values[2] as GuardianProgressListDto;
      results = values[3] as GuardianResultListDto;
      calendar = values[4] as StudentCalendarDto;
      learning = values[5] as GuardianLearningSummaryDto;
    } on AppException catch (exception) {
      if (generation == _childRequestGeneration &&
          selectedStudent?.studentUserId == studentId) {
        error = exception.message;
      }
    } finally {
      if (generation == _childRequestGeneration) {
        childLoading = false;
        notifyListeners();
      }
    }
  }

  Future<bool> acknowledgeNotice(String id) async {
    try {
      await _repository.acknowledgeNotice(id);
      return true;
    } on AppException catch (exception) {
      error = exception.message;
      notifyListeners();
      return false;
    }
  }

  void _clearChildData() {
    summary = null;
    attendance = null;
    progress = null;
    results = null;
    calendar = null;
    learning = null;
  }
}
