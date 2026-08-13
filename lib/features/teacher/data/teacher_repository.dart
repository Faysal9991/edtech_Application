import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';

class TeacherRepository {
  const TeacherRepository({required ApiService api}) : _api = api;
  final ApiService _api;

  Future<TeacherDashboardDto> dashboard() => _guard(_api.teacherDashboard);
  Future<List<TeacherClassSessionDto>> classSessions() => _guard(
    () async => (await _api.teacherListClassSessions(null, 100)).items,
  );
  Future<TeacherAvailabilityListDto> availability({
    DateTime? from,
    DateTime? to,
  }) => _guard(() => _api.teacherListAvailability(null, 100, from, to));
  Future<TeacherAvailabilityDto> createAvailability({
    required DateTime startsAt,
    required DateTime endsAt,
    required String type,
  }) => _guard(
    () => _api.teacherCreateAvailability(
      TeacherAvailabilityWriteRequest(
        startsAt: startsAt,
        endsAt: endsAt,
        availabilityType: type,
      ),
    ),
  );
  Future<void> deleteAvailability(String id) =>
      _guard(() => _api.teacherDeleteAvailability(id));

  Future<List<Map<String, dynamic>>> courses() =>
      _allPages((cursor) => _api.teacherListCourses(cursor, 100));
  Future<List<Map<String, dynamic>>> batches() =>
      _allPages((cursor) => _api.teacherListBatches(cursor, 100, null, null));
  Future<List<Map<String, dynamic>>> batchStudents(String batchId) => _allPages(
    (cursor) => _api.teacherListBatchStudents(batchId, cursor, 100),
  );
  Future<List<Map<String, dynamic>>> quizzes() =>
      _allPages((cursor) => _api.teacherListQuizzes(null, cursor, 100));
  Future<List<Map<String, dynamic>>> exams() => _allPages(
    (cursor) => _api.teacherListExams(null, null, null, cursor, 100),
  );
  Future<List<Map<String, dynamic>>> assignments() =>
      _allPages((cursor) => _api.teacherListAssignments(null, cursor, 100));
  Future<List<Map<String, dynamic>>> submissions() => _allPages(
    (cursor) =>
        _api.teacherListSubmissions(null, null, null, null, null, cursor, 100),
  );
  Future<List<Map<String, dynamic>>> liveClasses() =>
      _allPages((cursor) => _api.teacherListLiveClasses(null, cursor, 100));

  Future<TeacherAttendanceSessionDto> createAttendanceSession(
    String classSessionId,
  ) => _guard(
    () => _api.teacherCreateAttendanceSession(
      AttendanceSessionCreateRequest(classSessionId: classSessionId),
    ),
  );
  Future<TeacherAttendanceSessionDto> attendanceSession(String id) =>
      _guard(() => _api.teacherGetAttendanceSession(id));
  Future<AttendanceOpenResponseDto> openAttendance(String id) =>
      _guard(() => _api.teacherOpenAttendanceSession(id));
  Future<TeacherAttendanceSessionDto> closeAttendance(String id) =>
      _guard(() => _api.teacherCloseAttendanceSession(id));
  Future<AttendanceRosterDto> attendanceRoster(String id) =>
      _guard(() => _api.teacherGetAttendanceRoster(id));
  Future<PhysicalAttendanceListDto> saveAttendance(
    String id,
    List<AttendanceRecordWriteRequest> records,
  ) => _guard(
    () => _api.teacherMarkAttendanceRecords(
      id,
      AttendanceRecordBatchWriteRequest(records: records),
    ),
  );

  Future<SyllabusCoverageListDto> syllabusCoverage(String batchId) =>
      _guard(() => _api.teacherGetSyllabusCoverage(batchId));
  Future<SyllabusCoverageDto> updateSyllabusCoverage({
    required String batchId,
    required SyllabusCoverageDto current,
    required String status,
    required double completionPercentage,
    String? note,
  }) => _guard(
    () => _api.teacherUpdateSyllabusCoverage(
      batchId,
      current.syllabusUnitId,
      SyllabusCoverageWriteRequest(
        status: status,
        completionPercentage: completionPercentage,
        version: current.version,
        note: note,
      ),
    ),
  );

  Future<List<Map<String, dynamic>>> announcements() => _guard(() async {
    final response = await _api.teacherListAnnouncements(
      null,
      null,
      null,
      null,
      100,
    );
    final items = response.value['items'];
    return items is List
        ? items
              .whereType<Map>()
              .map((item) => Map<String, dynamic>.from(item))
              .toList()
        : <Map<String, dynamic>>[];
  });

  Future<DoubtThreadListDto> doubts() =>
      _guard(() => _api.teacherListDoubts(null, 100));
  Future<RawJsonMap> interventions() =>
      _guard(() => _api.teacherListInterventions(null, 100));
  Future<RawJsonMap> media() =>
      _guard(() => _api.teacherListMedia(null, null, null, null, null, 100));
  Future<RawJsonMap> reportOverview() =>
      _guard(() => _api.teacherOverviewReport(null, null));

  Future<List<Map<String, dynamic>>> _allPages(
    Future<ListResponseDto> Function(String? cursor) load,
  ) async => _guard(() async {
    final items = <Map<String, dynamic>>[];
    final cursors = <String>{};
    String? cursor;
    do {
      final page = await load(cursor);
      items.addAll(page.items);
      cursor = page.nextCursor;
    } while (cursor != null && cursor.isNotEmpty && cursors.add(cursor));
    return items;
  });

  Future<T> _guard<T>(Future<T> Function() request) async {
    try {
      return await request();
    } on AppException {
      rethrow;
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    } on FormatException {
      throw const AppException('Teacher response বোঝা যায়নি।');
    }
  }
}
