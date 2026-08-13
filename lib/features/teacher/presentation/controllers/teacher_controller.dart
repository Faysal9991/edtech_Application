import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';
import 'package:edtech_application/features/teacher/data/teacher_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:edtech_application/shared/state/safe_change_notifier.dart';

class TeacherController extends ChangeNotifier with SafeChangeNotifier {
  TeacherController({required TeacherRepository repository})
    : _repository = repository;
  final TeacherRepository _repository;

  TeacherDashboardDto? dashboard;
  List<TeacherClassSessionDto> classSessions = const [];
  List<TeacherAvailabilityDto> availability = const [];
  List<Map<String, dynamic>> courses = const [];
  List<Map<String, dynamic>> batches = const [];
  List<Map<String, dynamic>> quizzes = const [];
  List<Map<String, dynamic>> exams = const [];
  List<Map<String, dynamic>> assignments = const [];
  List<Map<String, dynamic>> submissions = const [];
  List<Map<String, dynamic>> liveClasses = const [];
  List<Map<String, dynamic>> students = const [];
  TeacherAttendanceSessionDto? attendanceSession;
  AttendanceRosterDto? attendanceRoster;
  String? attendanceCode;
  DateTime? attendanceCodeExpiresAt;
  Map<String, String> attendanceMarks = const {};
  String? selectedBatchId;
  bool loading = false;
  bool studentsLoading = false;
  bool attendanceLoading = false;
  bool availabilitySaving = false;
  Set<String> deletingAvailabilityIds = const {};
  String? error;
  int _batchRequestGeneration = 0;

  static const attendanceStatuses = <String>{
    'present',
    'absent',
    'late',
    'excused',
  };

  bool get hasActiveAttendance => attendanceSession != null;
  int get attendanceRosterCount => attendanceRoster?.items.length ?? 0;
  int get unmarkedAttendanceCount {
    final roster = attendanceRoster?.items ?? const <AttendanceRosterItemDto>[];
    return roster
        .where((student) => !attendanceMarks.containsKey(student.studentUserId))
        .length;
  }

  bool get canFinalizeAttendance =>
      hasActiveAttendance &&
      attendanceRosterCount > 0 &&
      unmarkedAttendanceCount == 0 &&
      !attendanceLoading;

  Map<String, int> get attendanceCounts {
    final counts = <String, int>{
      for (final status in attendanceStatuses) status: 0,
    };
    for (final status in attendanceMarks.values) {
      if (counts.containsKey(status)) counts[status] = counts[status]! + 1;
    }
    return counts;
  }

  Future<void> load() async {
    if (loading) return;
    loading = true;
    error = null;
    notifyListeners();
    try {
      final values = await Future.wait<Object>([
        _repository.dashboard(),
        _repository.classSessions(),
        _repository.availability(),
        _repository.courses(),
        _repository.batches(),
        _repository.quizzes(),
        _repository.exams(),
        _repository.assignments(),
        _repository.submissions(),
        _repository.liveClasses(),
      ]);
      dashboard = values[0] as TeacherDashboardDto;
      classSessions = values[1] as List<TeacherClassSessionDto>;
      availability = (values[2] as TeacherAvailabilityListDto).items;
      courses = values[3] as List<Map<String, dynamic>>;
      batches = values[4] as List<Map<String, dynamic>>;
      quizzes = values[5] as List<Map<String, dynamic>>;
      exams = values[6] as List<Map<String, dynamic>>;
      assignments = values[7] as List<Map<String, dynamic>>;
      submissions = values[8] as List<Map<String, dynamic>>;
      liveClasses = values[9] as List<Map<String, dynamic>>;
      final firstBatch = batches.firstOrNull?['id'];
      if (firstBatch is String) await selectBatch(firstBatch, notify: false);
    } on AppException {
      error = 'teacher.error.load';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> selectBatch(String batchId, {bool notify = true}) async {
    final generation = ++_batchRequestGeneration;
    selectedBatchId = batchId;
    students = const [];
    studentsLoading = true;
    if (notify) notifyListeners();
    try {
      final loaded = await _repository.batchStudents(batchId);
      if (generation == _batchRequestGeneration && selectedBatchId == batchId) {
        students = loaded;
      }
    } on AppException {
      if (generation == _batchRequestGeneration) {
        error = 'teacher.error.students';
      }
    } finally {
      if (generation == _batchRequestGeneration) {
        studentsLoading = false;
        notifyListeners();
      }
    }
  }

  Future<bool> addAvailability({
    required DateTime startsAt,
    required DateTime endsAt,
    required String type,
  }) async {
    if (availabilitySaving) return false;
    if (!endsAt.isAfter(startsAt)) {
      error = 'teacher.error.endAfterStart';
      notifyListeners();
      return false;
    }
    availabilitySaving = true;
    error = null;
    notifyListeners();
    try {
      final created = await _repository.createAvailability(
        startsAt: startsAt,
        endsAt: endsAt,
        type: type,
      );
      availability = [...availability, created]
        ..sort((a, b) => a.startsAt.compareTo(b.startsAt));
      return true;
    } on AppException {
      error = 'teacher.error.availabilitySave';
      return false;
    } catch (_) {
      error = 'teacher.error.availabilitySave';
      return false;
    } finally {
      availabilitySaving = false;
      notifyListeners();
    }
  }

  Future<bool> removeAvailability(String id) async {
    if (deletingAvailabilityIds.contains(id)) return false;
    deletingAvailabilityIds = {...deletingAvailabilityIds, id};
    error = null;
    notifyListeners();
    try {
      await _repository.deleteAvailability(id);
      availability = availability.where((item) => item.id != id).toList();
      return true;
    } on AppException {
      error = 'teacher.error.availabilityRemove';
      return false;
    } catch (_) {
      error = 'teacher.error.availabilityRemove';
      return false;
    } finally {
      deletingAvailabilityIds = deletingAvailabilityIds
          .where((item) => item != id)
          .toSet();
      notifyListeners();
    }
  }

  Future<bool> startAttendance(String classSessionId) async {
    if (attendanceLoading || hasActiveAttendance) return false;
    attendanceLoading = true;
    error = null;
    notifyListeners();
    try {
      final created = await _repository.createAttendanceSession(classSessionId);
      final opened = await _repository.openAttendance(created.id);
      attendanceSession = opened.session;
      attendanceCode = opened.code;
      attendanceCodeExpiresAt = opened.expiresAt;
      notifyListeners();
      final roster = await _repository.attendanceRoster(created.id);
      attendanceRoster = roster;
      attendanceMarks = {
        for (final student in roster.items)
          if (attendanceStatuses.contains(student.attendanceStatus))
            student.studentUserId: student.attendanceStatus!,
      };
      return true;
    } on AppException {
      error = 'teacher.error.attendanceOpen';
      return false;
    } catch (_) {
      error = 'teacher.error.attendanceOpen';
      return false;
    } finally {
      attendanceLoading = false;
      notifyListeners();
    }
  }

  void markAttendance(String studentId, String status) {
    if (!attendanceStatuses.contains(status)) return;
    attendanceMarks = {...attendanceMarks, studentId: status};
    notifyListeners();
  }

  void markAllUnmarked(String status) {
    if (!attendanceStatuses.contains(status)) return;
    final roster = attendanceRoster?.items ?? const <AttendanceRosterItemDto>[];
    attendanceMarks = {
      ...attendanceMarks,
      for (final student in roster)
        if (!attendanceMarks.containsKey(student.studentUserId))
          student.studentUserId: status,
    };
    notifyListeners();
  }

  Future<bool> reloadAttendanceRoster() async {
    final session = attendanceSession;
    if (session == null || attendanceLoading) return false;
    attendanceLoading = true;
    error = null;
    notifyListeners();
    try {
      final roster = await _repository.attendanceRoster(session.id);
      final currentMarks = attendanceMarks;
      attendanceRoster = roster;
      attendanceMarks = {
        for (final student in roster.items)
          if (currentMarks.containsKey(student.studentUserId))
            student.studentUserId: currentMarks[student.studentUserId]!
          else if (attendanceStatuses.contains(student.attendanceStatus))
            student.studentUserId: student.attendanceStatus!,
      };
      return true;
    } on AppException {
      error = 'teacher.error.rosterLoad';
      return false;
    } catch (_) {
      error = 'teacher.error.rosterLoad';
      return false;
    } finally {
      attendanceLoading = false;
      notifyListeners();
    }
  }

  Future<bool> saveAndCloseAttendance() async {
    final session = attendanceSession;
    final roster = attendanceRoster;
    if (session == null || roster == null || attendanceLoading) return false;
    if (roster.items.isEmpty) {
      error = 'teacher.error.rosterEmpty';
      notifyListeners();
      return false;
    }
    if (unmarkedAttendanceCount > 0) {
      error = 'teacher.error.attendanceReview';
      notifyListeners();
      return false;
    }
    attendanceLoading = true;
    error = null;
    notifyListeners();
    try {
      await _repository.saveAttendance(
        session.id,
        roster.items
            .map(
              (student) => AttendanceRecordWriteRequest(
                studentUserId: student.studentUserId,
                status: attendanceMarks[student.studentUserId]!,
              ),
            )
            .toList(),
      );
      await _repository.closeAttendance(session.id);
      _clearAttendanceState();
      return true;
    } on AppException {
      error = 'teacher.error.attendanceFinalize';
      return false;
    } finally {
      attendanceLoading = false;
      notifyListeners();
    }
  }

  void _clearAttendanceState() {
    attendanceSession = null;
    attendanceRoster = null;
    attendanceCode = null;
    attendanceCodeExpiresAt = null;
    attendanceMarks = const {};
  }
}
