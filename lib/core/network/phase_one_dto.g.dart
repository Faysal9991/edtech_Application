// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_one_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserStatusWriteRequest _$UserStatusWriteRequestFromJson(
  Map<String, dynamic> json,
) => _UserStatusWriteRequest(status: json['status'] as String);

Map<String, dynamic> _$UserStatusWriteRequestToJson(
  _UserStatusWriteRequest instance,
) => <String, dynamic>{'status': instance.status};

_RoleWriteRequest _$RoleWriteRequestFromJson(Map<String, dynamic> json) =>
    _RoleWriteRequest(
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RoleWriteRequestToJson(_RoleWriteRequest instance) =>
    <String, dynamic>{'roles': instance.roles};

_ProfileWriteRequest _$ProfileWriteRequestFromJson(Map<String, dynamic> json) =>
    _ProfileWriteRequest(
      displayName: json['display_name'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      timezone: json['timezone'] as String?,
      locale: json['locale'] as String?,
      biography: json['biography'] as String?,
      expertise: (json['expertise'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProfileWriteRequestToJson(
  _ProfileWriteRequest instance,
) => <String, dynamic>{
  'display_name': instance.displayName,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'timezone': instance.timezone,
  'locale': instance.locale,
  'biography': instance.biography,
  'expertise': instance.expertise,
};

_CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => _CourseDto(
  id: json['id'] as String,
  organizationId: json['organization_id'] as String,
  thumbnailAssetId: json['thumbnail_asset_id'] as String?,
  title: json['title'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String? ?? '',
  language: json['language'] as String? ?? 'bn',
  level: json['level'] as String? ?? 'all',
  status: json['status'] as String? ?? 'published',
  isFree: json['is_free'] as bool? ?? false,
  priceMinor: (json['price_minor'] as num?)?.toInt() ?? 0,
  currency: json['currency'] as String? ?? 'BDT',
  version: (json['version'] as num?)?.toInt() ?? 0,
  categoryName: json['category_name'] as String?,
);

Map<String, dynamic> _$CourseDtoToJson(_CourseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'thumbnail_asset_id': instance.thumbnailAssetId,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'language': instance.language,
      'level': instance.level,
      'status': instance.status,
      'is_free': instance.isFree,
      'price_minor': instance.priceMinor,
      'currency': instance.currency,
      'version': instance.version,
      'category_name': instance.categoryName,
    };

_CourseWriteRequest _$CourseWriteRequestFromJson(Map<String, dynamic> json) =>
    _CourseWriteRequest(
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      level: json['level'] as String,
      isFree: json['is_free'] as bool,
      priceMinor: (json['price_minor'] as num).toInt(),
      currency: json['currency'] as String,
      version: (json['version'] as num).toInt(),
      categoryId: json['category_id'] as String?,
      thumbnailAssetId: json['thumbnail_asset_id'] as String?,
    );

Map<String, dynamic> _$CourseWriteRequestToJson(_CourseWriteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'language': instance.language,
      'level': instance.level,
      'is_free': instance.isFree,
      'price_minor': instance.priceMinor,
      'currency': instance.currency,
      'version': instance.version,
      'category_id': instance.categoryId,
      'thumbnail_asset_id': instance.thumbnailAssetId,
    };

_ModuleWriteRequest _$ModuleWriteRequestFromJson(Map<String, dynamic> json) =>
    _ModuleWriteRequest(
      title: json['title'] as String,
      position: (json['position'] as num).toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ModuleWriteRequestToJson(_ModuleWriteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'position': instance.position,
      'description': instance.description,
    };

_LessonWriteRequest _$LessonWriteRequestFromJson(Map<String, dynamic> json) =>
    _LessonWriteRequest(
      title: json['title'] as String,
      lessonType: json['lesson_type'] as String,
      position: (json['position'] as num).toInt(),
      isPreview: json['is_preview'] as bool,
      isRequired: json['is_required'] as bool,
      isPublished: json['is_published'] as bool,
      description: json['description'] as String?,
      mediaAssetId: json['media_asset_id'] as String?,
      body: json['body'] as String?,
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LessonWriteRequestToJson(_LessonWriteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'lesson_type': instance.lessonType,
      'position': instance.position,
      'is_preview': instance.isPreview,
      'is_required': instance.isRequired,
      'is_published': instance.isPublished,
      'description': instance.description,
      'media_asset_id': instance.mediaAssetId,
      'body': instance.body,
      'duration_seconds': instance.durationSeconds,
    };

_CourseDetailDto _$CourseDetailDtoFromJson(Map<String, dynamic> json) =>
    _CourseDetailDto(
      course: CourseDto.fromJson(json['course'] as Map<String, dynamic>),
      modules:
          (json['modules'] as List<dynamic>?)
              ?.map((e) => CourseModuleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CourseModuleDto>[],
    );

Map<String, dynamic> _$CourseDetailDtoToJson(_CourseDetailDto instance) =>
    <String, dynamic>{'course': instance.course, 'modules': instance.modules};

_CourseModuleDto _$CourseModuleDtoFromJson(Map<String, dynamic> json) =>
    _CourseModuleDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      position: (json['position'] as num?)?.toInt() ?? 0,
      lessons:
          (json['lessons'] as List<dynamic>?)
              ?.map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LessonDto>[],
    );

Map<String, dynamic> _$CourseModuleDtoToJson(_CourseModuleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'position': instance.position,
      'lessons': instance.lessons,
    };

_LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) => _LessonDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String? ?? '',
  type: json['type'] as String? ?? 'text',
  lessonType: json['lesson_type'] as String?,
  position: (json['position'] as num?)?.toInt() ?? 0,
  isPreview: json['is_preview'] as bool? ?? false,
  isRequired: json['is_required'] as bool? ?? false,
  isPublished: json['is_published'] as bool? ?? true,
  durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
  mediaAssetId: json['media_asset_id'] as String?,
  body: json['body'] as String?,
);

Map<String, dynamic> _$LessonDtoToJson(_LessonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'lesson_type': instance.lessonType,
      'position': instance.position,
      'is_preview': instance.isPreview,
      'is_required': instance.isRequired,
      'is_published': instance.isPublished,
      'duration_seconds': instance.durationSeconds,
      'media_asset_id': instance.mediaAssetId,
      'body': instance.body,
    };

_EnrollmentDto _$EnrollmentDtoFromJson(Map<String, dynamic> json) =>
    _EnrollmentDto(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      studentId: json['student_id'] as String,
      status: json['status'] as String,
      completionPercentage:
          (json['completion_percentage'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$EnrollmentDtoToJson(_EnrollmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'student_id': instance.studentId,
      'status': instance.status,
      'completion_percentage': instance.completionPercentage,
    };

_ProgressWriteRequest _$ProgressWriteRequestFromJson(
  Map<String, dynamic> json,
) => _ProgressWriteRequest(
  positionSeconds: (json['position_seconds'] as num).toInt(),
  watchedSecondsDelta: (json['watched_seconds_delta'] as num).toInt(),
  manualComplete: json['manual_complete'] as bool? ?? false,
);

Map<String, dynamic> _$ProgressWriteRequestToJson(
  _ProgressWriteRequest instance,
) => <String, dynamic>{
  'position_seconds': instance.positionSeconds,
  'watched_seconds_delta': instance.watchedSecondsDelta,
  'manual_complete': instance.manualComplete,
};

_ProgressDto _$ProgressDtoFromJson(Map<String, dynamic> json) => _ProgressDto(
  lessonId: json['lesson_id'] as String,
  state: json['state'] as String,
  positionSeconds: (json['position_seconds'] as num).toInt(),
  totalWatchedSeconds: (json['total_watched_seconds'] as num).toInt(),
);

Map<String, dynamic> _$ProgressDtoToJson(_ProgressDto instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'state': instance.state,
      'position_seconds': instance.positionSeconds,
      'total_watched_seconds': instance.totalWatchedSeconds,
    };

_QuizOptionDto _$QuizOptionDtoFromJson(Map<String, dynamic> json) =>
    _QuizOptionDto(
      id: json['id'] as String,
      text: json['text'] as String,
      correct: json['correct'] as bool?,
    );

Map<String, dynamic> _$QuizOptionDtoToJson(_QuizOptionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'correct': instance.correct,
    };

_OptionWriteRequest _$OptionWriteRequestFromJson(Map<String, dynamic> json) =>
    _OptionWriteRequest(
      text: json['text'] as String,
      isCorrect: json['is_correct'] as bool,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$OptionWriteRequestToJson(_OptionWriteRequest instance) =>
    <String, dynamic>{
      'text': instance.text,
      'is_correct': instance.isCorrect,
      'position': instance.position,
    };

_QuestionWriteRequest _$QuestionWriteRequestFromJson(
  Map<String, dynamic> json,
) => _QuestionWriteRequest(
  questionType: json['question_type'] as String,
  prompt: json['prompt'] as String,
  points: (json['points'] as num).toDouble(),
  position: (json['position'] as num).toInt(),
  options: (json['options'] as List<dynamic>)
      .map((e) => OptionWriteRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuestionWriteRequestToJson(
  _QuestionWriteRequest instance,
) => <String, dynamic>{
  'question_type': instance.questionType,
  'prompt': instance.prompt,
  'points': instance.points,
  'position': instance.position,
  'options': instance.options,
};

_QuizWriteRequest _$QuizWriteRequestFromJson(Map<String, dynamic> json) =>
    _QuizWriteRequest(
      courseId: json['course_id'] as String,
      title: json['title'] as String,
      attemptLimit: (json['attempt_limit'] as num).toInt(),
      passPercentage: (json['pass_percentage'] as num).toDouble(),
      lessonId: json['lesson_id'] as String?,
      instructions: json['instructions'] as String?,
      timeLimitSeconds: (json['time_limit_seconds'] as num?)?.toInt(),
      randomizeQuestions: json['randomize_questions'] as bool?,
      randomizeOptions: json['randomize_options'] as bool?,
      availableFrom: json['available_from'] == null
          ? null
          : DateTime.parse(json['available_from'] as String),
      availableUntil: json['available_until'] == null
          ? null
          : DateTime.parse(json['available_until'] as String),
      resultsVisibility: json['results_visibility'] as String?,
      isRequired: json['is_required'] as bool?,
    );

Map<String, dynamic> _$QuizWriteRequestToJson(_QuizWriteRequest instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'title': instance.title,
      'attempt_limit': instance.attemptLimit,
      'pass_percentage': instance.passPercentage,
      'lesson_id': instance.lessonId,
      'instructions': instance.instructions,
      'time_limit_seconds': instance.timeLimitSeconds,
      'randomize_questions': instance.randomizeQuestions,
      'randomize_options': instance.randomizeOptions,
      'available_from': instance.availableFrom?.toIso8601String(),
      'available_until': instance.availableUntil?.toIso8601String(),
      'results_visibility': instance.resultsVisibility,
      'is_required': instance.isRequired,
    };

_QuizQuestionDto _$QuizQuestionDtoFromJson(Map<String, dynamic> json) =>
    _QuizQuestionDto(
      id: json['id'] as String,
      type: json['type'] as String,
      prompt: json['prompt'] as String,
      points: (json['points'] as num?)?.toDouble() ?? 1,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => QuizOptionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuizOptionDto>[],
    );

Map<String, dynamic> _$QuizQuestionDtoToJson(_QuizQuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'prompt': instance.prompt,
      'points': instance.points,
      'options': instance.options,
    };

_QuizAttemptDto _$QuizAttemptDtoFromJson(Map<String, dynamic> json) =>
    _QuizAttemptDto(
      id: json['id'] as String,
      quizId: json['quiz_id'] as String,
      attemptNumber: (json['attempt_number'] as num).toInt(),
      status: json['status'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      questions:
          (json['questions'] as List<dynamic>?)
              ?.map((e) => QuizQuestionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuizQuestionDto>[],
      percentage: (json['percentage'] as num?)?.toDouble(),
      passed: json['passed'] as bool?,
    );

Map<String, dynamic> _$QuizAttemptDtoToJson(_QuizAttemptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quiz_id': instance.quizId,
      'attempt_number': instance.attemptNumber,
      'status': instance.status,
      'started_at': instance.startedAt.toIso8601String(),
      'expires_at': instance.expiresAt?.toIso8601String(),
      'questions': instance.questions,
      'percentage': instance.percentage,
      'passed': instance.passed,
    };

_AnswerWriteRequest _$AnswerWriteRequestFromJson(Map<String, dynamic> json) =>
    _AnswerWriteRequest(
      questionId: json['question_id'] as String,
      selectedOptionIds: (json['selected_option_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      textAnswer: json['text_answer'] as String?,
    );

Map<String, dynamic> _$AnswerWriteRequestToJson(_AnswerWriteRequest instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'selected_option_ids': instance.selectedOptionIds,
      'text_answer': instance.textAnswer,
    };

_SubmissionWriteRequest _$SubmissionWriteRequestFromJson(
  Map<String, dynamic> json,
) => _SubmissionWriteRequest(
  textContent: json['text_content'] as String?,
  mediaAssetIds: (json['media_asset_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SubmissionWriteRequestToJson(
  _SubmissionWriteRequest instance,
) => <String, dynamic>{
  'text_content': instance.textContent,
  'media_asset_ids': instance.mediaAssetIds,
};

_AssignmentWriteRequest _$AssignmentWriteRequestFromJson(
  Map<String, dynamic> json,
) => _AssignmentWriteRequest(
  courseId: json['course_id'] as String,
  title: json['title'] as String,
  maximumScore: (json['maximum_score'] as num).toDouble(),
  passingScore: (json['passing_score'] as num).toDouble(),
  maximumSubmissions: (json['maximum_submissions'] as num).toInt(),
  lessonId: json['lesson_id'] as String?,
  instructions: json['instructions'] as String?,
  attachmentAssetIds: (json['attachment_asset_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  dueAt: json['due_at'] == null
      ? null
      : DateTime.parse(json['due_at'] as String),
  allowedFileTypes: (json['allowed_file_types'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isRequired: json['is_required'] as bool?,
);

Map<String, dynamic> _$AssignmentWriteRequestToJson(
  _AssignmentWriteRequest instance,
) => <String, dynamic>{
  'course_id': instance.courseId,
  'title': instance.title,
  'maximum_score': instance.maximumScore,
  'passing_score': instance.passingScore,
  'maximum_submissions': instance.maximumSubmissions,
  'lesson_id': instance.lessonId,
  'instructions': instance.instructions,
  'attachment_asset_ids': instance.attachmentAssetIds,
  'due_at': instance.dueAt?.toIso8601String(),
  'allowed_file_types': instance.allowedFileTypes,
  'is_required': instance.isRequired,
};

_GradeWriteRequest _$GradeWriteRequestFromJson(Map<String, dynamic> json) =>
    _GradeWriteRequest(
      points: (json['points'] as num).toDouble(),
      feedback: json['feedback'] as String?,
      questionId: json['question_id'] as String?,
    );

Map<String, dynamic> _$GradeWriteRequestToJson(_GradeWriteRequest instance) =>
    <String, dynamic>{
      'points': instance.points,
      'feedback': instance.feedback,
      'question_id': instance.questionId,
    };

_LiveSessionWriteRequest _$LiveSessionWriteRequestFromJson(
  Map<String, dynamic> json,
) => _LiveSessionWriteRequest(
  courseId: json['course_id'] as String,
  title: json['title'] as String,
  scheduledStartAt: DateTime.parse(json['scheduled_start_at'] as String),
  scheduledEndAt: DateTime.parse(json['scheduled_end_at'] as String),
  description: json['description'] as String?,
);

Map<String, dynamic> _$LiveSessionWriteRequestToJson(
  _LiveSessionWriteRequest instance,
) => <String, dynamic>{
  'course_id': instance.courseId,
  'title': instance.title,
  'scheduled_start_at': instance.scheduledStartAt.toIso8601String(),
  'scheduled_end_at': instance.scheduledEndAt.toIso8601String(),
  'description': instance.description,
};

_UploadIntentWriteRequest _$UploadIntentWriteRequestFromJson(
  Map<String, dynamic> json,
) => _UploadIntentWriteRequest(
  kind: json['kind'] as String,
  filename: json['filename'] as String,
  contentType: json['content_type'] as String,
  sizeBytes: (json['size_bytes'] as num).toInt(),
  checksumSha256: json['checksum_sha256'] as String?,
);

Map<String, dynamic> _$UploadIntentWriteRequestToJson(
  _UploadIntentWriteRequest instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'filename': instance.filename,
  'content_type': instance.contentType,
  'size_bytes': instance.sizeBytes,
  'checksum_sha256': instance.checksumSha256,
};

_UploadIntentDto _$UploadIntentDtoFromJson(Map<String, dynamic> json) =>
    _UploadIntentDto(
      id: json['id'] as String,
      mediaAssetId: json['media_asset_id'] as String,
      uploadUrl: json['upload_url'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$UploadIntentDtoToJson(_UploadIntentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_asset_id': instance.mediaAssetId,
      'upload_url': instance.uploadUrl,
      'expires_at': instance.expiresAt.toIso8601String(),
    };

_LiveClassTokenResponse _$LiveClassTokenResponseFromJson(
  Map<String, dynamic> json,
) => _LiveClassTokenResponse(
  token: json['token'] as String,
  url: json['url'] as String,
  expiresAt: DateTime.parse(json['expires_at'] as String),
);

Map<String, dynamic> _$LiveClassTokenResponseToJson(
  _LiveClassTokenResponse instance,
) => <String, dynamic>{
  'token': instance.token,
  'url': instance.url,
  'expires_at': instance.expiresAt.toIso8601String(),
};

_OrderWriteRequest _$OrderWriteRequestFromJson(Map<String, dynamic> json) =>
    _OrderWriteRequest(courseId: json['course_id'] as String);

Map<String, dynamic> _$OrderWriteRequestToJson(_OrderWriteRequest instance) =>
    <String, dynamic>{'course_id': instance.courseId};

_OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => _OrderDto(
  id: json['id'] as String,
  status: json['status'] as String,
  amountMinor: (json['amount_minor'] as num).toInt(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$OrderDtoToJson(_OrderDto instance) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'amount_minor': instance.amountMinor,
  'currency': instance.currency,
};

_PaymentIntentDto _$PaymentIntentDtoFromJson(Map<String, dynamic> json) =>
    _PaymentIntentDto(clientSecret: json['client_secret'] as String);

Map<String, dynamic> _$PaymentIntentDtoToJson(_PaymentIntentDto instance) =>
    <String, dynamic>{'client_secret': instance.clientSecret};

_DeviceTokenWriteRequest _$DeviceTokenWriteRequestFromJson(
  Map<String, dynamic> json,
) => _DeviceTokenWriteRequest(
  token: json['token'] as String,
  platform: json['platform'] as String,
);

Map<String, dynamic> _$DeviceTokenWriteRequestToJson(
  _DeviceTokenWriteRequest instance,
) => <String, dynamic>{'token': instance.token, 'platform': instance.platform};

_ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) => _ResultDto(
  enrollmentId: json['enrollment_id'] as String,
  courseId: json['course_id'] as String,
  courseTitle: json['course_title'] as String,
  status: json['status'] as String,
  completion: (json['completion_percentage'] as num?)?.toDouble() ?? 0,
  quizAverage: (json['quiz_average'] as num?)?.toDouble() ?? 0,
  assignmentAverage: (json['assignment_average'] as num?)?.toDouble() ?? 0,
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
);

Map<String, dynamic> _$ResultDtoToJson(_ResultDto instance) =>
    <String, dynamic>{
      'enrollment_id': instance.enrollmentId,
      'course_id': instance.courseId,
      'course_title': instance.courseTitle,
      'status': instance.status,
      'completion_percentage': instance.completion,
      'quiz_average': instance.quizAverage,
      'assignment_average': instance.assignmentAverage,
      'completed_at': instance.completedAt?.toIso8601String(),
    };

_CertificateDto _$CertificateDtoFromJson(Map<String, dynamic> json) =>
    _CertificateDto(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      certificateNumber: json['certificate_number'] as String,
      status: json['status'] as String,
      issuedAt: DateTime.parse(json['issued_at'] as String),
    );

Map<String, dynamic> _$CertificateDtoToJson(_CertificateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'certificate_number': instance.certificateNumber,
      'status': instance.status,
      'issued_at': instance.issuedAt.toIso8601String(),
    };

_CertificateVerificationDto _$CertificateVerificationDtoFromJson(
  Map<String, dynamic> json,
) => _CertificateVerificationDto(
  valid: json['valid'] as bool,
  studentName: json['student_name'] as String,
  courseTitle: json['course_title'] as String,
  organizationName: json['organization_name'] as String,
  issuedAt: DateTime.parse(json['issued_at'] as String),
  certificateNumber: json['certificate_number'] as String,
);

Map<String, dynamic> _$CertificateVerificationDtoToJson(
  _CertificateVerificationDto instance,
) => <String, dynamic>{
  'valid': instance.valid,
  'student_name': instance.studentName,
  'course_title': instance.courseTitle,
  'organization_name': instance.organizationName,
  'issued_at': instance.issuedAt.toIso8601String(),
  'certificate_number': instance.certificateNumber,
};

_NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    _NotificationDto(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      data: json['data'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$NotificationDtoToJson(_NotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    _ProblemDetails(
      type: json['type'] as String,
      title: json['title'] as String,
      status: (json['status'] as num).toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
      requestId: json['request_id'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)
              ?.map((e) => FieldErrorDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FieldErrorDto>[],
    );

Map<String, dynamic> _$ProblemDetailsToJson(_ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
      'request_id': instance.requestId,
      'errors': instance.errors,
    };

_FieldErrorDto _$FieldErrorDtoFromJson(Map<String, dynamic> json) =>
    _FieldErrorDto(
      field: json['field'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$FieldErrorDtoToJson(_FieldErrorDto instance) =>
    <String, dynamic>{'field': instance.field, 'message': instance.message};
