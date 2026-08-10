// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get instructor => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  int get lessons => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  int get completedLessons => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  String get educationLevel => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get admissionTarget => throw _privateConstructorUsedError;
  int get studentCount => throw _privateConstructorUsedError;
  int get priceMinor => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get thumbnailAssetId => throw _privateConstructorUsedError;
  String? get enrollmentId => throw _privateConstructorUsedError;
  List<CourseModule> get modules => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String instructor,
      String duration,
      int lessons,
      double rating,
      int colorValue,
      int completedLessons,
      bool isBookmarked,
      String educationLevel,
      String subject,
      String language,
      String admissionTarget,
      int studentCount,
      int priceMinor,
      bool isFree,
      String overview,
      String slug,
      String organizationId,
      String level,
      String status,
      String currency,
      String? thumbnailAssetId,
      String? enrollmentId,
      List<CourseModule> modules});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? instructor = null,
    Object? duration = null,
    Object? lessons = null,
    Object? rating = null,
    Object? colorValue = null,
    Object? completedLessons = null,
    Object? isBookmarked = null,
    Object? educationLevel = null,
    Object? subject = null,
    Object? language = null,
    Object? admissionTarget = null,
    Object? studentCount = null,
    Object? priceMinor = null,
    Object? isFree = null,
    Object? overview = null,
    Object? slug = null,
    Object? organizationId = null,
    Object? level = null,
    Object? status = null,
    Object? currency = null,
    Object? thumbnailAssetId = freezed,
    Object? enrollmentId = freezed,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      completedLessons: null == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      admissionTarget: null == admissionTarget
          ? _value.admissionTarget
          : admissionTarget // ignore: cast_nullable_to_non_nullable
              as String,
      studentCount: null == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int,
      priceMinor: null == priceMinor
          ? _value.priceMinor
          : priceMinor // ignore: cast_nullable_to_non_nullable
              as int,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseModule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String instructor,
      String duration,
      int lessons,
      double rating,
      int colorValue,
      int completedLessons,
      bool isBookmarked,
      String educationLevel,
      String subject,
      String language,
      String admissionTarget,
      int studentCount,
      int priceMinor,
      bool isFree,
      String overview,
      String slug,
      String organizationId,
      String level,
      String status,
      String currency,
      String? thumbnailAssetId,
      String? enrollmentId,
      List<CourseModule> modules});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? instructor = null,
    Object? duration = null,
    Object? lessons = null,
    Object? rating = null,
    Object? colorValue = null,
    Object? completedLessons = null,
    Object? isBookmarked = null,
    Object? educationLevel = null,
    Object? subject = null,
    Object? language = null,
    Object? admissionTarget = null,
    Object? studentCount = null,
    Object? priceMinor = null,
    Object? isFree = null,
    Object? overview = null,
    Object? slug = null,
    Object? organizationId = null,
    Object? level = null,
    Object? status = null,
    Object? currency = null,
    Object? thumbnailAssetId = freezed,
    Object? enrollmentId = freezed,
    Object? modules = null,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      completedLessons: null == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      admissionTarget: null == admissionTarget
          ? _value.admissionTarget
          : admissionTarget // ignore: cast_nullable_to_non_nullable
              as String,
      studentCount: null == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int,
      priceMinor: null == priceMinor
          ? _value.priceMinor
          : priceMinor // ignore: cast_nullable_to_non_nullable
              as int,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentId: freezed == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseModule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl extends _Course {
  const _$CourseImpl(
      {required this.id,
      required this.title,
      required this.category,
      required this.instructor,
      required this.duration,
      required this.lessons,
      required this.rating,
      required this.colorValue,
      this.completedLessons = 0,
      this.isBookmarked = false,
      this.educationLevel = 'admission',
      this.subject = 'General',
      this.language = 'বাংলা',
      this.admissionTarget = '',
      this.studentCount = 0,
      this.priceMinor = 0,
      this.isFree = false,
      this.overview = '',
      this.slug = '',
      this.organizationId = '',
      this.level = 'all',
      this.status = 'published',
      this.currency = 'BDT',
      this.thumbnailAssetId,
      this.enrollmentId,
      final List<CourseModule> modules = const <CourseModule>[]})
      : _modules = modules,
        super._();

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  final String instructor;
  @override
  final String duration;
  @override
  final int lessons;
  @override
  final double rating;
  @override
  final int colorValue;
  @override
  @JsonKey()
  final int completedLessons;
  @override
  @JsonKey()
  final bool isBookmarked;
  @override
  @JsonKey()
  final String educationLevel;
  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String admissionTarget;
  @override
  @JsonKey()
  final int studentCount;
  @override
  @JsonKey()
  final int priceMinor;
  @override
  @JsonKey()
  final bool isFree;
  @override
  @JsonKey()
  final String overview;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String organizationId;
  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String currency;
  @override
  final String? thumbnailAssetId;
  @override
  final String? enrollmentId;
  final List<CourseModule> _modules;
  @override
  @JsonKey()
  List<CourseModule> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'Course(id: $id, title: $title, category: $category, instructor: $instructor, duration: $duration, lessons: $lessons, rating: $rating, colorValue: $colorValue, completedLessons: $completedLessons, isBookmarked: $isBookmarked, educationLevel: $educationLevel, subject: $subject, language: $language, admissionTarget: $admissionTarget, studentCount: $studentCount, priceMinor: $priceMinor, isFree: $isFree, overview: $overview, slug: $slug, organizationId: $organizationId, level: $level, status: $status, currency: $currency, thumbnailAssetId: $thumbnailAssetId, enrollmentId: $enrollmentId, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.lessons, lessons) || other.lessons == lessons) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue) &&
            (identical(other.completedLessons, completedLessons) ||
                other.completedLessons == completedLessons) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.admissionTarget, admissionTarget) ||
                other.admissionTarget == admissionTarget) &&
            (identical(other.studentCount, studentCount) ||
                other.studentCount == studentCount) &&
            (identical(other.priceMinor, priceMinor) ||
                other.priceMinor == priceMinor) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.thumbnailAssetId, thumbnailAssetId) ||
                other.thumbnailAssetId == thumbnailAssetId) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        category,
        instructor,
        duration,
        lessons,
        rating,
        colorValue,
        completedLessons,
        isBookmarked,
        educationLevel,
        subject,
        language,
        admissionTarget,
        studentCount,
        priceMinor,
        isFree,
        overview,
        slug,
        organizationId,
        level,
        status,
        currency,
        thumbnailAssetId,
        enrollmentId,
        const DeepCollectionEquality().hash(_modules)
      ]);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course extends Course {
  const factory _Course(
      {required final String id,
      required final String title,
      required final String category,
      required final String instructor,
      required final String duration,
      required final int lessons,
      required final double rating,
      required final int colorValue,
      final int completedLessons,
      final bool isBookmarked,
      final String educationLevel,
      final String subject,
      final String language,
      final String admissionTarget,
      final int studentCount,
      final int priceMinor,
      final bool isFree,
      final String overview,
      final String slug,
      final String organizationId,
      final String level,
      final String status,
      final String currency,
      final String? thumbnailAssetId,
      final String? enrollmentId,
      final List<CourseModule> modules}) = _$CourseImpl;
  const _Course._() : super._();

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;
  @override
  String get instructor;
  @override
  String get duration;
  @override
  int get lessons;
  @override
  double get rating;
  @override
  int get colorValue;
  @override
  int get completedLessons;
  @override
  bool get isBookmarked;
  @override
  String get educationLevel;
  @override
  String get subject;
  @override
  String get language;
  @override
  String get admissionTarget;
  @override
  int get studentCount;
  @override
  int get priceMinor;
  @override
  bool get isFree;
  @override
  String get overview;
  @override
  String get slug;
  @override
  String get organizationId;
  @override
  String get level;
  @override
  String get status;
  @override
  String get currency;
  @override
  String? get thumbnailAssetId;
  @override
  String? get enrollmentId;
  @override
  List<CourseModule> get modules;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseModule _$CourseModuleFromJson(Map<String, dynamic> json) {
  return _CourseModule.fromJson(json);
}

/// @nodoc
mixin _$CourseModule {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<CourseLesson> get lessons => throw _privateConstructorUsedError;

  /// Serializes this CourseModule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseModule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseModuleCopyWith<CourseModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModuleCopyWith<$Res> {
  factory $CourseModuleCopyWith(
          CourseModule value, $Res Function(CourseModule) then) =
      _$CourseModuleCopyWithImpl<$Res, CourseModule>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int position,
      List<CourseLesson> lessons});
}

/// @nodoc
class _$CourseModuleCopyWithImpl<$Res, $Val extends CourseModule>
    implements $CourseModuleCopyWith<$Res> {
  _$CourseModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseModule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? position = null,
    Object? lessons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLesson>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseModuleImplCopyWith<$Res>
    implements $CourseModuleCopyWith<$Res> {
  factory _$$CourseModuleImplCopyWith(
          _$CourseModuleImpl value, $Res Function(_$CourseModuleImpl) then) =
      __$$CourseModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int position,
      List<CourseLesson> lessons});
}

/// @nodoc
class __$$CourseModuleImplCopyWithImpl<$Res>
    extends _$CourseModuleCopyWithImpl<$Res, _$CourseModuleImpl>
    implements _$$CourseModuleImplCopyWith<$Res> {
  __$$CourseModuleImplCopyWithImpl(
      _$CourseModuleImpl _value, $Res Function(_$CourseModuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseModule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? position = null,
    Object? lessons = null,
  }) {
    return _then(_$CourseModuleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLesson>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModuleImpl implements _CourseModule {
  const _$CourseModuleImpl(
      {required this.id,
      required this.title,
      this.description = '',
      this.position = 0,
      final List<CourseLesson> lessons = const <CourseLesson>[]})
      : _lessons = lessons;

  factory _$CourseModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModuleImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int position;
  final List<CourseLesson> _lessons;
  @override
  @JsonKey()
  List<CourseLesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'CourseModule(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, position,
      const DeepCollectionEquality().hash(_lessons));

  /// Create a copy of CourseModule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModuleImplCopyWith<_$CourseModuleImpl> get copyWith =>
      __$$CourseModuleImplCopyWithImpl<_$CourseModuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModuleImplToJson(
      this,
    );
  }
}

abstract class _CourseModule implements CourseModule {
  const factory _CourseModule(
      {required final String id,
      required final String title,
      final String description,
      final int position,
      final List<CourseLesson> lessons}) = _$CourseModuleImpl;

  factory _CourseModule.fromJson(Map<String, dynamic> json) =
      _$CourseModuleImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get position;
  @override
  List<CourseLesson> get lessons;

  /// Create a copy of CourseModule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseModuleImplCopyWith<_$CourseModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseLesson _$CourseLessonFromJson(Map<String, dynamic> json) {
  return _CourseLesson.fromJson(json);
}

/// @nodoc
mixin _$CourseLesson {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get isPreview => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  int? get durationSeconds => throw _privateConstructorUsedError;
  String? get mediaAssetId => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this CourseLesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseLessonCopyWith<CourseLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseLessonCopyWith<$Res> {
  factory $CourseLessonCopyWith(
          CourseLesson value, $Res Function(CourseLesson) then) =
      _$CourseLessonCopyWithImpl<$Res, CourseLesson>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      int position,
      bool isPreview,
      bool isRequired,
      bool isPublished,
      int? durationSeconds,
      String? mediaAssetId,
      String? body});
}

/// @nodoc
class _$CourseLessonCopyWithImpl<$Res, $Val extends CourseLesson>
    implements $CourseLessonCopyWith<$Res> {
  _$CourseLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? position = null,
    Object? isPreview = null,
    Object? isRequired = null,
    Object? isPublished = null,
    Object? durationSeconds = freezed,
    Object? mediaAssetId = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isPreview: null == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaAssetId: freezed == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseLessonImplCopyWith<$Res>
    implements $CourseLessonCopyWith<$Res> {
  factory _$$CourseLessonImplCopyWith(
          _$CourseLessonImpl value, $Res Function(_$CourseLessonImpl) then) =
      __$$CourseLessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      int position,
      bool isPreview,
      bool isRequired,
      bool isPublished,
      int? durationSeconds,
      String? mediaAssetId,
      String? body});
}

/// @nodoc
class __$$CourseLessonImplCopyWithImpl<$Res>
    extends _$CourseLessonCopyWithImpl<$Res, _$CourseLessonImpl>
    implements _$$CourseLessonImplCopyWith<$Res> {
  __$$CourseLessonImplCopyWithImpl(
      _$CourseLessonImpl _value, $Res Function(_$CourseLessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? position = null,
    Object? isPreview = null,
    Object? isRequired = null,
    Object? isPublished = null,
    Object? durationSeconds = freezed,
    Object? mediaAssetId = freezed,
    Object? body = freezed,
  }) {
    return _then(_$CourseLessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isPreview: null == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaAssetId: freezed == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseLessonImpl implements _CourseLesson {
  const _$CourseLessonImpl(
      {required this.id,
      required this.title,
      this.description = '',
      this.type = 'text',
      this.position = 0,
      this.isPreview = false,
      this.isRequired = false,
      this.isPublished = true,
      this.durationSeconds,
      this.mediaAssetId,
      this.body});

  factory _$CourseLessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseLessonImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey()
  final bool isPreview;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final bool isPublished;
  @override
  final int? durationSeconds;
  @override
  final String? mediaAssetId;
  @override
  final String? body;

  @override
  String toString() {
    return 'CourseLesson(id: $id, title: $title, description: $description, type: $type, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseLessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.mediaAssetId, mediaAssetId) ||
                other.mediaAssetId == mediaAssetId) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      position,
      isPreview,
      isRequired,
      isPublished,
      durationSeconds,
      mediaAssetId,
      body);

  /// Create a copy of CourseLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseLessonImplCopyWith<_$CourseLessonImpl> get copyWith =>
      __$$CourseLessonImplCopyWithImpl<_$CourseLessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseLessonImplToJson(
      this,
    );
  }
}

abstract class _CourseLesson implements CourseLesson {
  const factory _CourseLesson(
      {required final String id,
      required final String title,
      final String description,
      final String type,
      final int position,
      final bool isPreview,
      final bool isRequired,
      final bool isPublished,
      final int? durationSeconds,
      final String? mediaAssetId,
      final String? body}) = _$CourseLessonImpl;

  factory _CourseLesson.fromJson(Map<String, dynamic> json) =
      _$CourseLessonImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  int get position;
  @override
  bool get isPreview;
  @override
  bool get isRequired;
  @override
  bool get isPublished;
  @override
  int? get durationSeconds;
  @override
  String? get mediaAssetId;
  @override
  String? get body;

  /// Create a copy of CourseLesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseLessonImplCopyWith<_$CourseLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
