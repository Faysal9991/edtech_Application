// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: json['id'] as String,
  title: json['title'] as String,
  category: json['category'] as String,
  instructor: json['instructor'] as String,
  duration: json['duration'] as String,
  lessons: (json['lessons'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  colorValue: (json['colorValue'] as num).toInt(),
  completedLessons: (json['completedLessons'] as num?)?.toInt() ?? 0,
  isBookmarked: json['isBookmarked'] as bool? ?? false,
  educationLevel: json['educationLevel'] as String? ?? 'admission',
  subject: json['subject'] as String? ?? 'General',
  language: json['language'] as String? ?? 'বাংলা',
  admissionTarget: json['admissionTarget'] as String? ?? '',
  studentCount: (json['studentCount'] as num?)?.toInt() ?? 0,
  priceMinor: (json['priceMinor'] as num?)?.toInt() ?? 0,
  isFree: json['isFree'] as bool? ?? false,
  overview: json['overview'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  organizationId: json['organizationId'] as String? ?? '',
  level: json['level'] as String? ?? 'all',
  status: json['status'] as String? ?? 'published',
  currency: json['currency'] as String? ?? 'BDT',
  thumbnailAssetId: json['thumbnailAssetId'] as String?,
  enrollmentId: json['enrollmentId'] as String?,
  modules:
      (json['modules'] as List<dynamic>?)
          ?.map((e) => CourseModule.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CourseModule>[],
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'category': instance.category,
  'instructor': instance.instructor,
  'duration': instance.duration,
  'lessons': instance.lessons,
  'rating': instance.rating,
  'colorValue': instance.colorValue,
  'completedLessons': instance.completedLessons,
  'isBookmarked': instance.isBookmarked,
  'educationLevel': instance.educationLevel,
  'subject': instance.subject,
  'language': instance.language,
  'admissionTarget': instance.admissionTarget,
  'studentCount': instance.studentCount,
  'priceMinor': instance.priceMinor,
  'isFree': instance.isFree,
  'overview': instance.overview,
  'slug': instance.slug,
  'organizationId': instance.organizationId,
  'level': instance.level,
  'status': instance.status,
  'currency': instance.currency,
  'thumbnailAssetId': instance.thumbnailAssetId,
  'enrollmentId': instance.enrollmentId,
  'modules': instance.modules,
};

_CourseModule _$CourseModuleFromJson(Map<String, dynamic> json) =>
    _CourseModule(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      position: (json['position'] as num?)?.toInt() ?? 0,
      lessons:
          (json['lessons'] as List<dynamic>?)
              ?.map((e) => CourseLesson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CourseLesson>[],
    );

Map<String, dynamic> _$CourseModuleToJson(_CourseModule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'position': instance.position,
      'lessons': instance.lessons,
    };

_CourseLesson _$CourseLessonFromJson(Map<String, dynamic> json) =>
    _CourseLesson(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? 'text',
      position: (json['position'] as num?)?.toInt() ?? 0,
      isPreview: json['isPreview'] as bool? ?? false,
      isRequired: json['isRequired'] as bool? ?? false,
      isPublished: json['isPublished'] as bool? ?? true,
      durationSeconds: (json['durationSeconds'] as num?)?.toInt(),
      mediaAssetId: json['mediaAssetId'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$CourseLessonToJson(_CourseLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'position': instance.position,
      'isPreview': instance.isPreview,
      'isRequired': instance.isRequired,
      'isPublished': instance.isPublished,
      'durationSeconds': instance.durationSeconds,
      'mediaAssetId': instance.mediaAssetId,
      'body': instance.body,
    };
