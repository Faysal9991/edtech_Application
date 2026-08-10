// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_one_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatusWriteRequestImpl _$$UserStatusWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserStatusWriteRequestImpl(
      status: json['status'] as String,
    );

Map<String, dynamic> _$$UserStatusWriteRequestImplToJson(
        _$UserStatusWriteRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$RoleWriteRequestImpl _$$RoleWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RoleWriteRequestImpl(
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RoleWriteRequestImplToJson(
        _$RoleWriteRequestImpl instance) =>
    <String, dynamic>{
      'roles': instance.roles,
    };

_$ProfileWriteRequestImpl _$$ProfileWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileWriteRequestImpl(
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

Map<String, dynamic> _$$ProfileWriteRequestImplToJson(
        _$ProfileWriteRequestImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'timezone': instance.timezone,
      'locale': instance.locale,
      'biography': instance.biography,
      'expertise': instance.expertise,
    };

_$CourseDtoImpl _$$CourseDtoImplFromJson(Map<String, dynamic> json) =>
    _$CourseDtoImpl(
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

Map<String, dynamic> _$$CourseDtoImplToJson(_$CourseDtoImpl instance) =>
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

_$CourseWriteRequestImpl _$$CourseWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseWriteRequestImpl(
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

Map<String, dynamic> _$$CourseWriteRequestImplToJson(
        _$CourseWriteRequestImpl instance) =>
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

_$ModuleWriteRequestImpl _$$ModuleWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ModuleWriteRequestImpl(
      title: json['title'] as String,
      position: (json['position'] as num).toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ModuleWriteRequestImplToJson(
        _$ModuleWriteRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'position': instance.position,
      'description': instance.description,
    };

_$LessonWriteRequestImpl _$$LessonWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonWriteRequestImpl(
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

Map<String, dynamic> _$$LessonWriteRequestImplToJson(
        _$LessonWriteRequestImpl instance) =>
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

_$CourseDetailDtoImpl _$$CourseDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseDetailDtoImpl(
      course: CourseDto.fromJson(json['course'] as Map<String, dynamic>),
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => CourseModuleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CourseModuleDto>[],
    );

Map<String, dynamic> _$$CourseDetailDtoImplToJson(
        _$CourseDetailDtoImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'modules': instance.modules,
    };

_$CourseModuleDtoImpl _$$CourseModuleDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseModuleDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      position: (json['position'] as num?)?.toInt() ?? 0,
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LessonDto>[],
    );

Map<String, dynamic> _$$CourseModuleDtoImplToJson(
        _$CourseModuleDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'position': instance.position,
      'lessons': instance.lessons,
    };

_$LessonDtoImpl _$$LessonDtoImplFromJson(Map<String, dynamic> json) =>
    _$LessonDtoImpl(
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

Map<String, dynamic> _$$LessonDtoImplToJson(_$LessonDtoImpl instance) =>
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

_$EnrollmentDtoImpl _$$EnrollmentDtoImplFromJson(Map<String, dynamic> json) =>
    _$EnrollmentDtoImpl(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      studentId: json['student_id'] as String,
      status: json['status'] as String,
      completionPercentage:
          (json['completion_percentage'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$EnrollmentDtoImplToJson(_$EnrollmentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'student_id': instance.studentId,
      'status': instance.status,
      'completion_percentage': instance.completionPercentage,
    };

_$ProgressWriteRequestImpl _$$ProgressWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressWriteRequestImpl(
      positionSeconds: (json['position_seconds'] as num).toInt(),
      watchedSecondsDelta: (json['watched_seconds_delta'] as num).toInt(),
      manualComplete: json['manual_complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProgressWriteRequestImplToJson(
        _$ProgressWriteRequestImpl instance) =>
    <String, dynamic>{
      'position_seconds': instance.positionSeconds,
      'watched_seconds_delta': instance.watchedSecondsDelta,
      'manual_complete': instance.manualComplete,
    };

_$ProgressDtoImpl _$$ProgressDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProgressDtoImpl(
      lessonId: json['lesson_id'] as String,
      state: json['state'] as String,
      positionSeconds: (json['position_seconds'] as num).toInt(),
      totalWatchedSeconds: (json['total_watched_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$ProgressDtoImplToJson(_$ProgressDtoImpl instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'state': instance.state,
      'position_seconds': instance.positionSeconds,
      'total_watched_seconds': instance.totalWatchedSeconds,
    };

_$QuizOptionDtoImpl _$$QuizOptionDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuizOptionDtoImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      correct: json['correct'] as bool?,
    );

Map<String, dynamic> _$$QuizOptionDtoImplToJson(_$QuizOptionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'correct': instance.correct,
    };

_$OptionWriteRequestImpl _$$OptionWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionWriteRequestImpl(
      text: json['text'] as String,
      isCorrect: json['is_correct'] as bool,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$OptionWriteRequestImplToJson(
        _$OptionWriteRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'is_correct': instance.isCorrect,
      'position': instance.position,
    };

_$QuestionWriteRequestImpl _$$QuestionWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionWriteRequestImpl(
      questionType: json['question_type'] as String,
      prompt: json['prompt'] as String,
      points: (json['points'] as num).toDouble(),
      position: (json['position'] as num).toInt(),
      options: (json['options'] as List<dynamic>)
          .map((e) => OptionWriteRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionWriteRequestImplToJson(
        _$QuestionWriteRequestImpl instance) =>
    <String, dynamic>{
      'question_type': instance.questionType,
      'prompt': instance.prompt,
      'points': instance.points,
      'position': instance.position,
      'options': instance.options,
    };

_$QuizWriteRequestImpl _$$QuizWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizWriteRequestImpl(
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

Map<String, dynamic> _$$QuizWriteRequestImplToJson(
        _$QuizWriteRequestImpl instance) =>
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

_$QuizQuestionDtoImpl _$$QuizQuestionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizQuestionDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      prompt: json['prompt'] as String,
      points: (json['points'] as num?)?.toDouble() ?? 1,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => QuizOptionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuizOptionDto>[],
    );

Map<String, dynamic> _$$QuizQuestionDtoImplToJson(
        _$QuizQuestionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'prompt': instance.prompt,
      'points': instance.points,
      'options': instance.options,
    };

_$QuizAttemptDtoImpl _$$QuizAttemptDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuizAttemptDtoImpl(
      id: json['id'] as String,
      quizId: json['quiz_id'] as String,
      attemptNumber: (json['attempt_number'] as num).toInt(),
      status: json['status'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      submitBefore: json['submit_before'] == null
          ? null
          : DateTime.parse(json['submit_before'] as String),
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuizQuestionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuizQuestionDto>[],
      percentage: (json['percentage'] as num?)?.toDouble(),
      passed: json['passed'] as bool?,
    );

Map<String, dynamic> _$$QuizAttemptDtoImplToJson(
        _$QuizAttemptDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quiz_id': instance.quizId,
      'attempt_number': instance.attemptNumber,
      'status': instance.status,
      'started_at': instance.startedAt.toIso8601String(),
      'expires_at': instance.expiresAt?.toIso8601String(),
      'submit_before': instance.submitBefore?.toIso8601String(),
      'questions': instance.questions,
      'percentage': instance.percentage,
      'passed': instance.passed,
    };

_$AnswerWriteRequestImpl _$$AnswerWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerWriteRequestImpl(
      questionId: json['question_id'] as String,
      selectedOptionIds: (json['selected_option_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      textAnswer: json['text_answer'] as String?,
    );

Map<String, dynamic> _$$AnswerWriteRequestImplToJson(
        _$AnswerWriteRequestImpl instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'selected_option_ids': instance.selectedOptionIds,
      'text_answer': instance.textAnswer,
    };

_$SubmissionWriteRequestImpl _$$SubmissionWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionWriteRequestImpl(
      textContent: json['text_content'] as String?,
      mediaAssetIds: (json['media_asset_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SubmissionWriteRequestImplToJson(
        _$SubmissionWriteRequestImpl instance) =>
    <String, dynamic>{
      'text_content': instance.textContent,
      'media_asset_ids': instance.mediaAssetIds,
    };

_$AssignmentWriteRequestImpl _$$AssignmentWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentWriteRequestImpl(
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

Map<String, dynamic> _$$AssignmentWriteRequestImplToJson(
        _$AssignmentWriteRequestImpl instance) =>
    <String, dynamic>{
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

_$GradeWriteRequestImpl _$$GradeWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GradeWriteRequestImpl(
      points: (json['points'] as num).toDouble(),
      feedback: json['feedback'] as String?,
      questionId: json['question_id'] as String?,
    );

Map<String, dynamic> _$$GradeWriteRequestImplToJson(
        _$GradeWriteRequestImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'feedback': instance.feedback,
      'question_id': instance.questionId,
    };

_$LiveSessionWriteRequestImpl _$$LiveSessionWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveSessionWriteRequestImpl(
      courseId: json['course_id'] as String,
      title: json['title'] as String,
      scheduledStartAt: DateTime.parse(json['scheduled_start_at'] as String),
      scheduledEndAt: DateTime.parse(json['scheduled_end_at'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$LiveSessionWriteRequestImplToJson(
        _$LiveSessionWriteRequestImpl instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'title': instance.title,
      'scheduled_start_at': instance.scheduledStartAt.toIso8601String(),
      'scheduled_end_at': instance.scheduledEndAt.toIso8601String(),
      'description': instance.description,
    };

_$UploadIntentWriteRequestImpl _$$UploadIntentWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadIntentWriteRequestImpl(
      kind: json['kind'] as String,
      filename: json['filename'] as String,
      contentType: json['content_type'] as String,
      sizeBytes: (json['size_bytes'] as num).toInt(),
      checksumSha256: json['checksum_sha256'] as String?,
    );

Map<String, dynamic> _$$UploadIntentWriteRequestImplToJson(
        _$UploadIntentWriteRequestImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'filename': instance.filename,
      'content_type': instance.contentType,
      'size_bytes': instance.sizeBytes,
      'checksum_sha256': instance.checksumSha256,
    };

_$UploadIntentDtoImpl _$$UploadIntentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadIntentDtoImpl(
      id: json['id'] as String,
      mediaAssetId: json['media_asset_id'] as String,
      uploadUrl: json['upload_url'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$UploadIntentDtoImplToJson(
        _$UploadIntentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_asset_id': instance.mediaAssetId,
      'upload_url': instance.uploadUrl,
      'expires_at': instance.expiresAt.toIso8601String(),
    };

_$LiveClassTokenResponseImpl _$$LiveClassTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveClassTokenResponseImpl(
      token: json['token'] as String,
      url: json['url'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$LiveClassTokenResponseImplToJson(
        _$LiveClassTokenResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'url': instance.url,
      'expires_at': instance.expiresAt.toIso8601String(),
    };

_$OrderWriteRequestImpl _$$OrderWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderWriteRequestImpl(
      courseId: json['course_id'] as String,
    );

Map<String, dynamic> _$$OrderWriteRequestImplToJson(
        _$OrderWriteRequestImpl instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
    };

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      amountMinor: (json['amount_minor'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'amount_minor': instance.amountMinor,
      'currency': instance.currency,
    };

_$PaymentIntentDtoImpl _$$PaymentIntentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentIntentDtoImpl(
      clientSecret: json['client_secret'] as String,
    );

Map<String, dynamic> _$$PaymentIntentDtoImplToJson(
        _$PaymentIntentDtoImpl instance) =>
    <String, dynamic>{
      'client_secret': instance.clientSecret,
    };

_$DeviceTokenWriteRequestImpl _$$DeviceTokenWriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceTokenWriteRequestImpl(
      token: json['token'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$DeviceTokenWriteRequestImplToJson(
        _$DeviceTokenWriteRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'platform': instance.platform,
    };

_$ResultDtoImpl _$$ResultDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResultDtoImpl(
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

Map<String, dynamic> _$$ResultDtoImplToJson(_$ResultDtoImpl instance) =>
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

_$CertificateDtoImpl _$$CertificateDtoImplFromJson(Map<String, dynamic> json) =>
    _$CertificateDtoImpl(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      certificateNumber: json['certificate_number'] as String,
      status: json['status'] as String,
      issuedAt: DateTime.parse(json['issued_at'] as String),
    );

Map<String, dynamic> _$$CertificateDtoImplToJson(
        _$CertificateDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'certificate_number': instance.certificateNumber,
      'status': instance.status,
      'issued_at': instance.issuedAt.toIso8601String(),
    };

_$CertificateVerificationDtoImpl _$$CertificateVerificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateVerificationDtoImpl(
      valid: json['valid'] as bool,
      studentName: json['student_name'] as String,
      courseTitle: json['course_title'] as String,
      organizationName: json['organization_name'] as String,
      issuedAt: DateTime.parse(json['issued_at'] as String),
      certificateNumber: json['certificate_number'] as String,
    );

Map<String, dynamic> _$$CertificateVerificationDtoImplToJson(
        _$CertificateVerificationDtoImpl instance) =>
    <String, dynamic>{
      'valid': instance.valid,
      'student_name': instance.studentName,
      'course_title': instance.courseTitle,
      'organization_name': instance.organizationName,
      'issued_at': instance.issuedAt.toIso8601String(),
      'certificate_number': instance.certificateNumber,
    };

_$NotificationDtoImpl _$$NotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      entityType: json['entity_type'] as String?,
      entityId: json['entity_id'] as String?,
      deepLink: json['deep_link'] as String?,
      data: json['data'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$NotificationDtoImplToJson(
        _$NotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'entity_type': instance.entityType,
      'entity_id': instance.entityId,
      'deep_link': instance.deepLink,
      'data': instance.data,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$ProblemDetailsImpl _$$ProblemDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ProblemDetailsImpl(
      type: json['type'] as String,
      title: json['title'] as String,
      status: (json['status'] as num).toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
      requestId: json['request_id'] as String?,
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => FieldErrorDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FieldErrorDto>[],
    );

Map<String, dynamic> _$$ProblemDetailsImplToJson(
        _$ProblemDetailsImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
      'request_id': instance.requestId,
      'errors': instance.errors,
    };

_$FieldErrorDtoImpl _$$FieldErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$FieldErrorDtoImpl(
      field: json['field'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$FieldErrorDtoImplToJson(_$FieldErrorDtoImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };
