import 'package:freezed_annotation/freezed_annotation.dart';

part 'phase_one_dto.freezed.dart';
part 'phase_one_dto.g.dart';

@freezed
abstract class UserStatusWriteRequest with _$UserStatusWriteRequest {
  const factory UserStatusWriteRequest({required String status}) =
      _UserStatusWriteRequest;

  factory UserStatusWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$UserStatusWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class RoleWriteRequest with _$RoleWriteRequest {
  const factory RoleWriteRequest({required List<String> roles}) =
      _RoleWriteRequest;

  factory RoleWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$RoleWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ProfileWriteRequest with _$ProfileWriteRequest {
  const factory ProfileWriteRequest({
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    String? timezone,
    String? locale,
    String? biography,
    List<String>? expertise,
  }) = _ProfileWriteRequest;

  factory ProfileWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class CourseDto with _$CourseDto {
  const factory CourseDto({
    required String id,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
    required String title,
    required String slug,
    @Default('') String description,
    @Default('bn') String language,
    @Default('all') String level,
    @Default('published') String status,
    @JsonKey(name: 'is_free') @Default(false) bool isFree,
    @JsonKey(name: 'price_minor') @Default(0) int priceMinor,
    @Default('BDT') String currency,
    @Default(0) int version,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _CourseDto;

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);
}

@freezed
abstract class CourseWriteRequest with _$CourseWriteRequest {
  const factory CourseWriteRequest({
    required String title,
    required String slug,
    required String description,
    required String language,
    required String level,
    @JsonKey(name: 'is_free') required bool isFree,
    @JsonKey(name: 'price_minor') required int priceMinor,
    required String currency,
    required int version,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
  }) = _CourseWriteRequest;

  factory CourseWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$CourseWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ModuleWriteRequest with _$ModuleWriteRequest {
  const factory ModuleWriteRequest({
    required String title,
    required int position,
    String? description,
  }) = _ModuleWriteRequest;

  factory ModuleWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ModuleWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class LessonWriteRequest with _$LessonWriteRequest {
  const factory LessonWriteRequest({
    required String title,
    @JsonKey(name: 'lesson_type') required String lessonType,
    required int position,
    @JsonKey(name: 'is_preview') required bool isPreview,
    @JsonKey(name: 'is_required') required bool isRequired,
    @JsonKey(name: 'is_published') required bool isPublished,
    String? description,
    @JsonKey(name: 'media_asset_id') String? mediaAssetId,
    String? body,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
  }) = _LessonWriteRequest;

  factory LessonWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$LessonWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class CourseDetailDto with _$CourseDetailDto {
  const factory CourseDetailDto({
    required CourseDto course,
    @Default(<CourseModuleDto>[]) List<CourseModuleDto> modules,
  }) = _CourseDetailDto;

  factory CourseDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailDtoFromJson(json);
}

@freezed
abstract class CourseModuleDto with _$CourseModuleDto {
  const factory CourseModuleDto({
    required String id,
    required String title,
    @Default('') String description,
    @Default(0) int position,
    @Default(<LessonDto>[]) List<LessonDto> lessons,
  }) = _CourseModuleDto;

  factory CourseModuleDto.fromJson(Map<String, dynamic> json) =>
      _$CourseModuleDtoFromJson(json);
}

@freezed
abstract class LessonDto with _$LessonDto {
  const factory LessonDto({
    required String id,
    required String title,
    @Default('') String description,
    @Default('text') String type,
    @JsonKey(name: 'lesson_type') String? lessonType,
    @Default(0) int position,
    @JsonKey(name: 'is_preview') @Default(false) bool isPreview,
    @JsonKey(name: 'is_required') @Default(false) bool isRequired,
    @JsonKey(name: 'is_published') @Default(true) bool isPublished,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    @JsonKey(name: 'media_asset_id') String? mediaAssetId,
    String? body,
  }) = _LessonDto;

  factory LessonDto.fromJson(Map<String, dynamic> json) =>
      _$LessonDtoFromJson(json);
}

@freezed
abstract class EnrollmentDto with _$EnrollmentDto {
  const factory EnrollmentDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'student_id') required String studentId,
    required String status,
    @JsonKey(name: 'completion_percentage')
    @Default(0)
    double completionPercentage,
  }) = _EnrollmentDto;

  factory EnrollmentDto.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentDtoFromJson(json);
}

@freezed
abstract class ProgressWriteRequest with _$ProgressWriteRequest {
  const factory ProgressWriteRequest({
    @JsonKey(name: 'position_seconds') required int positionSeconds,
    @JsonKey(name: 'watched_seconds_delta') required int watchedSecondsDelta,
    @JsonKey(name: 'manual_complete') @Default(false) bool manualComplete,
  }) = _ProgressWriteRequest;

  factory ProgressWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ProgressWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ProgressDto with _$ProgressDto {
  const factory ProgressDto({
    @JsonKey(name: 'lesson_id') required String lessonId,
    required String state,
    @JsonKey(name: 'position_seconds') required int positionSeconds,
    @JsonKey(name: 'total_watched_seconds') required int totalWatchedSeconds,
  }) = _ProgressDto;

  factory ProgressDto.fromJson(Map<String, dynamic> json) =>
      _$ProgressDtoFromJson(json);
}

@freezed
abstract class QuizOptionDto with _$QuizOptionDto {
  const factory QuizOptionDto({
    required String id,
    required String text,
    bool? correct,
  }) = _QuizOptionDto;

  factory QuizOptionDto.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionDtoFromJson(json);
}

@freezed
abstract class OptionWriteRequest with _$OptionWriteRequest {
  const factory OptionWriteRequest({
    required String text,
    @JsonKey(name: 'is_correct') required bool isCorrect,
    required int position,
  }) = _OptionWriteRequest;

  factory OptionWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$OptionWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class QuestionWriteRequest with _$QuestionWriteRequest {
  const factory QuestionWriteRequest({
    @JsonKey(name: 'question_type') required String questionType,
    required String prompt,
    required double points,
    required int position,
    required List<OptionWriteRequest> options,
  }) = _QuestionWriteRequest;

  factory QuestionWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$QuestionWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class QuizWriteRequest with _$QuizWriteRequest {
  const factory QuizWriteRequest({
    @JsonKey(name: 'course_id') required String courseId,
    required String title,
    @JsonKey(name: 'attempt_limit') required int attemptLimit,
    @JsonKey(name: 'pass_percentage') required double passPercentage,
    @JsonKey(name: 'lesson_id') String? lessonId,
    String? instructions,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    @JsonKey(name: 'randomize_questions') bool? randomizeQuestions,
    @JsonKey(name: 'randomize_options') bool? randomizeOptions,
    @JsonKey(name: 'available_from') DateTime? availableFrom,
    @JsonKey(name: 'available_until') DateTime? availableUntil,
    @JsonKey(name: 'results_visibility') String? resultsVisibility,
    @JsonKey(name: 'is_required') bool? isRequired,
  }) = _QuizWriteRequest;

  factory QuizWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class QuizQuestionDto with _$QuizQuestionDto {
  const factory QuizQuestionDto({
    required String id,
    required String type,
    required String prompt,
    @Default(1) double points,
    @Default(<QuizOptionDto>[]) List<QuizOptionDto> options,
  }) = _QuizQuestionDto;

  factory QuizQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionDtoFromJson(json);
}

@freezed
abstract class QuizAttemptDto with _$QuizAttemptDto {
  const factory QuizAttemptDto({
    required String id,
    @JsonKey(name: 'quiz_id') required String quizId,
    @JsonKey(name: 'attempt_number') required int attemptNumber,
    required String status,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    @JsonKey(name: 'submit_before') DateTime? submitBefore,
    @Default(<QuizQuestionDto>[]) List<QuizQuestionDto> questions,
    double? percentage,
    bool? passed,
  }) = _QuizAttemptDto;

  factory QuizAttemptDto.fromJson(Map<String, dynamic> json) =>
      _$QuizAttemptDtoFromJson(json);
}

@freezed
abstract class AnswerWriteRequest with _$AnswerWriteRequest {
  const factory AnswerWriteRequest({
    @JsonKey(name: 'question_id') required String questionId,
    @JsonKey(name: 'selected_option_ids') List<String>? selectedOptionIds,
    @JsonKey(name: 'text_answer') String? textAnswer,
  }) = _AnswerWriteRequest;

  factory AnswerWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$AnswerWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class SubmissionWriteRequest with _$SubmissionWriteRequest {
  const factory SubmissionWriteRequest({
    @JsonKey(name: 'text_content') String? textContent,
    @JsonKey(name: 'media_asset_ids') List<String>? mediaAssetIds,
  }) = _SubmissionWriteRequest;

  factory SubmissionWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmissionWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class AssignmentWriteRequest with _$AssignmentWriteRequest {
  const factory AssignmentWriteRequest({
    @JsonKey(name: 'course_id') required String courseId,
    required String title,
    @JsonKey(name: 'maximum_score') required double maximumScore,
    @JsonKey(name: 'passing_score') required double passingScore,
    @JsonKey(name: 'maximum_submissions') required int maximumSubmissions,
    @JsonKey(name: 'lesson_id') String? lessonId,
    String? instructions,
    @JsonKey(name: 'attachment_asset_ids') List<String>? attachmentAssetIds,
    @JsonKey(name: 'due_at') DateTime? dueAt,
    @JsonKey(name: 'allowed_file_types') List<String>? allowedFileTypes,
    @JsonKey(name: 'is_required') bool? isRequired,
  }) = _AssignmentWriteRequest;

  factory AssignmentWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignmentWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class GradeWriteRequest with _$GradeWriteRequest {
  const factory GradeWriteRequest({
    required double points,
    String? feedback,
    @JsonKey(name: 'question_id') String? questionId,
  }) = _GradeWriteRequest;

  factory GradeWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$GradeWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class LiveSessionWriteRequest with _$LiveSessionWriteRequest {
  const factory LiveSessionWriteRequest({
    @JsonKey(name: 'course_id') required String courseId,
    required String title,
    @JsonKey(name: 'scheduled_start_at') required DateTime scheduledStartAt,
    @JsonKey(name: 'scheduled_end_at') required DateTime scheduledEndAt,
    String? description,
  }) = _LiveSessionWriteRequest;

  factory LiveSessionWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$LiveSessionWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class UploadIntentWriteRequest with _$UploadIntentWriteRequest {
  const factory UploadIntentWriteRequest({
    required String kind,
    required String filename,
    @JsonKey(name: 'content_type') required String contentType,
    @JsonKey(name: 'size_bytes') required int sizeBytes,
    @JsonKey(name: 'checksum_sha256') String? checksumSha256,
  }) = _UploadIntentWriteRequest;

  factory UploadIntentWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadIntentWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class UploadIntentDto with _$UploadIntentDto {
  const factory UploadIntentDto({
    required String id,
    @JsonKey(name: 'media_asset_id') required String mediaAssetId,
    @JsonKey(name: 'upload_url') required String uploadUrl,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
  }) = _UploadIntentDto;

  factory UploadIntentDto.fromJson(Map<String, dynamic> json) =>
      _$UploadIntentDtoFromJson(json);
}

@freezed
abstract class LiveClassTokenResponse with _$LiveClassTokenResponse {
  const factory LiveClassTokenResponse({
    required String token,
    required String url,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
  }) = _LiveClassTokenResponse;

  factory LiveClassTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$LiveClassTokenResponseFromJson(json);
}

@freezed
abstract class OrderWriteRequest with _$OrderWriteRequest {
  const factory OrderWriteRequest({
    @JsonKey(name: 'course_id') required String courseId,
  }) = _OrderWriteRequest;

  factory OrderWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class OrderDto with _$OrderDto {
  const factory OrderDto({
    required String id,
    required String status,
    @JsonKey(name: 'amount_minor') required int amountMinor,
    required String currency,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}

@freezed
abstract class PaymentIntentDto with _$PaymentIntentDto {
  const factory PaymentIntentDto({
    @JsonKey(name: 'client_secret') required String clientSecret,
  }) = _PaymentIntentDto;

  factory PaymentIntentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentDtoFromJson(json);
}

@freezed
abstract class DeviceTokenWriteRequest with _$DeviceTokenWriteRequest {
  const factory DeviceTokenWriteRequest({
    required String token,
    required String platform,
  }) = _DeviceTokenWriteRequest;

  factory DeviceTokenWriteRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenWriteRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ResultDto with _$ResultDto {
  const factory ResultDto({
    @JsonKey(name: 'enrollment_id') required String enrollmentId,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'course_title') required String courseTitle,
    required String status,
    @JsonKey(name: 'completion_percentage') @Default(0) double completion,
    @JsonKey(name: 'quiz_average') @Default(0) double quizAverage,
    @JsonKey(name: 'assignment_average') @Default(0) double assignmentAverage,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _ResultDto;

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);
}

@freezed
abstract class CertificateDto with _$CertificateDto {
  const factory CertificateDto({
    required String id,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'certificate_number') required String certificateNumber,
    required String status,
    @JsonKey(name: 'issued_at') required DateTime issuedAt,
  }) = _CertificateDto;

  factory CertificateDto.fromJson(Map<String, dynamic> json) =>
      _$CertificateDtoFromJson(json);
}

@freezed
abstract class CertificateVerificationDto with _$CertificateVerificationDto {
  const factory CertificateVerificationDto({
    required bool valid,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'course_title') required String courseTitle,
    @JsonKey(name: 'organization_name') required String organizationName,
    @JsonKey(name: 'issued_at') required DateTime issuedAt,
    @JsonKey(name: 'certificate_number') required String certificateNumber,
  }) = _CertificateVerificationDto;

  factory CertificateVerificationDto.fromJson(Map<String, dynamic> json) =>
      _$CertificateVerificationDtoFromJson(json);
}

@freezed
abstract class NotificationDto with _$NotificationDto {
  const factory NotificationDto({
    required String id,
    required String type,
    required String title,
    required String body,
    @JsonKey(name: 'entity_type') String? entityType,
    @JsonKey(name: 'entity_id') String? entityId,
    @JsonKey(name: 'deep_link') String? deepLink,
    @Default(<String, dynamic>{}) Map<String, dynamic> data,
    @JsonKey(name: 'read_at') DateTime? readAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);
}

@freezed
abstract class ProblemDetails with _$ProblemDetails {
  const factory ProblemDetails({
    required String type,
    required String title,
    required int status,
    String? detail,
    String? instance,
    @JsonKey(name: 'request_id') String? requestId,
    @Default(<FieldErrorDto>[]) List<FieldErrorDto> errors,
  }) = _ProblemDetails;

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);
}

@freezed
abstract class FieldErrorDto with _$FieldErrorDto {
  const factory FieldErrorDto({
    required String field,
    required String message,
  }) = _FieldErrorDto;

  factory FieldErrorDto.fromJson(Map<String, dynamic> json) =>
      _$FieldErrorDtoFromJson(json);
}

class ListResponseDto {
  const ListResponseDto({required this.items, this.nextCursor});

  factory ListResponseDto.fromJson(Map<String, dynamic> json) {
    final rawItems = json['items'];
    return ListResponseDto(
      items: rawItems is List
          ? rawItems
                .whereType<Map>()
                .map((item) => Map<String, dynamic>.from(item))
                .toList()
          : const [],
      nextCursor: json['next_cursor'] as String?,
    );
  }

  final List<Map<String, dynamic>> items;
  final String? nextCursor;

  Map<String, dynamic> toJson() => {
    'items': items,
    if (nextCursor != null) 'next_cursor': nextCursor,
  };
}

class RawJsonMap {
  const RawJsonMap(this.value);

  factory RawJsonMap.fromJson(Map<String, dynamic> json) => RawJsonMap(json);

  final Map<String, dynamic> value;

  Map<String, dynamic> toJson() => value;
}
