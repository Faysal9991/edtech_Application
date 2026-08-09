import 'package:freezed_annotation/freezed_annotation.dart';

part 'expanded_api_dto.freezed.dart';
part 'expanded_api_dto.g.dart';

@freezed
abstract class AcademicItemDto with _$AcademicItemDto {
  const factory AcademicItemDto({
    required String id,
    @JsonKey(name: 'organization_id') String? organizationId,
    @JsonKey(name: 'parent_id') String? parentId,
    required String slug,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'display_name_bn') String? displayNameBn,
    required String status,
    @Default(0) int position,
    @JsonKey(name: 'starts_on') String? startsOn,
    @JsonKey(name: 'ends_on') String? endsOn,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _AcademicItemDto;

  factory AcademicItemDto.fromJson(Map<String, dynamic> json) =>
      _$AcademicItemDtoFromJson(json);
}

@freezed
abstract class AcademicPreferencesWriteRequest
    with _$AcademicPreferencesWriteRequest {
  const factory AcademicPreferencesWriteRequest({
    @JsonKey(name: 'program_id') String? programId,
    @JsonKey(name: 'level_id') String? levelId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'board_id') String? boardId,
    @JsonKey(name: 'group_id') String? groupId,
    @JsonKey(name: 'subject_ids') required List<String> subjectIds,
    @JsonKey(name: 'exam_target_ids') required List<String> examTargetIds,
    @JsonKey(name: 'preferred_language') required String preferredLanguage,
  }) = _AcademicPreferencesWriteRequest;

  factory AcademicPreferencesWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$AcademicPreferencesWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class PlaybackTrackDto with _$PlaybackTrackDto {
  const factory PlaybackTrackDto({
    required String id,
    required String type,
    required String language,
    required String label,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'content_type') required String contentType,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    required String url,
  }) = _PlaybackTrackDto;

  factory PlaybackTrackDto.fromJson(Map<String, dynamic> json) =>
      _$PlaybackTrackDtoFromJson(json);
}

@freezed
abstract class PlaybackMetadataDto with _$PlaybackMetadataDto {
  const factory PlaybackMetadataDto({
    @JsonKey(name: 'media_asset_id') required String mediaAssetId,
    @JsonKey(name: 'content_type') required String contentType,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    int? width,
    int? height,
    required String url,
    @Default(<PlaybackTrackDto>[]) List<PlaybackTrackDto> tracks,
  }) = _PlaybackMetadataDto;

  factory PlaybackMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$PlaybackMetadataDtoFromJson(json);
}

@freezed
abstract class MediaProcessingStatusDto with _$MediaProcessingStatusDto {
  const factory MediaProcessingStatusDto({
    required String id,
    required String status,
    @JsonKey(name: 'processing_progress') required int processingProgress,
    @JsonKey(name: 'processing_attempts') required int processingAttempts,
  }) = _MediaProcessingStatusDto;

  factory MediaProcessingStatusDto.fromJson(Map<String, dynamic> json) =>
      _$MediaProcessingStatusDtoFromJson(json);
}

@freezed
abstract class ContinueLearningDto with _$ContinueLearningDto {
  const factory ContinueLearningDto({
    @JsonKey(name: 'enrollment_id') required String enrollmentId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'course_slug') required String courseSlug,
    @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
    @JsonKey(name: 'completion_percentage')
    required double completionPercentage,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'position_seconds') required int positionSeconds,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ContinueLearningDto;

  factory ContinueLearningDto.fromJson(Map<String, dynamic> json) =>
      _$ContinueLearningDtoFromJson(json);
}

@freezed
abstract class DashboardLiveClassDto with _$DashboardLiveClassDto {
  const factory DashboardLiveClassDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    required String title,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'scheduled_start_at') required DateTime scheduledStartAt,
    @JsonKey(name: 'scheduled_end_at') required DateTime scheduledEndAt,
    required String status,
  }) = _DashboardLiveClassDto;

  factory DashboardLiveClassDto.fromJson(Map<String, dynamic> json) =>
      _$DashboardLiveClassDtoFromJson(json);
}

@freezed
abstract class DashboardQuizDto with _$DashboardQuizDto {
  const factory DashboardQuizDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    required String title,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'available_until') DateTime? availableUntil,
  }) = _DashboardQuizDto;

  factory DashboardQuizDto.fromJson(Map<String, dynamic> json) =>
      _$DashboardQuizDtoFromJson(json);
}

@freezed
abstract class DashboardAssignmentDto with _$DashboardAssignmentDto {
  const factory DashboardAssignmentDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    required String title,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'due_at') required DateTime dueAt,
  }) = _DashboardAssignmentDto;

  factory DashboardAssignmentDto.fromJson(Map<String, dynamic> json) =>
      _$DashboardAssignmentDtoFromJson(json);
}

@freezed
abstract class DashboardResultDto with _$DashboardResultDto {
  const factory DashboardResultDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'final_percentage') required double finalPercentage,
    required bool passed,
    @JsonKey(name: 'calculated_at') required DateTime calculatedAt,
  }) = _DashboardResultDto;

  factory DashboardResultDto.fromJson(Map<String, dynamic> json) =>
      _$DashboardResultDtoFromJson(json);
}

@freezed
abstract class RecommendedCourseDto with _$RecommendedCourseDto {
  const factory RecommendedCourseDto({
    required String id,
    required String title,
    required String slug,
    @Default('') String description,
    @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
    @Default('bn') String language,
    @JsonKey(name: 'is_free') @Default(false) bool isFree,
    @JsonKey(name: 'price_minor') @Default(0) int priceMinor,
    @Default('BDT') String currency,
    @JsonKey(name: 'published_at') DateTime? publishedAt,
    @Default('') String reason,
    @JsonKey(name: 'match_score') @Default(0) int matchScore,
    @JsonKey(name: 'matched_on') @Default(<String>[]) List<String> matchedOn,
  }) = _RecommendedCourseDto;

  factory RecommendedCourseDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendedCourseDtoFromJson(json);
}

@freezed
abstract class StudentDashboardDto with _$StudentDashboardDto {
  const factory StudentDashboardDto({
    @JsonKey(name: 'generated_at') required DateTime generatedAt,
    @JsonKey(name: 'continue_learning')
    @Default(<ContinueLearningDto>[])
    List<ContinueLearningDto> continueLearning,
    @JsonKey(name: 'upcoming_live_classes')
    @Default(<DashboardLiveClassDto>[])
    List<DashboardLiveClassDto> upcomingLiveClasses,
    @JsonKey(name: 'due_assignments')
    @Default(<DashboardAssignmentDto>[])
    List<DashboardAssignmentDto> dueAssignments,
    @JsonKey(name: 'available_quizzes')
    @Default(<DashboardQuizDto>[])
    List<DashboardQuizDto> availableQuizzes,
    @JsonKey(name: 'recent_results')
    @Default(<DashboardResultDto>[])
    List<DashboardResultDto> recentResults,
    @JsonKey(name: 'recommended_courses')
    @Default(<RecommendedCourseDto>[])
    List<RecommendedCourseDto> recommendedCourses,
    @JsonKey(name: 'unread_notification_count')
    @Default(0)
    int unreadNotificationCount,
  }) = _StudentDashboardDto;

  factory StudentDashboardDto.fromJson(Map<String, dynamic> json) =>
      _$StudentDashboardDtoFromJson(json);
}

@freezed
abstract class StudentLiveClassDto with _$StudentLiveClassDto {
  const factory StudentLiveClassDto({
    required String id,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    required String title,
    @Default('') String description,
    required String status,
    @JsonKey(name: 'scheduled_start_at') required DateTime scheduledStartAt,
    @JsonKey(name: 'scheduled_end_at') required DateTime scheduledEndAt,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'course_title') required String courseTitle,
  }) = _StudentLiveClassDto;

  factory StudentLiveClassDto.fromJson(Map<String, dynamic> json) =>
      _$StudentLiveClassDtoFromJson(json);
}

@freezed
abstract class StudentQuizDto with _$StudentQuizDto {
  const factory StudentQuizDto({
    required String id,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    @JsonKey(name: 'lesson_id') String? lessonId,
    required String title,
    @Default('') String instructions,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    @JsonKey(name: 'attempt_limit') required int attemptLimit,
    @JsonKey(name: 'attempts_used') @Default(0) int attemptsUsed,
    @JsonKey(name: 'pass_percentage') required double passPercentage,
    @JsonKey(name: 'available_from') DateTime? availableFrom,
    @JsonKey(name: 'available_until') DateTime? availableUntil,
    @JsonKey(name: 'results_visibility') required String resultsVisibility,
    @JsonKey(name: 'is_required') @Default(false) bool isRequired,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StudentQuizDto;

  factory StudentQuizDto.fromJson(Map<String, dynamic> json) =>
      _$StudentQuizDtoFromJson(json);
}

@freezed
abstract class StudentAssignmentDto with _$StudentAssignmentDto {
  const factory StudentAssignmentDto({
    required String id,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    @JsonKey(name: 'lesson_id') String? lessonId,
    required String title,
    @Default('') String instructions,
    @JsonKey(name: 'due_at') DateTime? dueAt,
    @JsonKey(name: 'maximum_score') required double maximumScore,
    @JsonKey(name: 'passing_score') required double passingScore,
    @JsonKey(name: 'allowed_file_types')
    @Default(<String>[])
    List<String> allowedFileTypes,
    @JsonKey(name: 'maximum_submissions') @Default(1) int maximumSubmissions,
    @JsonKey(name: 'is_required') @Default(false) bool isRequired,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'submission_id') String? submissionId,
    @JsonKey(name: 'submission_status') required String submissionStatus,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StudentAssignmentDto;

  factory StudentAssignmentDto.fromJson(Map<String, dynamic> json) =>
      _$StudentAssignmentDtoFromJson(json);
}

@freezed
abstract class StudentSubmissionDto with _$StudentSubmissionDto {
  const factory StudentSubmissionDto({
    required String id,
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'enrollment_id') required String enrollmentId,
    @JsonKey(name: 'submission_number') required int submissionNumber,
    required String status,
    @JsonKey(name: 'text_content') @Default('') String textContent,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'assignment_title') required String assignmentTitle,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    @JsonKey(name: 'course_title') required String courseTitle,
    double? points,
    double? percentage,
    String? feedback,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StudentSubmissionDto;

  factory StudentSubmissionDto.fromJson(Map<String, dynamic> json) =>
      _$StudentSubmissionDtoFromJson(json);
}

@freezed
abstract class StudentCalendarItemDto with _$StudentCalendarItemDto {
  const factory StudentCalendarItemDto({
    required String type,
    @JsonKey(name: 'entity_id') required String entityId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    required String title,
    @JsonKey(name: 'starts_at') required DateTime startsAt,
    @JsonKey(name: 'ends_at') DateTime? endsAt,
    required String status,
  }) = _StudentCalendarItemDto;

  factory StudentCalendarItemDto.fromJson(Map<String, dynamic> json) =>
      _$StudentCalendarItemDtoFromJson(json);
}

@freezed
abstract class StudentCalendarDto with _$StudentCalendarDto {
  const factory StudentCalendarDto({
    @Default(<StudentCalendarItemDto>[]) List<StudentCalendarItemDto> items,
    @JsonKey(name: 'from') required DateTime fromDate,
    @JsonKey(name: 'to') required DateTime toDate,
  }) = _StudentCalendarDto;

  factory StudentCalendarDto.fromJson(Map<String, dynamic> json) =>
      _$StudentCalendarDtoFromJson(json);
}

@freezed
abstract class PublicOptionDto with _$PublicOptionDto {
  const factory PublicOptionDto({
    required String id,
    required String text,
    bool? correct,
  }) = _PublicOptionDto;

  factory PublicOptionDto.fromJson(Map<String, dynamic> json) =>
      _$PublicOptionDtoFromJson(json);
}

@freezed
abstract class PublicQuestionDto with _$PublicQuestionDto {
  const factory PublicQuestionDto({
    required String id,
    @JsonKey(name: 'section_id') String? sectionId,
    required String type,
    String? difficulty,
    required String prompt,
    required double points,
    @Default(<PublicOptionDto>[]) List<PublicOptionDto> options,
  }) = _PublicQuestionDto;

  factory PublicQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$PublicQuestionDtoFromJson(json);
}

@freezed
abstract class ExamDto with _$ExamDto {
  const factory ExamDto({
    required String id,
    @JsonKey(name: 'organization_id') String? organizationId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'batch_id') String? batchId,
    @JsonKey(name: 'course_title') String? courseTitle,
    required String title,
    @Default('') String instructions,
    required String status,
    @JsonKey(name: 'attempt_limit') required int attemptLimit,
    @JsonKey(name: 'attempts_used') @Default(0) int attemptsUsed,
    @JsonKey(name: 'pass_percentage') required double passPercentage,
    @JsonKey(name: 'assessment_mode') required String assessmentMode,
    @JsonKey(name: 'negative_mark_per_wrong')
    required double negativeMarkPerWrong,
    @JsonKey(name: 'minimum_score') required double minimumScore,
    @JsonKey(name: 'duration_seconds') required int durationSeconds,
    @JsonKey(name: 'starts_at') required DateTime startsAt,
    @JsonKey(name: 'ends_at') required DateTime endsAt,
    @JsonKey(name: 'auto_submit') required bool autoSubmit,
    @JsonKey(name: 'rank_enabled') required bool rankEnabled,
    @JsonKey(name: 'answer_review_at') DateTime? answerReviewAt,
    @JsonKey(name: 'question_selection_strategy') String? selectionStrategy,
    int? version,
  }) = _ExamDto;

  factory ExamDto.fromJson(Map<String, dynamic> json) =>
      _$ExamDtoFromJson(json);
}

@freezed
abstract class ExamAttemptDto with _$ExamAttemptDto {
  const factory ExamAttemptDto({
    required String id,
    @JsonKey(name: 'quiz_id') required String examId,
    @JsonKey(name: 'attempt_number') required int attemptNumber,
    required String status,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    @JsonKey(name: 'submit_before') DateTime? submitBefore,
    @Default(<PublicQuestionDto>[]) List<PublicQuestionDto> questions,
    double? percentage,
    bool? passed,
  }) = _ExamAttemptDto;

  factory ExamAttemptDto.fromJson(Map<String, dynamic> json) =>
      _$ExamAttemptDtoFromJson(json);
}

@freezed
abstract class LeaderboardEntryDto with _$LeaderboardEntryDto {
  const factory LeaderboardEntryDto({
    required int position,
    @JsonKey(name: 'attempt_id') required String attemptId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'score_points') required double scorePoints,
    required double percentage,
    @JsonKey(name: 'completion_duration_seconds')
    required int completionDurationSeconds,
    @JsonKey(name: 'submitted_at') required DateTime submittedAt,
  }) = _LeaderboardEntryDto;

  factory LeaderboardEntryDto.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardEntryDtoFromJson(json);
}

@freezed
abstract class ExamLeaderboardDto with _$ExamLeaderboardDto {
  const factory ExamLeaderboardDto({
    required String scope,
    @Default(<String>[]) List<String> order,
    @Default(<LeaderboardEntryDto>[]) List<LeaderboardEntryDto> items,
  }) = _ExamLeaderboardDto;

  factory ExamLeaderboardDto.fromJson(Map<String, dynamic> json) =>
      _$ExamLeaderboardDtoFromJson(json);
}
