typedef RoleJson = Map<String, dynamic>;

RoleJson _json(Object? value) => Map<String, dynamic>.from(value! as Map);
List<RoleJson> _items(Object? value) => (value as List? ?? const [])
    .whereType<Map>()
    .map((item) => Map<String, dynamic>.from(item))
    .toList(growable: false);
DateTime _utc(Object? value) => DateTime.parse(value! as String).toUtc();
DateTime? _nullableUtc(Object? value) =>
    value is String ? DateTime.tryParse(value)?.toUtc() : null;
double _decimal(Object? value) => (value! as num).toDouble();

class GuardianInvitationAcceptRequest {
  const GuardianInvitationAcceptRequest({
    this.token,
    this.invitationId,
    this.otp,
    this.password,
    this.displayName,
  });

  final String? token;
  final String? invitationId;
  final String? otp;
  final String? password;
  final String? displayName;

  RoleJson toJson() => {
    if (token != null) 'token': token,
    if (invitationId != null) 'invitation_id': invitationId,
    if (otp != null) 'otp': otp,
    if (password != null) 'password': password,
    if (displayName != null) 'display_name': displayName,
  };
}

class StudentGuardianDto {
  const StudentGuardianDto({
    required this.id,
    required this.organizationId,
    required this.studentUserId,
    required this.guardianUserId,
    required this.relationshipType,
    required this.status,
    required this.canRequestAttendanceCorrection,
    required this.linkedAt,
  });

  factory StudentGuardianDto.fromJson(RoleJson json) => StudentGuardianDto(
    id: json['id']! as String,
    organizationId: json['organization_id']! as String,
    studentUserId: json['student_user_id']! as String,
    guardianUserId: json['guardian_user_id']! as String,
    relationshipType: json['relationship_type']! as String,
    status: json['status']! as String,
    canRequestAttendanceCorrection:
        json['can_request_attendance_correction']! as bool,
    linkedAt: _utc(json['linked_at']),
  );

  final String id;
  final String organizationId;
  final String studentUserId;
  final String guardianUserId;
  final String relationshipType;
  final String status;
  final bool canRequestAttendanceCorrection;
  final DateTime linkedAt;
}

class GuardianDashboardDto {
  const GuardianDashboardDto({
    required this.linkedStudents,
    required this.recentAbsences,
    required this.dueAssignments,
    required this.upcomingExams,
    required this.unreadNotifications,
  });

  factory GuardianDashboardDto.fromJson(RoleJson json) => GuardianDashboardDto(
    linkedStudents: json['linked_students']! as int,
    recentAbsences: json['recent_absences']! as int,
    dueAssignments: json['due_assignments']! as int,
    upcomingExams: json['upcoming_exams']! as int,
    unreadNotifications: json['unread_notifications']! as int,
  );

  final int linkedStudents;
  final int recentAbsences;
  final int dueAssignments;
  final int upcomingExams;
  final int unreadNotifications;
}

class GuardianStudentDto {
  const GuardianStudentDto({
    required this.linkId,
    required this.studentUserId,
    required this.displayName,
    required this.relationshipType,
    required this.linkedAt,
    this.avatarAssetId,
  });

  factory GuardianStudentDto.fromJson(RoleJson json) => GuardianStudentDto(
    linkId: json['link_id']! as String,
    studentUserId: json['student_user_id']! as String,
    displayName: json['display_name']! as String,
    relationshipType: json['relationship_type']! as String,
    linkedAt: _utc(json['linked_at']),
    avatarAssetId: json['avatar_asset_id'] as String?,
  );

  final String linkId;
  final String studentUserId;
  final String displayName;
  final String relationshipType;
  final DateTime linkedAt;
  final String? avatarAssetId;
}

class GuardianStudentListDto {
  const GuardianStudentListDto({required this.items, this.nextCursor});

  factory GuardianStudentListDto.fromJson(RoleJson json) =>
      GuardianStudentListDto(
        items: _items(
          json['items'],
        ).map(GuardianStudentDto.fromJson).toList(growable: false),
        nextCursor: json['next_cursor'] as String?,
      );

  final List<GuardianStudentDto> items;
  final String? nextCursor;
}

class GuardianStudentSummaryDto {
  const GuardianStudentSummaryDto({
    required this.id,
    required this.displayName,
    required this.activeEnrollments,
    required this.averageProgress,
    required this.absences,
    required this.dueAssignments,
    required this.upcomingExams,
    this.avatarAssetId,
  });

  factory GuardianStudentSummaryDto.fromJson(RoleJson json) =>
      GuardianStudentSummaryDto(
        id: json['id']! as String,
        displayName: json['display_name']! as String,
        activeEnrollments: json['active_enrollments']! as int,
        averageProgress: _decimal(json['average_progress']),
        absences: json['absences']! as int,
        dueAssignments: json['due_assignments']! as int,
        upcomingExams: json['upcoming_exams']! as int,
        avatarAssetId: json['avatar_asset_id'] as String?,
      );

  final String id;
  final String displayName;
  final int activeEnrollments;
  final double averageProgress;
  final int absences;
  final int dueAssignments;
  final int upcomingExams;
  final String? avatarAssetId;
}

class GuardianAttendanceDto {
  const GuardianAttendanceDto({
    required this.id,
    required this.studentUserId,
    required this.status,
    required this.source,
    required this.markedAt,
    required this.classSessionStartsAt,
    required this.classTitle,
    this.reason,
  });

  factory GuardianAttendanceDto.fromJson(RoleJson json) =>
      GuardianAttendanceDto(
        id: json['id']! as String,
        studentUserId: json['student_user_id']! as String,
        status: json['status']! as String,
        source: json['source']! as String,
        markedAt: _utc(json['marked_at']),
        classSessionStartsAt: _utc(json['class_session_starts_at']),
        classTitle: json['class_title']! as String,
        reason: json['reason'] as String?,
      );

  final String id;
  final String studentUserId;
  final String status;
  final String source;
  final DateTime markedAt;
  final DateTime classSessionStartsAt;
  final String classTitle;
  final String? reason;
}

class GuardianAttendanceListDto {
  const GuardianAttendanceListDto({required this.items, this.nextCursor});
  factory GuardianAttendanceListDto.fromJson(RoleJson json) =>
      GuardianAttendanceListDto(
        items: _items(
          json['items'],
        ).map(GuardianAttendanceDto.fromJson).toList(growable: false),
        nextCursor: json['next_cursor'] as String?,
      );
  final List<GuardianAttendanceDto> items;
  final String? nextCursor;
}

class GuardianProgressDto {
  const GuardianProgressDto({
    required this.enrollmentId,
    required this.courseId,
    required this.courseTitle,
    required this.status,
    required this.completionPercentage,
    required this.updatedAt,
  });
  factory GuardianProgressDto.fromJson(RoleJson json) => GuardianProgressDto(
    enrollmentId: json['enrollment_id']! as String,
    courseId: json['course_id']! as String,
    courseTitle: json['course_title']! as String,
    status: json['status']! as String,
    completionPercentage: _decimal(json['completion_percentage']),
    updatedAt: _utc(json['updated_at']),
  );
  final String enrollmentId;
  final String courseId;
  final String courseTitle;
  final String status;
  final double completionPercentage;
  final DateTime updatedAt;
}

class GuardianProgressListDto {
  const GuardianProgressListDto({required this.items, this.nextCursor});
  factory GuardianProgressListDto.fromJson(RoleJson json) =>
      GuardianProgressListDto(
        items: _items(
          json['items'],
        ).map(GuardianProgressDto.fromJson).toList(growable: false),
        nextCursor: json['next_cursor'] as String?,
      );
  final List<GuardianProgressDto> items;
  final String? nextCursor;
}

class GuardianResultDto {
  const GuardianResultDto({
    required this.id,
    required this.courseTitle,
    required this.finalPercentage,
    required this.passingPercentage,
    required this.passed,
    required this.calculatedAt,
  });
  factory GuardianResultDto.fromJson(RoleJson json) => GuardianResultDto(
    id: json['id']! as String,
    courseTitle: json['course_title']! as String,
    finalPercentage: _decimal(json['final_percentage']),
    passingPercentage: _decimal(json['passing_percentage']),
    passed: json['passed']! as bool,
    calculatedAt: _utc(json['calculated_at']),
  );
  final String id;
  final String courseTitle;
  final double finalPercentage;
  final double passingPercentage;
  final bool passed;
  final DateTime calculatedAt;
}

class GuardianResultListDto {
  const GuardianResultListDto({required this.items, this.nextCursor});
  factory GuardianResultListDto.fromJson(RoleJson json) =>
      GuardianResultListDto(
        items: _items(
          json['items'],
        ).map(GuardianResultDto.fromJson).toList(growable: false),
        nextCursor: json['next_cursor'] as String?,
      );
  final List<GuardianResultDto> items;
  final String? nextCursor;
}

class GuardianLearningSummaryDto {
  const GuardianLearningSummaryDto({
    required this.weakTopics,
    required this.supportUpdates,
  });
  factory GuardianLearningSummaryDto.fromJson(RoleJson json) =>
      GuardianLearningSummaryDto(
        weakTopics: _items(json['weak_topics']),
        supportUpdates: _items(json['support_updates']),
      );
  final List<RoleJson> weakTopics;
  final List<RoleJson> supportUpdates;
}

class GuardianNoticeAcknowledgementDto {
  const GuardianNoticeAcknowledgementDto({
    required this.id,
    required this.notificationId,
    required this.studentUserId,
    required this.acknowledgedAt,
  });
  factory GuardianNoticeAcknowledgementDto.fromJson(RoleJson json) =>
      GuardianNoticeAcknowledgementDto(
        id: json['id']! as String,
        notificationId: json['notification_id']! as String,
        studentUserId: json['student_user_id']! as String,
        acknowledgedAt: _utc(json['acknowledged_at']),
      );
  final String id;
  final String notificationId;
  final String studentUserId;
  final DateTime acknowledgedAt;
}

class TeacherDashboardDto {
  const TeacherDashboardDto({
    required this.generatedAt,
    required this.profile,
    required this.counts,
    required this.todaysLiveClasses,
    required this.upcomingLiveClasses,
    required this.upcomingAssessments,
    required this.recentResults,
    required this.recentAnnouncements,
    required this.courseCompletion,
    required this.batchPerformance,
    required this.quickActionPermissions,
  });
  factory TeacherDashboardDto.fromJson(RoleJson json) => TeacherDashboardDto(
    generatedAt: _utc(json['generated_at']),
    profile: _json(json['profile']),
    counts: _json(json['counts']),
    todaysLiveClasses: _items(json['todays_live_classes']),
    upcomingLiveClasses: _items(json['upcoming_live_classes']),
    upcomingAssessments: _items(json['upcoming_quizzes_and_exams']),
    recentResults: _items(json['recent_results']),
    recentAnnouncements: _items(json['recent_announcements']),
    courseCompletion: _items(json['course_completion_summary']),
    batchPerformance: _items(json['batch_performance_summary']),
    quickActionPermissions: _json(json['quick_action_permissions']),
  );
  final DateTime generatedAt;
  final RoleJson profile;
  final RoleJson counts;
  final List<RoleJson> todaysLiveClasses;
  final List<RoleJson> upcomingLiveClasses;
  final List<RoleJson> upcomingAssessments;
  final List<RoleJson> recentResults;
  final List<RoleJson> recentAnnouncements;
  final List<RoleJson> courseCompletion;
  final List<RoleJson> batchPerformance;
  final RoleJson quickActionPermissions;
}

class TeacherClassSessionDto {
  const TeacherClassSessionDto({
    required this.id,
    required this.batchId,
    required this.courseId,
    required this.title,
    required this.deliveryMode,
    required this.startsAt,
    required this.endsAt,
    required this.status,
    required this.version,
    this.batchName,
    this.courseTitle,
  });
  factory TeacherClassSessionDto.fromJson(RoleJson json) =>
      TeacherClassSessionDto(
        id: json['id']! as String,
        batchId: json['batch_id']! as String,
        courseId: json['course_id']! as String,
        title: json['title']! as String,
        deliveryMode: json['delivery_mode']! as String,
        startsAt: _utc(json['starts_at']),
        endsAt: _utc(json['ends_at']),
        status: json['status']! as String,
        version: json['version']! as int,
        batchName: json['batch_name'] as String?,
        courseTitle: json['course_title'] as String?,
      );
  final String id;
  final String batchId;
  final String courseId;
  final String title;
  final String deliveryMode;
  final DateTime startsAt;
  final DateTime endsAt;
  final String status;
  final int version;
  final String? batchName;
  final String? courseTitle;
}

class TeacherClassSessionListDto {
  const TeacherClassSessionListDto({required this.items});
  factory TeacherClassSessionListDto.fromJson(RoleJson json) =>
      TeacherClassSessionListDto(
        items: _items(
          json['items'],
        ).map(TeacherClassSessionDto.fromJson).toList(growable: false),
      );
  final List<TeacherClassSessionDto> items;
}

class TeacherAvailabilityWriteRequest {
  const TeacherAvailabilityWriteRequest({
    required this.startsAt,
    required this.endsAt,
    required this.availabilityType,
    this.branchId,
  });
  final DateTime startsAt;
  final DateTime endsAt;
  final String availabilityType;
  final String? branchId;
  RoleJson toJson() => {
    if (branchId != null) 'branch_id': branchId,
    'starts_at': startsAt.toUtc().toIso8601String(),
    'ends_at': endsAt.toUtc().toIso8601String(),
    'availability_type': availabilityType,
  };
}

class TeacherAvailabilityDto {
  const TeacherAvailabilityDto({
    required this.id,
    required this.startsAt,
    required this.endsAt,
    required this.availabilityType,
  });
  factory TeacherAvailabilityDto.fromJson(RoleJson json) =>
      TeacherAvailabilityDto(
        id: json['id']! as String,
        startsAt: _utc(json['starts_at']),
        endsAt: _utc(json['ends_at']),
        availabilityType: json['availability_type']! as String,
      );
  final String id;
  final DateTime startsAt;
  final DateTime endsAt;
  final String availabilityType;
}

class TeacherAvailabilityListDto {
  const TeacherAvailabilityListDto({required this.items, this.nextCursor});
  factory TeacherAvailabilityListDto.fromJson(RoleJson json) =>
      TeacherAvailabilityListDto(
        items: _items(
          json['items'],
        ).map(TeacherAvailabilityDto.fromJson).toList(growable: false),
        nextCursor: json['next_cursor'] as String?,
      );
  final List<TeacherAvailabilityDto> items;
  final String? nextCursor;
}

class AttendanceSessionCreateRequest {
  const AttendanceSessionCreateRequest({required this.classSessionId});
  final String classSessionId;
  RoleJson toJson() => {'class_session_id': classSessionId};
}

class TeacherAttendanceSessionDto {
  const TeacherAttendanceSessionDto({
    required this.id,
    required this.classSessionId,
    required this.status,
    required this.codeGeneration,
    required this.version,
    this.codeExpiresAt,
    this.finalizedAt,
  });
  factory TeacherAttendanceSessionDto.fromJson(RoleJson json) =>
      TeacherAttendanceSessionDto(
        id: json['id']! as String,
        classSessionId: json['class_session_id']! as String,
        status: json['status']! as String,
        codeGeneration: json['code_generation']! as int,
        version: json['version']! as int,
        codeExpiresAt: _nullableUtc(json['code_expires_at']),
        finalizedAt: _nullableUtc(json['finalized_at']),
      );
  final String id;
  final String classSessionId;
  final String status;
  final int codeGeneration;
  final int version;
  final DateTime? codeExpiresAt;
  final DateTime? finalizedAt;
}

class AttendanceOpenResponseDto {
  const AttendanceOpenResponseDto({
    required this.session,
    required this.code,
    required this.expiresAt,
  });
  factory AttendanceOpenResponseDto.fromJson(RoleJson json) =>
      AttendanceOpenResponseDto(
        session: TeacherAttendanceSessionDto.fromJson(_json(json['session'])),
        code: json['code']! as String,
        expiresAt: _utc(json['expires_at']),
      );
  final TeacherAttendanceSessionDto session;
  final String code;
  final DateTime expiresAt;
}

class AttendanceRosterItemDto {
  const AttendanceRosterItemDto({
    required this.studentUserId,
    required this.displayName,
    required this.email,
    this.attendanceRecordId,
    this.attendanceStatus,
    this.markedAt,
  });
  factory AttendanceRosterItemDto.fromJson(RoleJson json) =>
      AttendanceRosterItemDto(
        studentUserId: json['student_user_id']! as String,
        displayName: json['display_name']! as String,
        email: json['email']! as String,
        attendanceRecordId: json['attendance_record_id'] as String?,
        attendanceStatus: json['attendance_status'] as String?,
        markedAt: _nullableUtc(json['marked_at']),
      );
  final String studentUserId;
  final String displayName;
  final String email;
  final String? attendanceRecordId;
  final String? attendanceStatus;
  final DateTime? markedAt;
}

class AttendanceRosterDto {
  const AttendanceRosterDto({required this.items});
  factory AttendanceRosterDto.fromJson(RoleJson json) => AttendanceRosterDto(
    items: _items(
      json['items'],
    ).map(AttendanceRosterItemDto.fromJson).toList(growable: false),
  );
  final List<AttendanceRosterItemDto> items;
}

class AttendanceRecordWriteRequest {
  const AttendanceRecordWriteRequest({
    required this.studentUserId,
    required this.status,
    this.reason,
  });
  final String studentUserId;
  final String status;
  final String? reason;
  RoleJson toJson() => {
    'student_user_id': studentUserId,
    'status': status,
    if (reason != null && reason!.isNotEmpty) 'reason': reason,
  };
}

class AttendanceRecordBatchWriteRequest {
  const AttendanceRecordBatchWriteRequest({required this.records});
  final List<AttendanceRecordWriteRequest> records;
  RoleJson toJson() => {
    'records': records.map((record) => record.toJson()).toList(),
  };
}

class SyllabusCoverageWriteRequest {
  const SyllabusCoverageWriteRequest({
    required this.status,
    required this.completionPercentage,
    required this.version,
    this.note,
  });
  final String status;
  final double completionPercentage;
  final int version;
  final String? note;
  RoleJson toJson() => {
    'status': status,
    'completion_percentage': completionPercentage,
    'version': version,
    if (note != null && note!.isNotEmpty) 'note': note,
  };
}

class SyllabusCoverageDto {
  const SyllabusCoverageDto({
    required this.id,
    required this.syllabusUnitId,
    required this.status,
    required this.completionPercentage,
    required this.version,
    required this.updatedAt,
    this.unitTitle,
    this.position,
  });
  factory SyllabusCoverageDto.fromJson(RoleJson json) => SyllabusCoverageDto(
    id: json['id']! as String,
    syllabusUnitId: json['syllabus_unit_id']! as String,
    status: json['status']! as String,
    completionPercentage: _decimal(json['completion_percentage']),
    version: json['version']! as int,
    updatedAt: _utc(json['updated_at']),
    unitTitle: json['unit_title'] as String?,
    position: json['position'] as int?,
  );
  final String id;
  final String syllabusUnitId;
  final String status;
  final double completionPercentage;
  final int version;
  final DateTime updatedAt;
  final String? unitTitle;
  final int? position;
}

class SyllabusCoverageListDto {
  const SyllabusCoverageListDto({required this.items});
  factory SyllabusCoverageListDto.fromJson(RoleJson json) =>
      SyllabusCoverageListDto(
        items: _items(
          json['items'],
        ).map(SyllabusCoverageDto.fromJson).toList(growable: false),
      );
  final List<SyllabusCoverageDto> items;
}
