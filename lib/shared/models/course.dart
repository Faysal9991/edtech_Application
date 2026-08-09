import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
abstract class Course with _$Course {
  const Course._();

  const factory Course({
    required String id,
    required String title,
    required String category,
    required String instructor,
    required String duration,
    required int lessons,
    required double rating,
    required int colorValue,
    @Default(0) int completedLessons,
    @Default(false) bool isBookmarked,
    @Default('admission') String educationLevel,
    @Default('General') String subject,
    @Default('বাংলা') String language,
    @Default('') String admissionTarget,
    @Default(0) int studentCount,
    @Default(0) int priceMinor,
    @Default(false) bool isFree,
    @Default('') String overview,
    @Default('') String slug,
    @Default('') String organizationId,
    @Default('all') String level,
    @Default('published') String status,
    @Default('BDT') String currency,
    String? thumbnailAssetId,
    String? enrollmentId,
    @Default(<CourseModule>[]) List<CourseModule> modules,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  double get price => priceMinor / 100;

  String get displayPrice => isFree || priceMinor == 0
      ? 'ফ্রি'
      : '৳${price.toStringAsFixed(price.truncateToDouble() == price ? 0 : 2)}';
}

@freezed
abstract class CourseModule with _$CourseModule {
  const factory CourseModule({
    required String id,
    required String title,
    @Default('') String description,
    @Default(0) int position,
    @Default(<CourseLesson>[]) List<CourseLesson> lessons,
  }) = _CourseModule;

  factory CourseModule.fromJson(Map<String, dynamic> json) =>
      _$CourseModuleFromJson(json);
}

@freezed
abstract class CourseLesson with _$CourseLesson {
  const factory CourseLesson({
    required String id,
    required String title,
    @Default('') String description,
    @Default('text') String type,
    @Default(0) int position,
    @Default(false) bool isPreview,
    @Default(false) bool isRequired,
    @Default(true) bool isPublished,
    int? durationSeconds,
    String? mediaAssetId,
    String? body,
  }) = _CourseLesson;

  factory CourseLesson.fromJson(Map<String, dynamic> json) =>
      _$CourseLessonFromJson(json);
}
