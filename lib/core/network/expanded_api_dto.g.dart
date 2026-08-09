// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcademicItemDto _$AcademicItemDtoFromJson(Map<String, dynamic> json) =>
    _AcademicItemDto(
      id: json['id'] as String,
      organizationId: json['organization_id'] as String?,
      parentId: json['parent_id'] as String?,
      slug: json['slug'] as String,
      displayName: json['display_name'] as String,
      displayNameBn: json['display_name_bn'] as String?,
      status: json['status'] as String,
      position: (json['position'] as num?)?.toInt() ?? 0,
      startsOn: json['starts_on'] as String?,
      endsOn: json['ends_on'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AcademicItemDtoToJson(_AcademicItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'parent_id': instance.parentId,
      'slug': instance.slug,
      'display_name': instance.displayName,
      'display_name_bn': instance.displayNameBn,
      'status': instance.status,
      'position': instance.position,
      'starts_on': instance.startsOn,
      'ends_on': instance.endsOn,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_AcademicPreferencesWriteRequest _$AcademicPreferencesWriteRequestFromJson(
  Map<String, dynamic> json,
) => _AcademicPreferencesWriteRequest(
  programId: json['program_id'] as String?,
  levelId: json['level_id'] as String?,
  classId: json['class_id'] as String?,
  boardId: json['board_id'] as String?,
  groupId: json['group_id'] as String?,
  subjectIds: (json['subject_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  examTargetIds: (json['exam_target_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  preferredLanguage: json['preferred_language'] as String,
);

Map<String, dynamic> _$AcademicPreferencesWriteRequestToJson(
  _AcademicPreferencesWriteRequest instance,
) => <String, dynamic>{
  'program_id': instance.programId,
  'level_id': instance.levelId,
  'class_id': instance.classId,
  'board_id': instance.boardId,
  'group_id': instance.groupId,
  'subject_ids': instance.subjectIds,
  'exam_target_ids': instance.examTargetIds,
  'preferred_language': instance.preferredLanguage,
};

_PlaybackTrackDto _$PlaybackTrackDtoFromJson(Map<String, dynamic> json) =>
    _PlaybackTrackDto(
      id: json['id'] as String,
      type: json['type'] as String,
      language: json['language'] as String,
      label: json['label'] as String,
      isDefault: json['is_default'] as bool,
      contentType: json['content_type'] as String,
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$PlaybackTrackDtoToJson(_PlaybackTrackDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'language': instance.language,
      'label': instance.label,
      'is_default': instance.isDefault,
      'content_type': instance.contentType,
      'duration_seconds': instance.durationSeconds,
      'url': instance.url,
    };

_PlaybackMetadataDto _$PlaybackMetadataDtoFromJson(Map<String, dynamic> json) =>
    _PlaybackMetadataDto(
      mediaAssetId: json['media_asset_id'] as String,
      contentType: json['content_type'] as String,
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String,
      tracks:
          (json['tracks'] as List<dynamic>?)
              ?.map((e) => PlaybackTrackDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PlaybackTrackDto>[],
    );

Map<String, dynamic> _$PlaybackMetadataDtoToJson(
  _PlaybackMetadataDto instance,
) => <String, dynamic>{
  'media_asset_id': instance.mediaAssetId,
  'content_type': instance.contentType,
  'duration_seconds': instance.durationSeconds,
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
  'tracks': instance.tracks,
};

_MediaProcessingStatusDto _$MediaProcessingStatusDtoFromJson(
  Map<String, dynamic> json,
) => _MediaProcessingStatusDto(
  id: json['id'] as String,
  status: json['status'] as String,
  processingProgress: (json['processing_progress'] as num).toInt(),
  processingAttempts: (json['processing_attempts'] as num).toInt(),
);

Map<String, dynamic> _$MediaProcessingStatusDtoToJson(
  _MediaProcessingStatusDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'processing_progress': instance.processingProgress,
  'processing_attempts': instance.processingAttempts,
};

_ContinueLearningDto _$ContinueLearningDtoFromJson(Map<String, dynamic> json) =>
    _ContinueLearningDto(
      enrollmentId: json['enrollment_id'] as String,
      courseId: json['course_id'] as String,
      courseTitle: json['course_title'] as String,
      courseSlug: json['course_slug'] as String,
      thumbnailAssetId: json['thumbnail_asset_id'] as String?,
      completionPercentage: (json['completion_percentage'] as num).toDouble(),
      lessonId: json['lesson_id'] as String,
      lessonTitle: json['lesson_title'] as String,
      positionSeconds: (json['position_seconds'] as num).toInt(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ContinueLearningDtoToJson(
  _ContinueLearningDto instance,
) => <String, dynamic>{
  'enrollment_id': instance.enrollmentId,
  'course_id': instance.courseId,
  'course_title': instance.courseTitle,
  'course_slug': instance.courseSlug,
  'thumbnail_asset_id': instance.thumbnailAssetId,
  'completion_percentage': instance.completionPercentage,
  'lesson_id': instance.lessonId,
  'lesson_title': instance.lessonTitle,
  'position_seconds': instance.positionSeconds,
  'updated_at': instance.updatedAt.toIso8601String(),
};

_DashboardLiveClassDto _$DashboardLiveClassDtoFromJson(
  Map<String, dynamic> json,
) => _DashboardLiveClassDto(
  id: json['id'] as String,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  title: json['title'] as String,
  courseTitle: json['course_title'] as String,
  scheduledStartAt: DateTime.parse(json['scheduled_start_at'] as String),
  scheduledEndAt: DateTime.parse(json['scheduled_end_at'] as String),
  status: json['status'] as String,
);

Map<String, dynamic> _$DashboardLiveClassDtoToJson(
  _DashboardLiveClassDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'title': instance.title,
  'course_title': instance.courseTitle,
  'scheduled_start_at': instance.scheduledStartAt.toIso8601String(),
  'scheduled_end_at': instance.scheduledEndAt.toIso8601String(),
  'status': instance.status,
};

_DashboardQuizDto _$DashboardQuizDtoFromJson(Map<String, dynamic> json) =>
    _DashboardQuizDto(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      batchId: json['batch_id'] as String?,
      title: json['title'] as String,
      courseTitle: json['course_title'] as String,
      availableUntil: json['available_until'] == null
          ? null
          : DateTime.parse(json['available_until'] as String),
    );

Map<String, dynamic> _$DashboardQuizDtoToJson(_DashboardQuizDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'batch_id': instance.batchId,
      'title': instance.title,
      'course_title': instance.courseTitle,
      'available_until': instance.availableUntil?.toIso8601String(),
    };

_DashboardAssignmentDto _$DashboardAssignmentDtoFromJson(
  Map<String, dynamic> json,
) => _DashboardAssignmentDto(
  id: json['id'] as String,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  title: json['title'] as String,
  courseTitle: json['course_title'] as String,
  dueAt: DateTime.parse(json['due_at'] as String),
);

Map<String, dynamic> _$DashboardAssignmentDtoToJson(
  _DashboardAssignmentDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'title': instance.title,
  'course_title': instance.courseTitle,
  'due_at': instance.dueAt.toIso8601String(),
};

_DashboardResultDto _$DashboardResultDtoFromJson(Map<String, dynamic> json) =>
    _DashboardResultDto(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      courseTitle: json['course_title'] as String,
      finalPercentage: (json['final_percentage'] as num).toDouble(),
      passed: json['passed'] as bool,
      calculatedAt: DateTime.parse(json['calculated_at'] as String),
    );

Map<String, dynamic> _$DashboardResultDtoToJson(_DashboardResultDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'course_title': instance.courseTitle,
      'final_percentage': instance.finalPercentage,
      'passed': instance.passed,
      'calculated_at': instance.calculatedAt.toIso8601String(),
    };

_RecommendedCourseDto _$RecommendedCourseDtoFromJson(
  Map<String, dynamic> json,
) => _RecommendedCourseDto(
  id: json['id'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String? ?? '',
  thumbnailAssetId: json['thumbnail_asset_id'] as String?,
  language: json['language'] as String? ?? 'bn',
  isFree: json['is_free'] as bool? ?? false,
  priceMinor: (json['price_minor'] as num?)?.toInt() ?? 0,
  currency: json['currency'] as String? ?? 'BDT',
  publishedAt: json['published_at'] == null
      ? null
      : DateTime.parse(json['published_at'] as String),
  reason: json['reason'] as String? ?? '',
  matchScore: (json['match_score'] as num?)?.toInt() ?? 0,
  matchedOn:
      (json['matched_on'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$RecommendedCourseDtoToJson(
  _RecommendedCourseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'slug': instance.slug,
  'description': instance.description,
  'thumbnail_asset_id': instance.thumbnailAssetId,
  'language': instance.language,
  'is_free': instance.isFree,
  'price_minor': instance.priceMinor,
  'currency': instance.currency,
  'published_at': instance.publishedAt?.toIso8601String(),
  'reason': instance.reason,
  'match_score': instance.matchScore,
  'matched_on': instance.matchedOn,
};

_StudentDashboardDto _$StudentDashboardDtoFromJson(
  Map<String, dynamic> json,
) => _StudentDashboardDto(
  generatedAt: DateTime.parse(json['generated_at'] as String),
  continueLearning:
      (json['continue_learning'] as List<dynamic>?)
          ?.map((e) => ContinueLearningDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ContinueLearningDto>[],
  upcomingLiveClasses:
      (json['upcoming_live_classes'] as List<dynamic>?)
          ?.map(
            (e) => DashboardLiveClassDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <DashboardLiveClassDto>[],
  dueAssignments:
      (json['due_assignments'] as List<dynamic>?)
          ?.map(
            (e) => DashboardAssignmentDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <DashboardAssignmentDto>[],
  availableQuizzes:
      (json['available_quizzes'] as List<dynamic>?)
          ?.map((e) => DashboardQuizDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DashboardQuizDto>[],
  recentResults:
      (json['recent_results'] as List<dynamic>?)
          ?.map((e) => DashboardResultDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DashboardResultDto>[],
  recommendedCourses:
      (json['recommended_courses'] as List<dynamic>?)
          ?.map((e) => RecommendedCourseDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <RecommendedCourseDto>[],
  unreadNotificationCount:
      (json['unread_notification_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StudentDashboardDtoToJson(
  _StudentDashboardDto instance,
) => <String, dynamic>{
  'generated_at': instance.generatedAt.toIso8601String(),
  'continue_learning': instance.continueLearning,
  'upcoming_live_classes': instance.upcomingLiveClasses,
  'due_assignments': instance.dueAssignments,
  'available_quizzes': instance.availableQuizzes,
  'recent_results': instance.recentResults,
  'recommended_courses': instance.recommendedCourses,
  'unread_notification_count': instance.unreadNotificationCount,
};

_StudentLiveClassDto _$StudentLiveClassDtoFromJson(Map<String, dynamic> json) =>
    _StudentLiveClassDto(
      id: json['id'] as String,
      organizationId: json['organization_id'] as String,
      courseId: json['course_id'] as String,
      batchId: json['batch_id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      status: json['status'] as String,
      scheduledStartAt: DateTime.parse(json['scheduled_start_at'] as String),
      scheduledEndAt: DateTime.parse(json['scheduled_end_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      courseTitle: json['course_title'] as String,
    );

Map<String, dynamic> _$StudentLiveClassDtoToJson(
  _StudentLiveClassDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'organization_id': instance.organizationId,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'title': instance.title,
  'description': instance.description,
  'status': instance.status,
  'scheduled_start_at': instance.scheduledStartAt.toIso8601String(),
  'scheduled_end_at': instance.scheduledEndAt.toIso8601String(),
  'started_at': instance.startedAt?.toIso8601String(),
  'ended_at': instance.endedAt?.toIso8601String(),
  'course_title': instance.courseTitle,
};

_StudentQuizDto _$StudentQuizDtoFromJson(Map<String, dynamic> json) =>
    _StudentQuizDto(
      id: json['id'] as String,
      organizationId: json['organization_id'] as String,
      courseId: json['course_id'] as String,
      batchId: json['batch_id'] as String?,
      lessonId: json['lesson_id'] as String?,
      title: json['title'] as String,
      instructions: json['instructions'] as String? ?? '',
      timeLimitSeconds: (json['time_limit_seconds'] as num?)?.toInt(),
      attemptLimit: (json['attempt_limit'] as num).toInt(),
      attemptsUsed: (json['attempts_used'] as num?)?.toInt() ?? 0,
      passPercentage: (json['pass_percentage'] as num).toDouble(),
      availableFrom: json['available_from'] == null
          ? null
          : DateTime.parse(json['available_from'] as String),
      availableUntil: json['available_until'] == null
          ? null
          : DateTime.parse(json['available_until'] as String),
      resultsVisibility: json['results_visibility'] as String,
      isRequired: json['is_required'] as bool? ?? false,
      courseTitle: json['course_title'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$StudentQuizDtoToJson(_StudentQuizDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'course_id': instance.courseId,
      'batch_id': instance.batchId,
      'lesson_id': instance.lessonId,
      'title': instance.title,
      'instructions': instance.instructions,
      'time_limit_seconds': instance.timeLimitSeconds,
      'attempt_limit': instance.attemptLimit,
      'attempts_used': instance.attemptsUsed,
      'pass_percentage': instance.passPercentage,
      'available_from': instance.availableFrom?.toIso8601String(),
      'available_until': instance.availableUntil?.toIso8601String(),
      'results_visibility': instance.resultsVisibility,
      'is_required': instance.isRequired,
      'course_title': instance.courseTitle,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_StudentAssignmentDto _$StudentAssignmentDtoFromJson(
  Map<String, dynamic> json,
) => _StudentAssignmentDto(
  id: json['id'] as String,
  organizationId: json['organization_id'] as String,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  lessonId: json['lesson_id'] as String?,
  title: json['title'] as String,
  instructions: json['instructions'] as String? ?? '',
  dueAt: json['due_at'] == null
      ? null
      : DateTime.parse(json['due_at'] as String),
  maximumScore: (json['maximum_score'] as num).toDouble(),
  passingScore: (json['passing_score'] as num).toDouble(),
  allowedFileTypes:
      (json['allowed_file_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  maximumSubmissions: (json['maximum_submissions'] as num?)?.toInt() ?? 1,
  isRequired: json['is_required'] as bool? ?? false,
  courseTitle: json['course_title'] as String,
  submissionId: json['submission_id'] as String?,
  submissionStatus: json['submission_status'] as String,
  submittedAt: json['submitted_at'] == null
      ? null
      : DateTime.parse(json['submitted_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StudentAssignmentDtoToJson(
  _StudentAssignmentDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'organization_id': instance.organizationId,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'lesson_id': instance.lessonId,
  'title': instance.title,
  'instructions': instance.instructions,
  'due_at': instance.dueAt?.toIso8601String(),
  'maximum_score': instance.maximumScore,
  'passing_score': instance.passingScore,
  'allowed_file_types': instance.allowedFileTypes,
  'maximum_submissions': instance.maximumSubmissions,
  'is_required': instance.isRequired,
  'course_title': instance.courseTitle,
  'submission_id': instance.submissionId,
  'submission_status': instance.submissionStatus,
  'submitted_at': instance.submittedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_StudentSubmissionDto _$StudentSubmissionDtoFromJson(
  Map<String, dynamic> json,
) => _StudentSubmissionDto(
  id: json['id'] as String,
  assignmentId: json['assignment_id'] as String,
  enrollmentId: json['enrollment_id'] as String,
  submissionNumber: (json['submission_number'] as num).toInt(),
  status: json['status'] as String,
  textContent: json['text_content'] as String? ?? '',
  submittedAt: json['submitted_at'] == null
      ? null
      : DateTime.parse(json['submitted_at'] as String),
  assignmentTitle: json['assignment_title'] as String,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  courseTitle: json['course_title'] as String,
  points: (json['points'] as num?)?.toDouble(),
  percentage: (json['percentage'] as num?)?.toDouble(),
  feedback: json['feedback'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StudentSubmissionDtoToJson(
  _StudentSubmissionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'assignment_id': instance.assignmentId,
  'enrollment_id': instance.enrollmentId,
  'submission_number': instance.submissionNumber,
  'status': instance.status,
  'text_content': instance.textContent,
  'submitted_at': instance.submittedAt?.toIso8601String(),
  'assignment_title': instance.assignmentTitle,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'course_title': instance.courseTitle,
  'points': instance.points,
  'percentage': instance.percentage,
  'feedback': instance.feedback,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_StudentCalendarItemDto _$StudentCalendarItemDtoFromJson(
  Map<String, dynamic> json,
) => _StudentCalendarItemDto(
  type: json['type'] as String,
  entityId: json['entity_id'] as String,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  title: json['title'] as String,
  startsAt: DateTime.parse(json['starts_at'] as String),
  endsAt: json['ends_at'] == null
      ? null
      : DateTime.parse(json['ends_at'] as String),
  status: json['status'] as String,
);

Map<String, dynamic> _$StudentCalendarItemDtoToJson(
  _StudentCalendarItemDto instance,
) => <String, dynamic>{
  'type': instance.type,
  'entity_id': instance.entityId,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'title': instance.title,
  'starts_at': instance.startsAt.toIso8601String(),
  'ends_at': instance.endsAt?.toIso8601String(),
  'status': instance.status,
};

_StudentCalendarDto _$StudentCalendarDtoFromJson(Map<String, dynamic> json) =>
    _StudentCalendarDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) =>
                    StudentCalendarItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <StudentCalendarItemDto>[],
      fromDate: DateTime.parse(json['from'] as String),
      toDate: DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$StudentCalendarDtoToJson(_StudentCalendarDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'from': instance.fromDate.toIso8601String(),
      'to': instance.toDate.toIso8601String(),
    };

_PublicOptionDto _$PublicOptionDtoFromJson(Map<String, dynamic> json) =>
    _PublicOptionDto(
      id: json['id'] as String,
      text: json['text'] as String,
      correct: json['correct'] as bool?,
    );

Map<String, dynamic> _$PublicOptionDtoToJson(_PublicOptionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'correct': instance.correct,
    };

_PublicQuestionDto _$PublicQuestionDtoFromJson(Map<String, dynamic> json) =>
    _PublicQuestionDto(
      id: json['id'] as String,
      sectionId: json['section_id'] as String?,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String?,
      prompt: json['prompt'] as String,
      points: (json['points'] as num).toDouble(),
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => PublicOptionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PublicOptionDto>[],
    );

Map<String, dynamic> _$PublicQuestionDtoToJson(_PublicQuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'section_id': instance.sectionId,
      'type': instance.type,
      'difficulty': instance.difficulty,
      'prompt': instance.prompt,
      'points': instance.points,
      'options': instance.options,
    };

_ExamDto _$ExamDtoFromJson(Map<String, dynamic> json) => _ExamDto(
  id: json['id'] as String,
  organizationId: json['organization_id'] as String?,
  courseId: json['course_id'] as String,
  batchId: json['batch_id'] as String?,
  courseTitle: json['course_title'] as String?,
  title: json['title'] as String,
  instructions: json['instructions'] as String? ?? '',
  status: json['status'] as String,
  attemptLimit: (json['attempt_limit'] as num).toInt(),
  attemptsUsed: (json['attempts_used'] as num?)?.toInt() ?? 0,
  passPercentage: (json['pass_percentage'] as num).toDouble(),
  assessmentMode: json['assessment_mode'] as String,
  negativeMarkPerWrong: (json['negative_mark_per_wrong'] as num).toDouble(),
  minimumScore: (json['minimum_score'] as num).toDouble(),
  durationSeconds: (json['duration_seconds'] as num).toInt(),
  startsAt: DateTime.parse(json['starts_at'] as String),
  endsAt: DateTime.parse(json['ends_at'] as String),
  autoSubmit: json['auto_submit'] as bool,
  rankEnabled: json['rank_enabled'] as bool,
  answerReviewAt: json['answer_review_at'] == null
      ? null
      : DateTime.parse(json['answer_review_at'] as String),
  selectionStrategy: json['question_selection_strategy'] as String?,
  version: (json['version'] as num?)?.toInt(),
);

Map<String, dynamic> _$ExamDtoToJson(_ExamDto instance) => <String, dynamic>{
  'id': instance.id,
  'organization_id': instance.organizationId,
  'course_id': instance.courseId,
  'batch_id': instance.batchId,
  'course_title': instance.courseTitle,
  'title': instance.title,
  'instructions': instance.instructions,
  'status': instance.status,
  'attempt_limit': instance.attemptLimit,
  'attempts_used': instance.attemptsUsed,
  'pass_percentage': instance.passPercentage,
  'assessment_mode': instance.assessmentMode,
  'negative_mark_per_wrong': instance.negativeMarkPerWrong,
  'minimum_score': instance.minimumScore,
  'duration_seconds': instance.durationSeconds,
  'starts_at': instance.startsAt.toIso8601String(),
  'ends_at': instance.endsAt.toIso8601String(),
  'auto_submit': instance.autoSubmit,
  'rank_enabled': instance.rankEnabled,
  'answer_review_at': instance.answerReviewAt?.toIso8601String(),
  'question_selection_strategy': instance.selectionStrategy,
  'version': instance.version,
};

_ExamAttemptDto _$ExamAttemptDtoFromJson(Map<String, dynamic> json) =>
    _ExamAttemptDto(
      id: json['id'] as String,
      examId: json['quiz_id'] as String,
      attemptNumber: (json['attempt_number'] as num).toInt(),
      status: json['status'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      submitBefore: json['submit_before'] == null
          ? null
          : DateTime.parse(json['submit_before'] as String),
      questions:
          (json['questions'] as List<dynamic>?)
              ?.map(
                (e) => PublicQuestionDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <PublicQuestionDto>[],
      percentage: (json['percentage'] as num?)?.toDouble(),
      passed: json['passed'] as bool?,
    );

Map<String, dynamic> _$ExamAttemptDtoToJson(_ExamAttemptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quiz_id': instance.examId,
      'attempt_number': instance.attemptNumber,
      'status': instance.status,
      'started_at': instance.startedAt.toIso8601String(),
      'expires_at': instance.expiresAt?.toIso8601String(),
      'submit_before': instance.submitBefore?.toIso8601String(),
      'questions': instance.questions,
      'percentage': instance.percentage,
      'passed': instance.passed,
    };

_LeaderboardEntryDto _$LeaderboardEntryDtoFromJson(Map<String, dynamic> json) =>
    _LeaderboardEntryDto(
      position: (json['position'] as num).toInt(),
      attemptId: json['attempt_id'] as String,
      studentId: json['student_id'] as String,
      displayName: json['display_name'] as String,
      scorePoints: (json['score_points'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
      completionDurationSeconds: (json['completion_duration_seconds'] as num)
          .toInt(),
      submittedAt: DateTime.parse(json['submitted_at'] as String),
    );

Map<String, dynamic> _$LeaderboardEntryDtoToJson(
  _LeaderboardEntryDto instance,
) => <String, dynamic>{
  'position': instance.position,
  'attempt_id': instance.attemptId,
  'student_id': instance.studentId,
  'display_name': instance.displayName,
  'score_points': instance.scorePoints,
  'percentage': instance.percentage,
  'completion_duration_seconds': instance.completionDurationSeconds,
  'submitted_at': instance.submittedAt.toIso8601String(),
};

_ExamLeaderboardDto _$ExamLeaderboardDtoFromJson(Map<String, dynamic> json) =>
    _ExamLeaderboardDto(
      scope: json['scope'] as String,
      order:
          (json['order'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => LeaderboardEntryDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <LeaderboardEntryDto>[],
    );

Map<String, dynamic> _$ExamLeaderboardDtoToJson(_ExamLeaderboardDto instance) =>
    <String, dynamic>{
      'scope': instance.scope,
      'order': instance.order,
      'items': instance.items,
    };
