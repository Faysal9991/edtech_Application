// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Course {

 String get id; String get title; String get category; String get instructor; String get duration; int get lessons; double get rating; int get colorValue; int get completedLessons; bool get isBookmarked; String get educationLevel; String get subject; String get language; String get admissionTarget; int get studentCount; int get priceMinor; bool get isFree; String get overview; String get slug; String get organizationId; String get level; String get status; String get currency; String? get thumbnailAssetId; String? get enrollmentId; List<CourseModule> get modules;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.lessons, lessons) || other.lessons == lessons)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.colorValue, colorValue) || other.colorValue == colorValue)&&(identical(other.completedLessons, completedLessons) || other.completedLessons == completedLessons)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.language, language) || other.language == language)&&(identical(other.admissionTarget, admissionTarget) || other.admissionTarget == admissionTarget)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.level, level) || other.level == level)&&(identical(other.status, status) || other.status == status)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&const DeepCollectionEquality().equals(other.modules, modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,category,instructor,duration,lessons,rating,colorValue,completedLessons,isBookmarked,educationLevel,subject,language,admissionTarget,studentCount,priceMinor,isFree,overview,slug,organizationId,level,status,currency,thumbnailAssetId,enrollmentId,const DeepCollectionEquality().hash(modules)]);

@override
String toString() {
  return 'Course(id: $id, title: $title, category: $category, instructor: $instructor, duration: $duration, lessons: $lessons, rating: $rating, colorValue: $colorValue, completedLessons: $completedLessons, isBookmarked: $isBookmarked, educationLevel: $educationLevel, subject: $subject, language: $language, admissionTarget: $admissionTarget, studentCount: $studentCount, priceMinor: $priceMinor, isFree: $isFree, overview: $overview, slug: $slug, organizationId: $organizationId, level: $level, status: $status, currency: $currency, thumbnailAssetId: $thumbnailAssetId, enrollmentId: $enrollmentId, modules: $modules)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String category, String instructor, String duration, int lessons, double rating, int colorValue, int completedLessons, bool isBookmarked, String educationLevel, String subject, String language, String admissionTarget, int studentCount, int priceMinor, bool isFree, String overview, String slug, String organizationId, String level, String status, String currency, String? thumbnailAssetId, String? enrollmentId, List<CourseModule> modules
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? category = null,Object? instructor = null,Object? duration = null,Object? lessons = null,Object? rating = null,Object? colorValue = null,Object? completedLessons = null,Object? isBookmarked = null,Object? educationLevel = null,Object? subject = null,Object? language = null,Object? admissionTarget = null,Object? studentCount = null,Object? priceMinor = null,Object? isFree = null,Object? overview = null,Object? slug = null,Object? organizationId = null,Object? level = null,Object? status = null,Object? currency = null,Object? thumbnailAssetId = freezed,Object? enrollmentId = freezed,Object? modules = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,colorValue: null == colorValue ? _self.colorValue : colorValue // ignore: cast_nullable_to_non_nullable
as int,completedLessons: null == completedLessons ? _self.completedLessons : completedLessons // ignore: cast_nullable_to_non_nullable
as int,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,admissionTarget: null == admissionTarget ? _self.admissionTarget : admissionTarget // ignore: cast_nullable_to_non_nullable
as String,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseModule>,
  ));
}

}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String category,  String instructor,  String duration,  int lessons,  double rating,  int colorValue,  int completedLessons,  bool isBookmarked,  String educationLevel,  String subject,  String language,  String admissionTarget,  int studentCount,  int priceMinor,  bool isFree,  String overview,  String slug,  String organizationId,  String level,  String status,  String currency,  String? thumbnailAssetId,  String? enrollmentId,  List<CourseModule> modules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.title,_that.category,_that.instructor,_that.duration,_that.lessons,_that.rating,_that.colorValue,_that.completedLessons,_that.isBookmarked,_that.educationLevel,_that.subject,_that.language,_that.admissionTarget,_that.studentCount,_that.priceMinor,_that.isFree,_that.overview,_that.slug,_that.organizationId,_that.level,_that.status,_that.currency,_that.thumbnailAssetId,_that.enrollmentId,_that.modules);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String category,  String instructor,  String duration,  int lessons,  double rating,  int colorValue,  int completedLessons,  bool isBookmarked,  String educationLevel,  String subject,  String language,  String admissionTarget,  int studentCount,  int priceMinor,  bool isFree,  String overview,  String slug,  String organizationId,  String level,  String status,  String currency,  String? thumbnailAssetId,  String? enrollmentId,  List<CourseModule> modules)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.title,_that.category,_that.instructor,_that.duration,_that.lessons,_that.rating,_that.colorValue,_that.completedLessons,_that.isBookmarked,_that.educationLevel,_that.subject,_that.language,_that.admissionTarget,_that.studentCount,_that.priceMinor,_that.isFree,_that.overview,_that.slug,_that.organizationId,_that.level,_that.status,_that.currency,_that.thumbnailAssetId,_that.enrollmentId,_that.modules);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String category,  String instructor,  String duration,  int lessons,  double rating,  int colorValue,  int completedLessons,  bool isBookmarked,  String educationLevel,  String subject,  String language,  String admissionTarget,  int studentCount,  int priceMinor,  bool isFree,  String overview,  String slug,  String organizationId,  String level,  String status,  String currency,  String? thumbnailAssetId,  String? enrollmentId,  List<CourseModule> modules)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.title,_that.category,_that.instructor,_that.duration,_that.lessons,_that.rating,_that.colorValue,_that.completedLessons,_that.isBookmarked,_that.educationLevel,_that.subject,_that.language,_that.admissionTarget,_that.studentCount,_that.priceMinor,_that.isFree,_that.overview,_that.slug,_that.organizationId,_that.level,_that.status,_that.currency,_that.thumbnailAssetId,_that.enrollmentId,_that.modules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course extends Course {
  const _Course({required this.id, required this.title, required this.category, required this.instructor, required this.duration, required this.lessons, required this.rating, required this.colorValue, this.completedLessons = 0, this.isBookmarked = false, this.educationLevel = 'admission', this.subject = 'General', this.language = 'বাংলা', this.admissionTarget = '', this.studentCount = 0, this.priceMinor = 0, this.isFree = false, this.overview = '', this.slug = '', this.organizationId = '', this.level = 'all', this.status = 'published', this.currency = 'BDT', this.thumbnailAssetId, this.enrollmentId, final  List<CourseModule> modules = const <CourseModule>[]}): _modules = modules,super._();
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String category;
@override final  String instructor;
@override final  String duration;
@override final  int lessons;
@override final  double rating;
@override final  int colorValue;
@override@JsonKey() final  int completedLessons;
@override@JsonKey() final  bool isBookmarked;
@override@JsonKey() final  String educationLevel;
@override@JsonKey() final  String subject;
@override@JsonKey() final  String language;
@override@JsonKey() final  String admissionTarget;
@override@JsonKey() final  int studentCount;
@override@JsonKey() final  int priceMinor;
@override@JsonKey() final  bool isFree;
@override@JsonKey() final  String overview;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String organizationId;
@override@JsonKey() final  String level;
@override@JsonKey() final  String status;
@override@JsonKey() final  String currency;
@override final  String? thumbnailAssetId;
@override final  String? enrollmentId;
 final  List<CourseModule> _modules;
@override@JsonKey() List<CourseModule> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.lessons, lessons) || other.lessons == lessons)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.colorValue, colorValue) || other.colorValue == colorValue)&&(identical(other.completedLessons, completedLessons) || other.completedLessons == completedLessons)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.language, language) || other.language == language)&&(identical(other.admissionTarget, admissionTarget) || other.admissionTarget == admissionTarget)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.level, level) || other.level == level)&&(identical(other.status, status) || other.status == status)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&const DeepCollectionEquality().equals(other._modules, _modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,category,instructor,duration,lessons,rating,colorValue,completedLessons,isBookmarked,educationLevel,subject,language,admissionTarget,studentCount,priceMinor,isFree,overview,slug,organizationId,level,status,currency,thumbnailAssetId,enrollmentId,const DeepCollectionEquality().hash(_modules)]);

@override
String toString() {
  return 'Course(id: $id, title: $title, category: $category, instructor: $instructor, duration: $duration, lessons: $lessons, rating: $rating, colorValue: $colorValue, completedLessons: $completedLessons, isBookmarked: $isBookmarked, educationLevel: $educationLevel, subject: $subject, language: $language, admissionTarget: $admissionTarget, studentCount: $studentCount, priceMinor: $priceMinor, isFree: $isFree, overview: $overview, slug: $slug, organizationId: $organizationId, level: $level, status: $status, currency: $currency, thumbnailAssetId: $thumbnailAssetId, enrollmentId: $enrollmentId, modules: $modules)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String category, String instructor, String duration, int lessons, double rating, int colorValue, int completedLessons, bool isBookmarked, String educationLevel, String subject, String language, String admissionTarget, int studentCount, int priceMinor, bool isFree, String overview, String slug, String organizationId, String level, String status, String currency, String? thumbnailAssetId, String? enrollmentId, List<CourseModule> modules
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? category = null,Object? instructor = null,Object? duration = null,Object? lessons = null,Object? rating = null,Object? colorValue = null,Object? completedLessons = null,Object? isBookmarked = null,Object? educationLevel = null,Object? subject = null,Object? language = null,Object? admissionTarget = null,Object? studentCount = null,Object? priceMinor = null,Object? isFree = null,Object? overview = null,Object? slug = null,Object? organizationId = null,Object? level = null,Object? status = null,Object? currency = null,Object? thumbnailAssetId = freezed,Object? enrollmentId = freezed,Object? modules = null,}) {
  return _then(_Course(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,colorValue: null == colorValue ? _self.colorValue : colorValue // ignore: cast_nullable_to_non_nullable
as int,completedLessons: null == completedLessons ? _self.completedLessons : completedLessons // ignore: cast_nullable_to_non_nullable
as int,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,admissionTarget: null == admissionTarget ? _self.admissionTarget : admissionTarget // ignore: cast_nullable_to_non_nullable
as String,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseModule>,
  ));
}


}


/// @nodoc
mixin _$CourseModule {

 String get id; String get title; String get description; int get position; List<CourseLesson> get lessons;
/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModuleCopyWith<CourseModule> get copyWith => _$CourseModuleCopyWithImpl<CourseModule>(this as CourseModule, _$identity);

  /// Serializes this CourseModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.lessons, lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,position,const DeepCollectionEquality().hash(lessons));

@override
String toString() {
  return 'CourseModule(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $CourseModuleCopyWith<$Res>  {
  factory $CourseModuleCopyWith(CourseModule value, $Res Function(CourseModule) _then) = _$CourseModuleCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int position, List<CourseLesson> lessons
});




}
/// @nodoc
class _$CourseModuleCopyWithImpl<$Res>
    implements $CourseModuleCopyWith<$Res> {
  _$CourseModuleCopyWithImpl(this._self, this._then);

  final CourseModule _self;
  final $Res Function(CourseModule) _then;

/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? position = null,Object? lessons = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<CourseLesson>,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseModule].
extension CourseModulePatterns on CourseModule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModule value)  $default,){
final _that = this;
switch (_that) {
case _CourseModule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModule value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int position,  List<CourseLesson> lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.position,_that.lessons);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int position,  List<CourseLesson> lessons)  $default,) {final _that = this;
switch (_that) {
case _CourseModule():
return $default(_that.id,_that.title,_that.description,_that.position,_that.lessons);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int position,  List<CourseLesson> lessons)?  $default,) {final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.position,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModule implements CourseModule {
  const _CourseModule({required this.id, required this.title, this.description = '', this.position = 0, final  List<CourseLesson> lessons = const <CourseLesson>[]}): _lessons = lessons;
  factory _CourseModule.fromJson(Map<String, dynamic> json) => _$CourseModuleFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int position;
 final  List<CourseLesson> _lessons;
@override@JsonKey() List<CourseLesson> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModuleCopyWith<_CourseModule> get copyWith => __$CourseModuleCopyWithImpl<_CourseModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,position,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'CourseModule(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$CourseModuleCopyWith<$Res> implements $CourseModuleCopyWith<$Res> {
  factory _$CourseModuleCopyWith(_CourseModule value, $Res Function(_CourseModule) _then) = __$CourseModuleCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int position, List<CourseLesson> lessons
});




}
/// @nodoc
class __$CourseModuleCopyWithImpl<$Res>
    implements _$CourseModuleCopyWith<$Res> {
  __$CourseModuleCopyWithImpl(this._self, this._then);

  final _CourseModule _self;
  final $Res Function(_CourseModule) _then;

/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? position = null,Object? lessons = null,}) {
  return _then(_CourseModule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<CourseLesson>,
  ));
}


}


/// @nodoc
mixin _$CourseLesson {

 String get id; String get title; String get description; String get type; int get position; bool get isPreview; bool get isRequired; bool get isPublished; int? get durationSeconds; String? get mediaAssetId; String? get body;
/// Create a copy of CourseLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseLessonCopyWith<CourseLesson> get copyWith => _$CourseLessonCopyWithImpl<CourseLesson>(this as CourseLesson, _$identity);

  /// Serializes this CourseLesson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,position,isPreview,isRequired,isPublished,durationSeconds,mediaAssetId,body);

@override
String toString() {
  return 'CourseLesson(id: $id, title: $title, description: $description, type: $type, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
}


}

/// @nodoc
abstract mixin class $CourseLessonCopyWith<$Res>  {
  factory $CourseLessonCopyWith(CourseLesson value, $Res Function(CourseLesson) _then) = _$CourseLessonCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String type, int position, bool isPreview, bool isRequired, bool isPublished, int? durationSeconds, String? mediaAssetId, String? body
});




}
/// @nodoc
class _$CourseLessonCopyWithImpl<$Res>
    implements $CourseLessonCopyWith<$Res> {
  _$CourseLessonCopyWithImpl(this._self, this._then);

  final CourseLesson _self;
  final $Res Function(CourseLesson) _then;

/// Create a copy of CourseLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? durationSeconds = freezed,Object? mediaAssetId = freezed,Object? body = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,mediaAssetId: freezed == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseLesson].
extension CourseLessonPatterns on CourseLesson {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseLesson() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseLesson value)  $default,){
final _that = this;
switch (_that) {
case _CourseLesson():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseLesson value)?  $default,){
final _that = this;
switch (_that) {
case _CourseLesson() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String type,  int position,  bool isPreview,  bool isRequired,  bool isPublished,  int? durationSeconds,  String? mediaAssetId,  String? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseLesson() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String type,  int position,  bool isPreview,  bool isRequired,  bool isPublished,  int? durationSeconds,  String? mediaAssetId,  String? body)  $default,) {final _that = this;
switch (_that) {
case _CourseLesson():
return $default(_that.id,_that.title,_that.description,_that.type,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String type,  int position,  bool isPreview,  bool isRequired,  bool isPublished,  int? durationSeconds,  String? mediaAssetId,  String? body)?  $default,) {final _that = this;
switch (_that) {
case _CourseLesson() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseLesson implements CourseLesson {
  const _CourseLesson({required this.id, required this.title, this.description = '', this.type = 'text', this.position = 0, this.isPreview = false, this.isRequired = false, this.isPublished = true, this.durationSeconds, this.mediaAssetId, this.body});
  factory _CourseLesson.fromJson(Map<String, dynamic> json) => _$CourseLessonFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String type;
@override@JsonKey() final  int position;
@override@JsonKey() final  bool isPreview;
@override@JsonKey() final  bool isRequired;
@override@JsonKey() final  bool isPublished;
@override final  int? durationSeconds;
@override final  String? mediaAssetId;
@override final  String? body;

/// Create a copy of CourseLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseLessonCopyWith<_CourseLesson> get copyWith => __$CourseLessonCopyWithImpl<_CourseLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseLessonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,position,isPreview,isRequired,isPublished,durationSeconds,mediaAssetId,body);

@override
String toString() {
  return 'CourseLesson(id: $id, title: $title, description: $description, type: $type, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
}


}

/// @nodoc
abstract mixin class _$CourseLessonCopyWith<$Res> implements $CourseLessonCopyWith<$Res> {
  factory _$CourseLessonCopyWith(_CourseLesson value, $Res Function(_CourseLesson) _then) = __$CourseLessonCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String type, int position, bool isPreview, bool isRequired, bool isPublished, int? durationSeconds, String? mediaAssetId, String? body
});




}
/// @nodoc
class __$CourseLessonCopyWithImpl<$Res>
    implements _$CourseLessonCopyWith<$Res> {
  __$CourseLessonCopyWithImpl(this._self, this._then);

  final _CourseLesson _self;
  final $Res Function(_CourseLesson) _then;

/// Create a copy of CourseLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? durationSeconds = freezed,Object? mediaAssetId = freezed,Object? body = freezed,}) {
  return _then(_CourseLesson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,mediaAssetId: freezed == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
