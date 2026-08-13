import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';

class GuardianRepository {
  const GuardianRepository({required ApiService api}) : _api = api;

  final ApiService _api;

  Future<StudentGuardianDto> acceptInvitation({
    String? token,
    String? invitationId,
    String? otp,
    String? password,
    String? displayName,
  }) => _guard(
    () => _api.acceptGuardianInvitation(
      GuardianInvitationAcceptRequest(
        token: token,
        invitationId: invitationId,
        otp: otp,
        password: password,
        displayName: displayName,
      ),
    ),
  );

  Future<GuardianDashboardDto> dashboard() => _guard(_api.guardianDashboard);

  Future<List<GuardianStudentDto>> students() => _guard(() async {
    final result = <GuardianStudentDto>[];
    final cursors = <String>{};
    String? cursor;
    do {
      final page = await _api.guardianListStudents(cursor, 100);
      result.addAll(page.items);
      cursor = page.nextCursor;
    } while (cursor != null && cursor.isNotEmpty && cursors.add(cursor));
    return result;
  });

  Future<GuardianStudentSummaryDto> student(String id) =>
      _guard(() => _api.guardianGetStudent(id));

  Future<GuardianAttendanceListDto> attendance(String studentId) =>
      _guard(() => _api.guardianGetStudentAttendance(studentId, null, 100));

  Future<GuardianProgressListDto> progress(String studentId) =>
      _guard(() => _api.guardianGetStudentProgress(studentId, null, 100));

  Future<GuardianResultListDto> results(String studentId) =>
      _guard(() => _api.guardianGetStudentResults(studentId, null, 100));

  Future<StudentCalendarDto> calendar(
    String studentId, {
    DateTime? from,
    DateTime? to,
  }) => _guard(() => _api.guardianGetStudentCalendar(studentId, from, to, 100));

  Future<GuardianLearningSummaryDto> learningSummary(String studentId) =>
      _guard(() => _api.guardianStudentLearningSummary(studentId));

  Future<GuardianNoticeAcknowledgementDto> acknowledgeNotice(String id) =>
      _guard(() => _api.guardianAcknowledgeNotice(id));

  Future<T> _guard<T>(Future<T> Function() request) async {
    try {
      return await request();
    } on AppException {
      rethrow;
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    } on FormatException {
      throw const AppException('Guardian response বোঝা যায়নি।');
    }
  }
}
