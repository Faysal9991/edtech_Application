// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expanded_api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcademicItemDto {

 String get id;@JsonKey(name: 'organization_id') String? get organizationId;@JsonKey(name: 'parent_id') String? get parentId; String get slug;@JsonKey(name: 'display_name') String get displayName;@JsonKey(name: 'display_name_bn') String? get displayNameBn; String get status; int get position;@JsonKey(name: 'starts_on') String? get startsOn;@JsonKey(name: 'ends_on') String? get endsOn;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of AcademicItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicItemDtoCopyWith<AcademicItemDto> get copyWith => _$AcademicItemDtoCopyWithImpl<AcademicItemDto>(this as AcademicItemDto, _$identity);

  /// Serializes this AcademicItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.displayNameBn, displayNameBn) || other.displayNameBn == displayNameBn)&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,parentId,slug,displayName,displayNameBn,status,position,startsOn,endsOn,createdAt,updatedAt);

@override
String toString() {
  return 'AcademicItemDto(id: $id, organizationId: $organizationId, parentId: $parentId, slug: $slug, displayName: $displayName, displayNameBn: $displayNameBn, status: $status, position: $position, startsOn: $startsOn, endsOn: $endsOn, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AcademicItemDtoCopyWith<$Res>  {
  factory $AcademicItemDtoCopyWith(AcademicItemDto value, $Res Function(AcademicItemDto) _then) = _$AcademicItemDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String? organizationId,@JsonKey(name: 'parent_id') String? parentId, String slug,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'display_name_bn') String? displayNameBn, String status, int position,@JsonKey(name: 'starts_on') String? startsOn,@JsonKey(name: 'ends_on') String? endsOn,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$AcademicItemDtoCopyWithImpl<$Res>
    implements $AcademicItemDtoCopyWith<$Res> {
  _$AcademicItemDtoCopyWithImpl(this._self, this._then);

  final AcademicItemDto _self;
  final $Res Function(AcademicItemDto) _then;

/// Create a copy of AcademicItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = freezed,Object? parentId = freezed,Object? slug = null,Object? displayName = null,Object? displayNameBn = freezed,Object? status = null,Object? position = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayNameBn: freezed == displayNameBn ? _self.displayNameBn : displayNameBn // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicItemDto].
extension AcademicItemDtoPatterns on AcademicItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AcademicItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'parent_id')  String? parentId,  String slug, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'display_name_bn')  String? displayNameBn,  String status,  int position, @JsonKey(name: 'starts_on')  String? startsOn, @JsonKey(name: 'ends_on')  String? endsOn, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicItemDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.parentId,_that.slug,_that.displayName,_that.displayNameBn,_that.status,_that.position,_that.startsOn,_that.endsOn,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'parent_id')  String? parentId,  String slug, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'display_name_bn')  String? displayNameBn,  String status,  int position, @JsonKey(name: 'starts_on')  String? startsOn, @JsonKey(name: 'ends_on')  String? endsOn, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AcademicItemDto():
return $default(_that.id,_that.organizationId,_that.parentId,_that.slug,_that.displayName,_that.displayNameBn,_that.status,_that.position,_that.startsOn,_that.endsOn,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'parent_id')  String? parentId,  String slug, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'display_name_bn')  String? displayNameBn,  String status,  int position, @JsonKey(name: 'starts_on')  String? startsOn, @JsonKey(name: 'ends_on')  String? endsOn, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AcademicItemDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.parentId,_that.slug,_that.displayName,_that.displayNameBn,_that.status,_that.position,_that.startsOn,_that.endsOn,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicItemDto implements AcademicItemDto {
  const _AcademicItemDto({required this.id, @JsonKey(name: 'organization_id') this.organizationId, @JsonKey(name: 'parent_id') this.parentId, required this.slug, @JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'display_name_bn') this.displayNameBn, required this.status, this.position = 0, @JsonKey(name: 'starts_on') this.startsOn, @JsonKey(name: 'ends_on') this.endsOn, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _AcademicItemDto.fromJson(Map<String, dynamic> json) => _$AcademicItemDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String? organizationId;
@override@JsonKey(name: 'parent_id') final  String? parentId;
@override final  String slug;
@override@JsonKey(name: 'display_name') final  String displayName;
@override@JsonKey(name: 'display_name_bn') final  String? displayNameBn;
@override final  String status;
@override@JsonKey() final  int position;
@override@JsonKey(name: 'starts_on') final  String? startsOn;
@override@JsonKey(name: 'ends_on') final  String? endsOn;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of AcademicItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicItemDtoCopyWith<_AcademicItemDto> get copyWith => __$AcademicItemDtoCopyWithImpl<_AcademicItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.displayNameBn, displayNameBn) || other.displayNameBn == displayNameBn)&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,parentId,slug,displayName,displayNameBn,status,position,startsOn,endsOn,createdAt,updatedAt);

@override
String toString() {
  return 'AcademicItemDto(id: $id, organizationId: $organizationId, parentId: $parentId, slug: $slug, displayName: $displayName, displayNameBn: $displayNameBn, status: $status, position: $position, startsOn: $startsOn, endsOn: $endsOn, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AcademicItemDtoCopyWith<$Res> implements $AcademicItemDtoCopyWith<$Res> {
  factory _$AcademicItemDtoCopyWith(_AcademicItemDto value, $Res Function(_AcademicItemDto) _then) = __$AcademicItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String? organizationId,@JsonKey(name: 'parent_id') String? parentId, String slug,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'display_name_bn') String? displayNameBn, String status, int position,@JsonKey(name: 'starts_on') String? startsOn,@JsonKey(name: 'ends_on') String? endsOn,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$AcademicItemDtoCopyWithImpl<$Res>
    implements _$AcademicItemDtoCopyWith<$Res> {
  __$AcademicItemDtoCopyWithImpl(this._self, this._then);

  final _AcademicItemDto _self;
  final $Res Function(_AcademicItemDto) _then;

/// Create a copy of AcademicItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = freezed,Object? parentId = freezed,Object? slug = null,Object? displayName = null,Object? displayNameBn = freezed,Object? status = null,Object? position = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AcademicItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayNameBn: freezed == displayNameBn ? _self.displayNameBn : displayNameBn // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AcademicPreferencesWriteRequest {

@JsonKey(name: 'program_id') String? get programId;@JsonKey(name: 'level_id') String? get levelId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'board_id') String? get boardId;@JsonKey(name: 'group_id') String? get groupId;@JsonKey(name: 'subject_ids') List<String> get subjectIds;@JsonKey(name: 'exam_target_ids') List<String> get examTargetIds;@JsonKey(name: 'preferred_language') String get preferredLanguage;
/// Create a copy of AcademicPreferencesWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicPreferencesWriteRequestCopyWith<AcademicPreferencesWriteRequest> get copyWith => _$AcademicPreferencesWriteRequestCopyWithImpl<AcademicPreferencesWriteRequest>(this as AcademicPreferencesWriteRequest, _$identity);

  /// Serializes this AcademicPreferencesWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicPreferencesWriteRequest&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.boardId, boardId) || other.boardId == boardId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other.subjectIds, subjectIds)&&const DeepCollectionEquality().equals(other.examTargetIds, examTargetIds)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,levelId,classId,boardId,groupId,const DeepCollectionEquality().hash(subjectIds),const DeepCollectionEquality().hash(examTargetIds),preferredLanguage);

@override
String toString() {
  return 'AcademicPreferencesWriteRequest(programId: $programId, levelId: $levelId, classId: $classId, boardId: $boardId, groupId: $groupId, subjectIds: $subjectIds, examTargetIds: $examTargetIds, preferredLanguage: $preferredLanguage)';
}


}

/// @nodoc
abstract mixin class $AcademicPreferencesWriteRequestCopyWith<$Res>  {
  factory $AcademicPreferencesWriteRequestCopyWith(AcademicPreferencesWriteRequest value, $Res Function(AcademicPreferencesWriteRequest) _then) = _$AcademicPreferencesWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'program_id') String? programId,@JsonKey(name: 'level_id') String? levelId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'board_id') String? boardId,@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'subject_ids') List<String> subjectIds,@JsonKey(name: 'exam_target_ids') List<String> examTargetIds,@JsonKey(name: 'preferred_language') String preferredLanguage
});




}
/// @nodoc
class _$AcademicPreferencesWriteRequestCopyWithImpl<$Res>
    implements $AcademicPreferencesWriteRequestCopyWith<$Res> {
  _$AcademicPreferencesWriteRequestCopyWithImpl(this._self, this._then);

  final AcademicPreferencesWriteRequest _self;
  final $Res Function(AcademicPreferencesWriteRequest) _then;

/// Create a copy of AcademicPreferencesWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programId = freezed,Object? levelId = freezed,Object? classId = freezed,Object? boardId = freezed,Object? groupId = freezed,Object? subjectIds = null,Object? examTargetIds = null,Object? preferredLanguage = null,}) {
  return _then(_self.copyWith(
programId: freezed == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,boardId: freezed == boardId ? _self.boardId : boardId // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,subjectIds: null == subjectIds ? _self.subjectIds : subjectIds // ignore: cast_nullable_to_non_nullable
as List<String>,examTargetIds: null == examTargetIds ? _self.examTargetIds : examTargetIds // ignore: cast_nullable_to_non_nullable
as List<String>,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicPreferencesWriteRequest].
extension AcademicPreferencesWriteRequestPatterns on AcademicPreferencesWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicPreferencesWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicPreferencesWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicPreferencesWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'program_id')  String? programId, @JsonKey(name: 'level_id')  String? levelId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'board_id')  String? boardId, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'subject_ids')  List<String> subjectIds, @JsonKey(name: 'exam_target_ids')  List<String> examTargetIds, @JsonKey(name: 'preferred_language')  String preferredLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest() when $default != null:
return $default(_that.programId,_that.levelId,_that.classId,_that.boardId,_that.groupId,_that.subjectIds,_that.examTargetIds,_that.preferredLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'program_id')  String? programId, @JsonKey(name: 'level_id')  String? levelId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'board_id')  String? boardId, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'subject_ids')  List<String> subjectIds, @JsonKey(name: 'exam_target_ids')  List<String> examTargetIds, @JsonKey(name: 'preferred_language')  String preferredLanguage)  $default,) {final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest():
return $default(_that.programId,_that.levelId,_that.classId,_that.boardId,_that.groupId,_that.subjectIds,_that.examTargetIds,_that.preferredLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'program_id')  String? programId, @JsonKey(name: 'level_id')  String? levelId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'board_id')  String? boardId, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'subject_ids')  List<String> subjectIds, @JsonKey(name: 'exam_target_ids')  List<String> examTargetIds, @JsonKey(name: 'preferred_language')  String preferredLanguage)?  $default,) {final _that = this;
switch (_that) {
case _AcademicPreferencesWriteRequest() when $default != null:
return $default(_that.programId,_that.levelId,_that.classId,_that.boardId,_that.groupId,_that.subjectIds,_that.examTargetIds,_that.preferredLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicPreferencesWriteRequest implements AcademicPreferencesWriteRequest {
  const _AcademicPreferencesWriteRequest({@JsonKey(name: 'program_id') this.programId, @JsonKey(name: 'level_id') this.levelId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'board_id') this.boardId, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'subject_ids') required final  List<String> subjectIds, @JsonKey(name: 'exam_target_ids') required final  List<String> examTargetIds, @JsonKey(name: 'preferred_language') required this.preferredLanguage}): _subjectIds = subjectIds,_examTargetIds = examTargetIds;
  factory _AcademicPreferencesWriteRequest.fromJson(Map<String, dynamic> json) => _$AcademicPreferencesWriteRequestFromJson(json);

@override@JsonKey(name: 'program_id') final  String? programId;
@override@JsonKey(name: 'level_id') final  String? levelId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'board_id') final  String? boardId;
@override@JsonKey(name: 'group_id') final  String? groupId;
 final  List<String> _subjectIds;
@override@JsonKey(name: 'subject_ids') List<String> get subjectIds {
  if (_subjectIds is EqualUnmodifiableListView) return _subjectIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectIds);
}

 final  List<String> _examTargetIds;
@override@JsonKey(name: 'exam_target_ids') List<String> get examTargetIds {
  if (_examTargetIds is EqualUnmodifiableListView) return _examTargetIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_examTargetIds);
}

@override@JsonKey(name: 'preferred_language') final  String preferredLanguage;

/// Create a copy of AcademicPreferencesWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicPreferencesWriteRequestCopyWith<_AcademicPreferencesWriteRequest> get copyWith => __$AcademicPreferencesWriteRequestCopyWithImpl<_AcademicPreferencesWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicPreferencesWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicPreferencesWriteRequest&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.boardId, boardId) || other.boardId == boardId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other._subjectIds, _subjectIds)&&const DeepCollectionEquality().equals(other._examTargetIds, _examTargetIds)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,levelId,classId,boardId,groupId,const DeepCollectionEquality().hash(_subjectIds),const DeepCollectionEquality().hash(_examTargetIds),preferredLanguage);

@override
String toString() {
  return 'AcademicPreferencesWriteRequest(programId: $programId, levelId: $levelId, classId: $classId, boardId: $boardId, groupId: $groupId, subjectIds: $subjectIds, examTargetIds: $examTargetIds, preferredLanguage: $preferredLanguage)';
}


}

/// @nodoc
abstract mixin class _$AcademicPreferencesWriteRequestCopyWith<$Res> implements $AcademicPreferencesWriteRequestCopyWith<$Res> {
  factory _$AcademicPreferencesWriteRequestCopyWith(_AcademicPreferencesWriteRequest value, $Res Function(_AcademicPreferencesWriteRequest) _then) = __$AcademicPreferencesWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'program_id') String? programId,@JsonKey(name: 'level_id') String? levelId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'board_id') String? boardId,@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'subject_ids') List<String> subjectIds,@JsonKey(name: 'exam_target_ids') List<String> examTargetIds,@JsonKey(name: 'preferred_language') String preferredLanguage
});




}
/// @nodoc
class __$AcademicPreferencesWriteRequestCopyWithImpl<$Res>
    implements _$AcademicPreferencesWriteRequestCopyWith<$Res> {
  __$AcademicPreferencesWriteRequestCopyWithImpl(this._self, this._then);

  final _AcademicPreferencesWriteRequest _self;
  final $Res Function(_AcademicPreferencesWriteRequest) _then;

/// Create a copy of AcademicPreferencesWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programId = freezed,Object? levelId = freezed,Object? classId = freezed,Object? boardId = freezed,Object? groupId = freezed,Object? subjectIds = null,Object? examTargetIds = null,Object? preferredLanguage = null,}) {
  return _then(_AcademicPreferencesWriteRequest(
programId: freezed == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,boardId: freezed == boardId ? _self.boardId : boardId // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,subjectIds: null == subjectIds ? _self._subjectIds : subjectIds // ignore: cast_nullable_to_non_nullable
as List<String>,examTargetIds: null == examTargetIds ? _self._examTargetIds : examTargetIds // ignore: cast_nullable_to_non_nullable
as List<String>,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlaybackTrackDto {

 String get id; String get type; String get language; String get label;@JsonKey(name: 'is_default') bool get isDefault;@JsonKey(name: 'content_type') String get contentType;@JsonKey(name: 'duration_seconds') int? get durationSeconds; String get url;
/// Create a copy of PlaybackTrackDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaybackTrackDtoCopyWith<PlaybackTrackDto> get copyWith => _$PlaybackTrackDtoCopyWithImpl<PlaybackTrackDto>(this as PlaybackTrackDto, _$identity);

  /// Serializes this PlaybackTrackDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackTrackDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&(identical(other.label, label) || other.label == label)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,language,label,isDefault,contentType,durationSeconds,url);

@override
String toString() {
  return 'PlaybackTrackDto(id: $id, type: $type, language: $language, label: $label, isDefault: $isDefault, contentType: $contentType, durationSeconds: $durationSeconds, url: $url)';
}


}

/// @nodoc
abstract mixin class $PlaybackTrackDtoCopyWith<$Res>  {
  factory $PlaybackTrackDtoCopyWith(PlaybackTrackDto value, $Res Function(PlaybackTrackDto) _then) = _$PlaybackTrackDtoCopyWithImpl;
@useResult
$Res call({
 String id, String type, String language, String label,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'duration_seconds') int? durationSeconds, String url
});




}
/// @nodoc
class _$PlaybackTrackDtoCopyWithImpl<$Res>
    implements $PlaybackTrackDtoCopyWith<$Res> {
  _$PlaybackTrackDtoCopyWithImpl(this._self, this._then);

  final PlaybackTrackDto _self;
  final $Res Function(PlaybackTrackDto) _then;

/// Create a copy of PlaybackTrackDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? language = null,Object? label = null,Object? isDefault = null,Object? contentType = null,Object? durationSeconds = freezed,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaybackTrackDto].
extension PlaybackTrackDtoPatterns on PlaybackTrackDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaybackTrackDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaybackTrackDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaybackTrackDto value)  $default,){
final _that = this;
switch (_that) {
case _PlaybackTrackDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaybackTrackDto value)?  $default,){
final _that = this;
switch (_that) {
case _PlaybackTrackDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String language,  String label, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaybackTrackDto() when $default != null:
return $default(_that.id,_that.type,_that.language,_that.label,_that.isDefault,_that.contentType,_that.durationSeconds,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String language,  String label, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String url)  $default,) {final _that = this;
switch (_that) {
case _PlaybackTrackDto():
return $default(_that.id,_that.type,_that.language,_that.label,_that.isDefault,_that.contentType,_that.durationSeconds,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String language,  String label, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PlaybackTrackDto() when $default != null:
return $default(_that.id,_that.type,_that.language,_that.label,_that.isDefault,_that.contentType,_that.durationSeconds,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaybackTrackDto implements PlaybackTrackDto {
  const _PlaybackTrackDto({required this.id, required this.type, required this.language, required this.label, @JsonKey(name: 'is_default') required this.isDefault, @JsonKey(name: 'content_type') required this.contentType, @JsonKey(name: 'duration_seconds') this.durationSeconds, required this.url});
  factory _PlaybackTrackDto.fromJson(Map<String, dynamic> json) => _$PlaybackTrackDtoFromJson(json);

@override final  String id;
@override final  String type;
@override final  String language;
@override final  String label;
@override@JsonKey(name: 'is_default') final  bool isDefault;
@override@JsonKey(name: 'content_type') final  String contentType;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;
@override final  String url;

/// Create a copy of PlaybackTrackDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaybackTrackDtoCopyWith<_PlaybackTrackDto> get copyWith => __$PlaybackTrackDtoCopyWithImpl<_PlaybackTrackDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaybackTrackDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaybackTrackDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&(identical(other.label, label) || other.label == label)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,language,label,isDefault,contentType,durationSeconds,url);

@override
String toString() {
  return 'PlaybackTrackDto(id: $id, type: $type, language: $language, label: $label, isDefault: $isDefault, contentType: $contentType, durationSeconds: $durationSeconds, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PlaybackTrackDtoCopyWith<$Res> implements $PlaybackTrackDtoCopyWith<$Res> {
  factory _$PlaybackTrackDtoCopyWith(_PlaybackTrackDto value, $Res Function(_PlaybackTrackDto) _then) = __$PlaybackTrackDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String language, String label,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'duration_seconds') int? durationSeconds, String url
});




}
/// @nodoc
class __$PlaybackTrackDtoCopyWithImpl<$Res>
    implements _$PlaybackTrackDtoCopyWith<$Res> {
  __$PlaybackTrackDtoCopyWithImpl(this._self, this._then);

  final _PlaybackTrackDto _self;
  final $Res Function(_PlaybackTrackDto) _then;

/// Create a copy of PlaybackTrackDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? language = null,Object? label = null,Object? isDefault = null,Object? contentType = null,Object? durationSeconds = freezed,Object? url = null,}) {
  return _then(_PlaybackTrackDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlaybackMetadataDto {

@JsonKey(name: 'media_asset_id') String get mediaAssetId;@JsonKey(name: 'content_type') String get contentType;@JsonKey(name: 'duration_seconds') int? get durationSeconds; int? get width; int? get height; String get url; List<PlaybackTrackDto> get tracks;
/// Create a copy of PlaybackMetadataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaybackMetadataDtoCopyWith<PlaybackMetadataDto> get copyWith => _$PlaybackMetadataDtoCopyWithImpl<PlaybackMetadataDto>(this as PlaybackMetadataDto, _$identity);

  /// Serializes this PlaybackMetadataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackMetadataDto&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.tracks, tracks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaAssetId,contentType,durationSeconds,width,height,url,const DeepCollectionEquality().hash(tracks));

@override
String toString() {
  return 'PlaybackMetadataDto(mediaAssetId: $mediaAssetId, contentType: $contentType, durationSeconds: $durationSeconds, width: $width, height: $height, url: $url, tracks: $tracks)';
}


}

/// @nodoc
abstract mixin class $PlaybackMetadataDtoCopyWith<$Res>  {
  factory $PlaybackMetadataDtoCopyWith(PlaybackMetadataDto value, $Res Function(PlaybackMetadataDto) _then) = _$PlaybackMetadataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'media_asset_id') String mediaAssetId,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'duration_seconds') int? durationSeconds, int? width, int? height, String url, List<PlaybackTrackDto> tracks
});




}
/// @nodoc
class _$PlaybackMetadataDtoCopyWithImpl<$Res>
    implements $PlaybackMetadataDtoCopyWith<$Res> {
  _$PlaybackMetadataDtoCopyWithImpl(this._self, this._then);

  final PlaybackMetadataDto _self;
  final $Res Function(PlaybackMetadataDto) _then;

/// Create a copy of PlaybackMetadataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mediaAssetId = null,Object? contentType = null,Object? durationSeconds = freezed,Object? width = freezed,Object? height = freezed,Object? url = null,Object? tracks = null,}) {
  return _then(_self.copyWith(
mediaAssetId: null == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,tracks: null == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<PlaybackTrackDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaybackMetadataDto].
extension PlaybackMetadataDtoPatterns on PlaybackMetadataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaybackMetadataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaybackMetadataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaybackMetadataDto value)  $default,){
final _that = this;
switch (_that) {
case _PlaybackMetadataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaybackMetadataDto value)?  $default,){
final _that = this;
switch (_that) {
case _PlaybackMetadataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  int? width,  int? height,  String url,  List<PlaybackTrackDto> tracks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaybackMetadataDto() when $default != null:
return $default(_that.mediaAssetId,_that.contentType,_that.durationSeconds,_that.width,_that.height,_that.url,_that.tracks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  int? width,  int? height,  String url,  List<PlaybackTrackDto> tracks)  $default,) {final _that = this;
switch (_that) {
case _PlaybackMetadataDto():
return $default(_that.mediaAssetId,_that.contentType,_that.durationSeconds,_that.width,_that.height,_that.url,_that.tracks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  int? width,  int? height,  String url,  List<PlaybackTrackDto> tracks)?  $default,) {final _that = this;
switch (_that) {
case _PlaybackMetadataDto() when $default != null:
return $default(_that.mediaAssetId,_that.contentType,_that.durationSeconds,_that.width,_that.height,_that.url,_that.tracks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaybackMetadataDto implements PlaybackMetadataDto {
  const _PlaybackMetadataDto({@JsonKey(name: 'media_asset_id') required this.mediaAssetId, @JsonKey(name: 'content_type') required this.contentType, @JsonKey(name: 'duration_seconds') this.durationSeconds, this.width, this.height, required this.url, final  List<PlaybackTrackDto> tracks = const <PlaybackTrackDto>[]}): _tracks = tracks;
  factory _PlaybackMetadataDto.fromJson(Map<String, dynamic> json) => _$PlaybackMetadataDtoFromJson(json);

@override@JsonKey(name: 'media_asset_id') final  String mediaAssetId;
@override@JsonKey(name: 'content_type') final  String contentType;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;
@override final  int? width;
@override final  int? height;
@override final  String url;
 final  List<PlaybackTrackDto> _tracks;
@override@JsonKey() List<PlaybackTrackDto> get tracks {
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracks);
}


/// Create a copy of PlaybackMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaybackMetadataDtoCopyWith<_PlaybackMetadataDto> get copyWith => __$PlaybackMetadataDtoCopyWithImpl<_PlaybackMetadataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaybackMetadataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaybackMetadataDto&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._tracks, _tracks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaAssetId,contentType,durationSeconds,width,height,url,const DeepCollectionEquality().hash(_tracks));

@override
String toString() {
  return 'PlaybackMetadataDto(mediaAssetId: $mediaAssetId, contentType: $contentType, durationSeconds: $durationSeconds, width: $width, height: $height, url: $url, tracks: $tracks)';
}


}

/// @nodoc
abstract mixin class _$PlaybackMetadataDtoCopyWith<$Res> implements $PlaybackMetadataDtoCopyWith<$Res> {
  factory _$PlaybackMetadataDtoCopyWith(_PlaybackMetadataDto value, $Res Function(_PlaybackMetadataDto) _then) = __$PlaybackMetadataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'media_asset_id') String mediaAssetId,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'duration_seconds') int? durationSeconds, int? width, int? height, String url, List<PlaybackTrackDto> tracks
});




}
/// @nodoc
class __$PlaybackMetadataDtoCopyWithImpl<$Res>
    implements _$PlaybackMetadataDtoCopyWith<$Res> {
  __$PlaybackMetadataDtoCopyWithImpl(this._self, this._then);

  final _PlaybackMetadataDto _self;
  final $Res Function(_PlaybackMetadataDto) _then;

/// Create a copy of PlaybackMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mediaAssetId = null,Object? contentType = null,Object? durationSeconds = freezed,Object? width = freezed,Object? height = freezed,Object? url = null,Object? tracks = null,}) {
  return _then(_PlaybackMetadataDto(
mediaAssetId: null == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,tracks: null == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<PlaybackTrackDto>,
  ));
}


}


/// @nodoc
mixin _$MediaProcessingStatusDto {

 String get id; String get status;@JsonKey(name: 'processing_progress') int get processingProgress;@JsonKey(name: 'processing_attempts') int get processingAttempts;
/// Create a copy of MediaProcessingStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaProcessingStatusDtoCopyWith<MediaProcessingStatusDto> get copyWith => _$MediaProcessingStatusDtoCopyWithImpl<MediaProcessingStatusDto>(this as MediaProcessingStatusDto, _$identity);

  /// Serializes this MediaProcessingStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaProcessingStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.processingProgress, processingProgress) || other.processingProgress == processingProgress)&&(identical(other.processingAttempts, processingAttempts) || other.processingAttempts == processingAttempts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,processingProgress,processingAttempts);

@override
String toString() {
  return 'MediaProcessingStatusDto(id: $id, status: $status, processingProgress: $processingProgress, processingAttempts: $processingAttempts)';
}


}

/// @nodoc
abstract mixin class $MediaProcessingStatusDtoCopyWith<$Res>  {
  factory $MediaProcessingStatusDtoCopyWith(MediaProcessingStatusDto value, $Res Function(MediaProcessingStatusDto) _then) = _$MediaProcessingStatusDtoCopyWithImpl;
@useResult
$Res call({
 String id, String status,@JsonKey(name: 'processing_progress') int processingProgress,@JsonKey(name: 'processing_attempts') int processingAttempts
});




}
/// @nodoc
class _$MediaProcessingStatusDtoCopyWithImpl<$Res>
    implements $MediaProcessingStatusDtoCopyWith<$Res> {
  _$MediaProcessingStatusDtoCopyWithImpl(this._self, this._then);

  final MediaProcessingStatusDto _self;
  final $Res Function(MediaProcessingStatusDto) _then;

/// Create a copy of MediaProcessingStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? processingProgress = null,Object? processingAttempts = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,processingProgress: null == processingProgress ? _self.processingProgress : processingProgress // ignore: cast_nullable_to_non_nullable
as int,processingAttempts: null == processingAttempts ? _self.processingAttempts : processingAttempts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaProcessingStatusDto].
extension MediaProcessingStatusDtoPatterns on MediaProcessingStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaProcessingStatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaProcessingStatusDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaProcessingStatusDto value)  $default,){
final _that = this;
switch (_that) {
case _MediaProcessingStatusDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaProcessingStatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _MediaProcessingStatusDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'processing_progress')  int processingProgress, @JsonKey(name: 'processing_attempts')  int processingAttempts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaProcessingStatusDto() when $default != null:
return $default(_that.id,_that.status,_that.processingProgress,_that.processingAttempts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'processing_progress')  int processingProgress, @JsonKey(name: 'processing_attempts')  int processingAttempts)  $default,) {final _that = this;
switch (_that) {
case _MediaProcessingStatusDto():
return $default(_that.id,_that.status,_that.processingProgress,_that.processingAttempts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status, @JsonKey(name: 'processing_progress')  int processingProgress, @JsonKey(name: 'processing_attempts')  int processingAttempts)?  $default,) {final _that = this;
switch (_that) {
case _MediaProcessingStatusDto() when $default != null:
return $default(_that.id,_that.status,_that.processingProgress,_that.processingAttempts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaProcessingStatusDto implements MediaProcessingStatusDto {
  const _MediaProcessingStatusDto({required this.id, required this.status, @JsonKey(name: 'processing_progress') required this.processingProgress, @JsonKey(name: 'processing_attempts') required this.processingAttempts});
  factory _MediaProcessingStatusDto.fromJson(Map<String, dynamic> json) => _$MediaProcessingStatusDtoFromJson(json);

@override final  String id;
@override final  String status;
@override@JsonKey(name: 'processing_progress') final  int processingProgress;
@override@JsonKey(name: 'processing_attempts') final  int processingAttempts;

/// Create a copy of MediaProcessingStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaProcessingStatusDtoCopyWith<_MediaProcessingStatusDto> get copyWith => __$MediaProcessingStatusDtoCopyWithImpl<_MediaProcessingStatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaProcessingStatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaProcessingStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.processingProgress, processingProgress) || other.processingProgress == processingProgress)&&(identical(other.processingAttempts, processingAttempts) || other.processingAttempts == processingAttempts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,processingProgress,processingAttempts);

@override
String toString() {
  return 'MediaProcessingStatusDto(id: $id, status: $status, processingProgress: $processingProgress, processingAttempts: $processingAttempts)';
}


}

/// @nodoc
abstract mixin class _$MediaProcessingStatusDtoCopyWith<$Res> implements $MediaProcessingStatusDtoCopyWith<$Res> {
  factory _$MediaProcessingStatusDtoCopyWith(_MediaProcessingStatusDto value, $Res Function(_MediaProcessingStatusDto) _then) = __$MediaProcessingStatusDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String status,@JsonKey(name: 'processing_progress') int processingProgress,@JsonKey(name: 'processing_attempts') int processingAttempts
});




}
/// @nodoc
class __$MediaProcessingStatusDtoCopyWithImpl<$Res>
    implements _$MediaProcessingStatusDtoCopyWith<$Res> {
  __$MediaProcessingStatusDtoCopyWithImpl(this._self, this._then);

  final _MediaProcessingStatusDto _self;
  final $Res Function(_MediaProcessingStatusDto) _then;

/// Create a copy of MediaProcessingStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? processingProgress = null,Object? processingAttempts = null,}) {
  return _then(_MediaProcessingStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,processingProgress: null == processingProgress ? _self.processingProgress : processingProgress // ignore: cast_nullable_to_non_nullable
as int,processingAttempts: null == processingAttempts ? _self.processingAttempts : processingAttempts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ContinueLearningDto {

@JsonKey(name: 'enrollment_id') String get enrollmentId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'course_slug') String get courseSlug;@JsonKey(name: 'thumbnail_asset_id') String? get thumbnailAssetId;@JsonKey(name: 'completion_percentage') double get completionPercentage;@JsonKey(name: 'lesson_id') String get lessonId;@JsonKey(name: 'lesson_title') String get lessonTitle;@JsonKey(name: 'position_seconds') int get positionSeconds;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of ContinueLearningDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContinueLearningDtoCopyWith<ContinueLearningDto> get copyWith => _$ContinueLearningDtoCopyWithImpl<ContinueLearningDto>(this as ContinueLearningDto, _$identity);

  /// Serializes this ContinueLearningDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContinueLearningDto&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.courseSlug, courseSlug) || other.courseSlug == courseSlug)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.lessonTitle, lessonTitle) || other.lessonTitle == lessonTitle)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,courseId,courseTitle,courseSlug,thumbnailAssetId,completionPercentage,lessonId,lessonTitle,positionSeconds,updatedAt);

@override
String toString() {
  return 'ContinueLearningDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, courseSlug: $courseSlug, thumbnailAssetId: $thumbnailAssetId, completionPercentage: $completionPercentage, lessonId: $lessonId, lessonTitle: $lessonTitle, positionSeconds: $positionSeconds, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ContinueLearningDtoCopyWith<$Res>  {
  factory $ContinueLearningDtoCopyWith(ContinueLearningDto value, $Res Function(ContinueLearningDto) _then) = _$ContinueLearningDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'course_slug') String courseSlug,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,@JsonKey(name: 'completion_percentage') double completionPercentage,@JsonKey(name: 'lesson_id') String lessonId,@JsonKey(name: 'lesson_title') String lessonTitle,@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$ContinueLearningDtoCopyWithImpl<$Res>
    implements $ContinueLearningDtoCopyWith<$Res> {
  _$ContinueLearningDtoCopyWithImpl(this._self, this._then);

  final ContinueLearningDto _self;
  final $Res Function(ContinueLearningDto) _then;

/// Create a copy of ContinueLearningDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enrollmentId = null,Object? courseId = null,Object? courseTitle = null,Object? courseSlug = null,Object? thumbnailAssetId = freezed,Object? completionPercentage = null,Object? lessonId = null,Object? lessonTitle = null,Object? positionSeconds = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,courseSlug: null == courseSlug ? _self.courseSlug : courseSlug // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,completionPercentage: null == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as double,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,lessonTitle: null == lessonTitle ? _self.lessonTitle : lessonTitle // ignore: cast_nullable_to_non_nullable
as String,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ContinueLearningDto].
extension ContinueLearningDtoPatterns on ContinueLearningDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContinueLearningDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContinueLearningDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContinueLearningDto value)  $default,){
final _that = this;
switch (_that) {
case _ContinueLearningDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContinueLearningDto value)?  $default,){
final _that = this;
switch (_that) {
case _ContinueLearningDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'course_slug')  String courseSlug, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId, @JsonKey(name: 'completion_percentage')  double completionPercentage, @JsonKey(name: 'lesson_id')  String lessonId, @JsonKey(name: 'lesson_title')  String lessonTitle, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContinueLearningDto() when $default != null:
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.courseSlug,_that.thumbnailAssetId,_that.completionPercentage,_that.lessonId,_that.lessonTitle,_that.positionSeconds,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'course_slug')  String courseSlug, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId, @JsonKey(name: 'completion_percentage')  double completionPercentage, @JsonKey(name: 'lesson_id')  String lessonId, @JsonKey(name: 'lesson_title')  String lessonTitle, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ContinueLearningDto():
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.courseSlug,_that.thumbnailAssetId,_that.completionPercentage,_that.lessonId,_that.lessonTitle,_that.positionSeconds,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'course_slug')  String courseSlug, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId, @JsonKey(name: 'completion_percentage')  double completionPercentage, @JsonKey(name: 'lesson_id')  String lessonId, @JsonKey(name: 'lesson_title')  String lessonTitle, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ContinueLearningDto() when $default != null:
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.courseSlug,_that.thumbnailAssetId,_that.completionPercentage,_that.lessonId,_that.lessonTitle,_that.positionSeconds,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContinueLearningDto implements ContinueLearningDto {
  const _ContinueLearningDto({@JsonKey(name: 'enrollment_id') required this.enrollmentId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'course_slug') required this.courseSlug, @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId, @JsonKey(name: 'completion_percentage') required this.completionPercentage, @JsonKey(name: 'lesson_id') required this.lessonId, @JsonKey(name: 'lesson_title') required this.lessonTitle, @JsonKey(name: 'position_seconds') required this.positionSeconds, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _ContinueLearningDto.fromJson(Map<String, dynamic> json) => _$ContinueLearningDtoFromJson(json);

@override@JsonKey(name: 'enrollment_id') final  String enrollmentId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'course_slug') final  String courseSlug;
@override@JsonKey(name: 'thumbnail_asset_id') final  String? thumbnailAssetId;
@override@JsonKey(name: 'completion_percentage') final  double completionPercentage;
@override@JsonKey(name: 'lesson_id') final  String lessonId;
@override@JsonKey(name: 'lesson_title') final  String lessonTitle;
@override@JsonKey(name: 'position_seconds') final  int positionSeconds;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of ContinueLearningDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContinueLearningDtoCopyWith<_ContinueLearningDto> get copyWith => __$ContinueLearningDtoCopyWithImpl<_ContinueLearningDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContinueLearningDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContinueLearningDto&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.courseSlug, courseSlug) || other.courseSlug == courseSlug)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.lessonTitle, lessonTitle) || other.lessonTitle == lessonTitle)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,courseId,courseTitle,courseSlug,thumbnailAssetId,completionPercentage,lessonId,lessonTitle,positionSeconds,updatedAt);

@override
String toString() {
  return 'ContinueLearningDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, courseSlug: $courseSlug, thumbnailAssetId: $thumbnailAssetId, completionPercentage: $completionPercentage, lessonId: $lessonId, lessonTitle: $lessonTitle, positionSeconds: $positionSeconds, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ContinueLearningDtoCopyWith<$Res> implements $ContinueLearningDtoCopyWith<$Res> {
  factory _$ContinueLearningDtoCopyWith(_ContinueLearningDto value, $Res Function(_ContinueLearningDto) _then) = __$ContinueLearningDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'course_slug') String courseSlug,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,@JsonKey(name: 'completion_percentage') double completionPercentage,@JsonKey(name: 'lesson_id') String lessonId,@JsonKey(name: 'lesson_title') String lessonTitle,@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$ContinueLearningDtoCopyWithImpl<$Res>
    implements _$ContinueLearningDtoCopyWith<$Res> {
  __$ContinueLearningDtoCopyWithImpl(this._self, this._then);

  final _ContinueLearningDto _self;
  final $Res Function(_ContinueLearningDto) _then;

/// Create a copy of ContinueLearningDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enrollmentId = null,Object? courseId = null,Object? courseTitle = null,Object? courseSlug = null,Object? thumbnailAssetId = freezed,Object? completionPercentage = null,Object? lessonId = null,Object? lessonTitle = null,Object? positionSeconds = null,Object? updatedAt = null,}) {
  return _then(_ContinueLearningDto(
enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,courseSlug: null == courseSlug ? _self.courseSlug : courseSlug // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,completionPercentage: null == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as double,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,lessonTitle: null == lessonTitle ? _self.lessonTitle : lessonTitle // ignore: cast_nullable_to_non_nullable
as String,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DashboardLiveClassDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId; String get title;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'scheduled_start_at') DateTime get scheduledStartAt;@JsonKey(name: 'scheduled_end_at') DateTime get scheduledEndAt; String get status;
/// Create a copy of DashboardLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardLiveClassDtoCopyWith<DashboardLiveClassDto> get copyWith => _$DashboardLiveClassDtoCopyWithImpl<DashboardLiveClassDto>(this as DashboardLiveClassDto, _$identity);

  /// Serializes this DashboardLiveClassDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardLiveClassDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,scheduledStartAt,scheduledEndAt,status);

@override
String toString() {
  return 'DashboardLiveClassDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, status: $status)';
}


}

/// @nodoc
abstract mixin class $DashboardLiveClassDtoCopyWith<$Res>  {
  factory $DashboardLiveClassDtoCopyWith(DashboardLiveClassDto value, $Res Function(DashboardLiveClassDto) _then) = _$DashboardLiveClassDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt, String status
});




}
/// @nodoc
class _$DashboardLiveClassDtoCopyWithImpl<$Res>
    implements $DashboardLiveClassDtoCopyWith<$Res> {
  _$DashboardLiveClassDtoCopyWithImpl(this._self, this._then);

  final DashboardLiveClassDto _self;
  final $Res Function(DashboardLiveClassDto) _then;

/// Create a copy of DashboardLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardLiveClassDto].
extension DashboardLiveClassDtoPatterns on DashboardLiveClassDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardLiveClassDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardLiveClassDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardLiveClassDto value)  $default,){
final _that = this;
switch (_that) {
case _DashboardLiveClassDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardLiveClassDto value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardLiveClassDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardLiveClassDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.scheduledStartAt,_that.scheduledEndAt,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String status)  $default,) {final _that = this;
switch (_that) {
case _DashboardLiveClassDto():
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.scheduledStartAt,_that.scheduledEndAt,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String status)?  $default,) {final _that = this;
switch (_that) {
case _DashboardLiveClassDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.scheduledStartAt,_that.scheduledEndAt,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardLiveClassDto implements DashboardLiveClassDto {
  const _DashboardLiveClassDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, required this.title, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt, @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt, required this.status});
  factory _DashboardLiveClassDto.fromJson(Map<String, dynamic> json) => _$DashboardLiveClassDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override final  String title;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'scheduled_start_at') final  DateTime scheduledStartAt;
@override@JsonKey(name: 'scheduled_end_at') final  DateTime scheduledEndAt;
@override final  String status;

/// Create a copy of DashboardLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardLiveClassDtoCopyWith<_DashboardLiveClassDto> get copyWith => __$DashboardLiveClassDtoCopyWithImpl<_DashboardLiveClassDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardLiveClassDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardLiveClassDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,scheduledStartAt,scheduledEndAt,status);

@override
String toString() {
  return 'DashboardLiveClassDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DashboardLiveClassDtoCopyWith<$Res> implements $DashboardLiveClassDtoCopyWith<$Res> {
  factory _$DashboardLiveClassDtoCopyWith(_DashboardLiveClassDto value, $Res Function(_DashboardLiveClassDto) _then) = __$DashboardLiveClassDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt, String status
});




}
/// @nodoc
class __$DashboardLiveClassDtoCopyWithImpl<$Res>
    implements _$DashboardLiveClassDtoCopyWith<$Res> {
  __$DashboardLiveClassDtoCopyWithImpl(this._self, this._then);

  final _DashboardLiveClassDto _self;
  final $Res Function(_DashboardLiveClassDto) _then;

/// Create a copy of DashboardLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? status = null,}) {
  return _then(_DashboardLiveClassDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DashboardQuizDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId; String get title;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'available_until') DateTime? get availableUntil;
/// Create a copy of DashboardQuizDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardQuizDtoCopyWith<DashboardQuizDto> get copyWith => _$DashboardQuizDtoCopyWithImpl<DashboardQuizDto>(this as DashboardQuizDto, _$identity);

  /// Serializes this DashboardQuizDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardQuizDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,availableUntil);

@override
String toString() {
  return 'DashboardQuizDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, availableUntil: $availableUntil)';
}


}

/// @nodoc
abstract mixin class $DashboardQuizDtoCopyWith<$Res>  {
  factory $DashboardQuizDtoCopyWith(DashboardQuizDto value, $Res Function(DashboardQuizDto) _then) = _$DashboardQuizDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'available_until') DateTime? availableUntil
});




}
/// @nodoc
class _$DashboardQuizDtoCopyWithImpl<$Res>
    implements $DashboardQuizDtoCopyWith<$Res> {
  _$DashboardQuizDtoCopyWithImpl(this._self, this._then);

  final DashboardQuizDto _self;
  final $Res Function(DashboardQuizDto) _then;

/// Create a copy of DashboardQuizDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? availableUntil = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardQuizDto].
extension DashboardQuizDtoPatterns on DashboardQuizDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardQuizDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardQuizDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardQuizDto value)  $default,){
final _that = this;
switch (_that) {
case _DashboardQuizDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardQuizDto value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardQuizDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'available_until')  DateTime? availableUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardQuizDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.availableUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'available_until')  DateTime? availableUntil)  $default,) {final _that = this;
switch (_that) {
case _DashboardQuizDto():
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.availableUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'available_until')  DateTime? availableUntil)?  $default,) {final _that = this;
switch (_that) {
case _DashboardQuizDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.availableUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardQuizDto implements DashboardQuizDto {
  const _DashboardQuizDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, required this.title, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'available_until') this.availableUntil});
  factory _DashboardQuizDto.fromJson(Map<String, dynamic> json) => _$DashboardQuizDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override final  String title;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'available_until') final  DateTime? availableUntil;

/// Create a copy of DashboardQuizDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardQuizDtoCopyWith<_DashboardQuizDto> get copyWith => __$DashboardQuizDtoCopyWithImpl<_DashboardQuizDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardQuizDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardQuizDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,availableUntil);

@override
String toString() {
  return 'DashboardQuizDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, availableUntil: $availableUntil)';
}


}

/// @nodoc
abstract mixin class _$DashboardQuizDtoCopyWith<$Res> implements $DashboardQuizDtoCopyWith<$Res> {
  factory _$DashboardQuizDtoCopyWith(_DashboardQuizDto value, $Res Function(_DashboardQuizDto) _then) = __$DashboardQuizDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'available_until') DateTime? availableUntil
});




}
/// @nodoc
class __$DashboardQuizDtoCopyWithImpl<$Res>
    implements _$DashboardQuizDtoCopyWith<$Res> {
  __$DashboardQuizDtoCopyWithImpl(this._self, this._then);

  final _DashboardQuizDto _self;
  final $Res Function(_DashboardQuizDto) _then;

/// Create a copy of DashboardQuizDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? availableUntil = freezed,}) {
  return _then(_DashboardQuizDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$DashboardAssignmentDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId; String get title;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'due_at') DateTime get dueAt;
/// Create a copy of DashboardAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardAssignmentDtoCopyWith<DashboardAssignmentDto> get copyWith => _$DashboardAssignmentDtoCopyWithImpl<DashboardAssignmentDto>(this as DashboardAssignmentDto, _$identity);

  /// Serializes this DashboardAssignmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardAssignmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,dueAt);

@override
String toString() {
  return 'DashboardAssignmentDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, dueAt: $dueAt)';
}


}

/// @nodoc
abstract mixin class $DashboardAssignmentDtoCopyWith<$Res>  {
  factory $DashboardAssignmentDtoCopyWith(DashboardAssignmentDto value, $Res Function(DashboardAssignmentDto) _then) = _$DashboardAssignmentDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'due_at') DateTime dueAt
});




}
/// @nodoc
class _$DashboardAssignmentDtoCopyWithImpl<$Res>
    implements $DashboardAssignmentDtoCopyWith<$Res> {
  _$DashboardAssignmentDtoCopyWithImpl(this._self, this._then);

  final DashboardAssignmentDto _self;
  final $Res Function(DashboardAssignmentDto) _then;

/// Create a copy of DashboardAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? dueAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardAssignmentDto].
extension DashboardAssignmentDtoPatterns on DashboardAssignmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardAssignmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardAssignmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardAssignmentDto value)  $default,){
final _that = this;
switch (_that) {
case _DashboardAssignmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardAssignmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardAssignmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'due_at')  DateTime dueAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardAssignmentDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.dueAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'due_at')  DateTime dueAt)  $default,) {final _that = this;
switch (_that) {
case _DashboardAssignmentDto():
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.dueAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'due_at')  DateTime dueAt)?  $default,) {final _that = this;
switch (_that) {
case _DashboardAssignmentDto() when $default != null:
return $default(_that.id,_that.courseId,_that.batchId,_that.title,_that.courseTitle,_that.dueAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardAssignmentDto implements DashboardAssignmentDto {
  const _DashboardAssignmentDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, required this.title, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'due_at') required this.dueAt});
  factory _DashboardAssignmentDto.fromJson(Map<String, dynamic> json) => _$DashboardAssignmentDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override final  String title;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'due_at') final  DateTime dueAt;

/// Create a copy of DashboardAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardAssignmentDtoCopyWith<_DashboardAssignmentDto> get copyWith => __$DashboardAssignmentDtoCopyWithImpl<_DashboardAssignmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardAssignmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardAssignmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,batchId,title,courseTitle,dueAt);

@override
String toString() {
  return 'DashboardAssignmentDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, dueAt: $dueAt)';
}


}

/// @nodoc
abstract mixin class _$DashboardAssignmentDtoCopyWith<$Res> implements $DashboardAssignmentDtoCopyWith<$Res> {
  factory _$DashboardAssignmentDtoCopyWith(_DashboardAssignmentDto value, $Res Function(_DashboardAssignmentDto) _then) = __$DashboardAssignmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'due_at') DateTime dueAt
});




}
/// @nodoc
class __$DashboardAssignmentDtoCopyWithImpl<$Res>
    implements _$DashboardAssignmentDtoCopyWith<$Res> {
  __$DashboardAssignmentDtoCopyWithImpl(this._self, this._then);

  final _DashboardAssignmentDto _self;
  final $Res Function(_DashboardAssignmentDto) _then;

/// Create a copy of DashboardAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? courseTitle = null,Object? dueAt = null,}) {
  return _then(_DashboardAssignmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,dueAt: null == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DashboardResultDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'final_percentage') double get finalPercentage; bool get passed;@JsonKey(name: 'calculated_at') DateTime get calculatedAt;
/// Create a copy of DashboardResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardResultDtoCopyWith<DashboardResultDto> get copyWith => _$DashboardResultDtoCopyWithImpl<DashboardResultDto>(this as DashboardResultDto, _$identity);

  /// Serializes this DashboardResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.finalPercentage, finalPercentage) || other.finalPercentage == finalPercentage)&&(identical(other.passed, passed) || other.passed == passed)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,courseTitle,finalPercentage,passed,calculatedAt);

@override
String toString() {
  return 'DashboardResultDto(id: $id, courseId: $courseId, courseTitle: $courseTitle, finalPercentage: $finalPercentage, passed: $passed, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class $DashboardResultDtoCopyWith<$Res>  {
  factory $DashboardResultDtoCopyWith(DashboardResultDto value, $Res Function(DashboardResultDto) _then) = _$DashboardResultDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'final_percentage') double finalPercentage, bool passed,@JsonKey(name: 'calculated_at') DateTime calculatedAt
});




}
/// @nodoc
class _$DashboardResultDtoCopyWithImpl<$Res>
    implements $DashboardResultDtoCopyWith<$Res> {
  _$DashboardResultDtoCopyWithImpl(this._self, this._then);

  final DashboardResultDto _self;
  final $Res Function(DashboardResultDto) _then;

/// Create a copy of DashboardResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? courseTitle = null,Object? finalPercentage = null,Object? passed = null,Object? calculatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,finalPercentage: null == finalPercentage ? _self.finalPercentage : finalPercentage // ignore: cast_nullable_to_non_nullable
as double,passed: null == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardResultDto].
extension DashboardResultDtoPatterns on DashboardResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardResultDto value)  $default,){
final _that = this;
switch (_that) {
case _DashboardResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'final_percentage')  double finalPercentage,  bool passed, @JsonKey(name: 'calculated_at')  DateTime calculatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardResultDto() when $default != null:
return $default(_that.id,_that.courseId,_that.courseTitle,_that.finalPercentage,_that.passed,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'final_percentage')  double finalPercentage,  bool passed, @JsonKey(name: 'calculated_at')  DateTime calculatedAt)  $default,) {final _that = this;
switch (_that) {
case _DashboardResultDto():
return $default(_that.id,_that.courseId,_that.courseTitle,_that.finalPercentage,_that.passed,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'final_percentage')  double finalPercentage,  bool passed, @JsonKey(name: 'calculated_at')  DateTime calculatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DashboardResultDto() when $default != null:
return $default(_that.id,_that.courseId,_that.courseTitle,_that.finalPercentage,_that.passed,_that.calculatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardResultDto implements DashboardResultDto {
  const _DashboardResultDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'final_percentage') required this.finalPercentage, required this.passed, @JsonKey(name: 'calculated_at') required this.calculatedAt});
  factory _DashboardResultDto.fromJson(Map<String, dynamic> json) => _$DashboardResultDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'final_percentage') final  double finalPercentage;
@override final  bool passed;
@override@JsonKey(name: 'calculated_at') final  DateTime calculatedAt;

/// Create a copy of DashboardResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardResultDtoCopyWith<_DashboardResultDto> get copyWith => __$DashboardResultDtoCopyWithImpl<_DashboardResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.finalPercentage, finalPercentage) || other.finalPercentage == finalPercentage)&&(identical(other.passed, passed) || other.passed == passed)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,courseTitle,finalPercentage,passed,calculatedAt);

@override
String toString() {
  return 'DashboardResultDto(id: $id, courseId: $courseId, courseTitle: $courseTitle, finalPercentage: $finalPercentage, passed: $passed, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class _$DashboardResultDtoCopyWith<$Res> implements $DashboardResultDtoCopyWith<$Res> {
  factory _$DashboardResultDtoCopyWith(_DashboardResultDto value, $Res Function(_DashboardResultDto) _then) = __$DashboardResultDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'final_percentage') double finalPercentage, bool passed,@JsonKey(name: 'calculated_at') DateTime calculatedAt
});




}
/// @nodoc
class __$DashboardResultDtoCopyWithImpl<$Res>
    implements _$DashboardResultDtoCopyWith<$Res> {
  __$DashboardResultDtoCopyWithImpl(this._self, this._then);

  final _DashboardResultDto _self;
  final $Res Function(_DashboardResultDto) _then;

/// Create a copy of DashboardResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? courseTitle = null,Object? finalPercentage = null,Object? passed = null,Object? calculatedAt = null,}) {
  return _then(_DashboardResultDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,finalPercentage: null == finalPercentage ? _self.finalPercentage : finalPercentage // ignore: cast_nullable_to_non_nullable
as double,passed: null == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$RecommendedCourseDto {

 String get id; String get title; String get slug; String get description;@JsonKey(name: 'thumbnail_asset_id') String? get thumbnailAssetId; String get language;@JsonKey(name: 'is_free') bool get isFree;@JsonKey(name: 'price_minor') int get priceMinor; String get currency;@JsonKey(name: 'published_at') DateTime? get publishedAt; String get reason;@JsonKey(name: 'match_score') int get matchScore;@JsonKey(name: 'matched_on') List<String> get matchedOn;
/// Create a copy of RecommendedCourseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedCourseDtoCopyWith<RecommendedCourseDto> get copyWith => _$RecommendedCourseDtoCopyWithImpl<RecommendedCourseDto>(this as RecommendedCourseDto, _$identity);

  /// Serializes this RecommendedCourseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedCourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.language, language) || other.language == language)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.matchScore, matchScore) || other.matchScore == matchScore)&&const DeepCollectionEquality().equals(other.matchedOn, matchedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,description,thumbnailAssetId,language,isFree,priceMinor,currency,publishedAt,reason,matchScore,const DeepCollectionEquality().hash(matchedOn));

@override
String toString() {
  return 'RecommendedCourseDto(id: $id, title: $title, slug: $slug, description: $description, thumbnailAssetId: $thumbnailAssetId, language: $language, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, publishedAt: $publishedAt, reason: $reason, matchScore: $matchScore, matchedOn: $matchedOn)';
}


}

/// @nodoc
abstract mixin class $RecommendedCourseDtoCopyWith<$Res>  {
  factory $RecommendedCourseDtoCopyWith(RecommendedCourseDto value, $Res Function(RecommendedCourseDto) _then) = _$RecommendedCourseDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String slug, String description,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId, String language,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency,@JsonKey(name: 'published_at') DateTime? publishedAt, String reason,@JsonKey(name: 'match_score') int matchScore,@JsonKey(name: 'matched_on') List<String> matchedOn
});




}
/// @nodoc
class _$RecommendedCourseDtoCopyWithImpl<$Res>
    implements $RecommendedCourseDtoCopyWith<$Res> {
  _$RecommendedCourseDtoCopyWithImpl(this._self, this._then);

  final RecommendedCourseDto _self;
  final $Res Function(RecommendedCourseDto) _then;

/// Create a copy of RecommendedCourseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? description = null,Object? thumbnailAssetId = freezed,Object? language = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? publishedAt = freezed,Object? reason = null,Object? matchScore = null,Object? matchedOn = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,matchScore: null == matchScore ? _self.matchScore : matchScore // ignore: cast_nullable_to_non_nullable
as int,matchedOn: null == matchedOn ? _self.matchedOn : matchedOn // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommendedCourseDto].
extension RecommendedCourseDtoPatterns on RecommendedCourseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendedCourseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendedCourseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendedCourseDto value)  $default,){
final _that = this;
switch (_that) {
case _RecommendedCourseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendedCourseDto value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendedCourseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String description, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String language, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency, @JsonKey(name: 'published_at')  DateTime? publishedAt,  String reason, @JsonKey(name: 'match_score')  int matchScore, @JsonKey(name: 'matched_on')  List<String> matchedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendedCourseDto() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.description,_that.thumbnailAssetId,_that.language,_that.isFree,_that.priceMinor,_that.currency,_that.publishedAt,_that.reason,_that.matchScore,_that.matchedOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String description, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String language, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency, @JsonKey(name: 'published_at')  DateTime? publishedAt,  String reason, @JsonKey(name: 'match_score')  int matchScore, @JsonKey(name: 'matched_on')  List<String> matchedOn)  $default,) {final _that = this;
switch (_that) {
case _RecommendedCourseDto():
return $default(_that.id,_that.title,_that.slug,_that.description,_that.thumbnailAssetId,_that.language,_that.isFree,_that.priceMinor,_that.currency,_that.publishedAt,_that.reason,_that.matchScore,_that.matchedOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String slug,  String description, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String language, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency, @JsonKey(name: 'published_at')  DateTime? publishedAt,  String reason, @JsonKey(name: 'match_score')  int matchScore, @JsonKey(name: 'matched_on')  List<String> matchedOn)?  $default,) {final _that = this;
switch (_that) {
case _RecommendedCourseDto() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.description,_that.thumbnailAssetId,_that.language,_that.isFree,_that.priceMinor,_that.currency,_that.publishedAt,_that.reason,_that.matchScore,_that.matchedOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendedCourseDto implements RecommendedCourseDto {
  const _RecommendedCourseDto({required this.id, required this.title, required this.slug, this.description = '', @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId, this.language = 'bn', @JsonKey(name: 'is_free') this.isFree = false, @JsonKey(name: 'price_minor') this.priceMinor = 0, this.currency = 'BDT', @JsonKey(name: 'published_at') this.publishedAt, this.reason = '', @JsonKey(name: 'match_score') this.matchScore = 0, @JsonKey(name: 'matched_on') final  List<String> matchedOn = const <String>[]}): _matchedOn = matchedOn;
  factory _RecommendedCourseDto.fromJson(Map<String, dynamic> json) => _$RecommendedCourseDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String slug;
@override@JsonKey() final  String description;
@override@JsonKey(name: 'thumbnail_asset_id') final  String? thumbnailAssetId;
@override@JsonKey() final  String language;
@override@JsonKey(name: 'is_free') final  bool isFree;
@override@JsonKey(name: 'price_minor') final  int priceMinor;
@override@JsonKey() final  String currency;
@override@JsonKey(name: 'published_at') final  DateTime? publishedAt;
@override@JsonKey() final  String reason;
@override@JsonKey(name: 'match_score') final  int matchScore;
 final  List<String> _matchedOn;
@override@JsonKey(name: 'matched_on') List<String> get matchedOn {
  if (_matchedOn is EqualUnmodifiableListView) return _matchedOn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matchedOn);
}


/// Create a copy of RecommendedCourseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendedCourseDtoCopyWith<_RecommendedCourseDto> get copyWith => __$RecommendedCourseDtoCopyWithImpl<_RecommendedCourseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendedCourseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendedCourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.language, language) || other.language == language)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.matchScore, matchScore) || other.matchScore == matchScore)&&const DeepCollectionEquality().equals(other._matchedOn, _matchedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,description,thumbnailAssetId,language,isFree,priceMinor,currency,publishedAt,reason,matchScore,const DeepCollectionEquality().hash(_matchedOn));

@override
String toString() {
  return 'RecommendedCourseDto(id: $id, title: $title, slug: $slug, description: $description, thumbnailAssetId: $thumbnailAssetId, language: $language, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, publishedAt: $publishedAt, reason: $reason, matchScore: $matchScore, matchedOn: $matchedOn)';
}


}

/// @nodoc
abstract mixin class _$RecommendedCourseDtoCopyWith<$Res> implements $RecommendedCourseDtoCopyWith<$Res> {
  factory _$RecommendedCourseDtoCopyWith(_RecommendedCourseDto value, $Res Function(_RecommendedCourseDto) _then) = __$RecommendedCourseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String slug, String description,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId, String language,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency,@JsonKey(name: 'published_at') DateTime? publishedAt, String reason,@JsonKey(name: 'match_score') int matchScore,@JsonKey(name: 'matched_on') List<String> matchedOn
});




}
/// @nodoc
class __$RecommendedCourseDtoCopyWithImpl<$Res>
    implements _$RecommendedCourseDtoCopyWith<$Res> {
  __$RecommendedCourseDtoCopyWithImpl(this._self, this._then);

  final _RecommendedCourseDto _self;
  final $Res Function(_RecommendedCourseDto) _then;

/// Create a copy of RecommendedCourseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? description = null,Object? thumbnailAssetId = freezed,Object? language = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? publishedAt = freezed,Object? reason = null,Object? matchScore = null,Object? matchedOn = null,}) {
  return _then(_RecommendedCourseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,matchScore: null == matchScore ? _self.matchScore : matchScore // ignore: cast_nullable_to_non_nullable
as int,matchedOn: null == matchedOn ? _self._matchedOn : matchedOn // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$StudentDashboardDto {

@JsonKey(name: 'generated_at') DateTime get generatedAt;@JsonKey(name: 'continue_learning') List<ContinueLearningDto> get continueLearning;@JsonKey(name: 'upcoming_live_classes') List<DashboardLiveClassDto> get upcomingLiveClasses;@JsonKey(name: 'due_assignments') List<DashboardAssignmentDto> get dueAssignments;@JsonKey(name: 'available_quizzes') List<DashboardQuizDto> get availableQuizzes;@JsonKey(name: 'recent_results') List<DashboardResultDto> get recentResults;@JsonKey(name: 'recommended_courses') List<RecommendedCourseDto> get recommendedCourses;@JsonKey(name: 'unread_notification_count') int get unreadNotificationCount;
/// Create a copy of StudentDashboardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentDashboardDtoCopyWith<StudentDashboardDto> get copyWith => _$StudentDashboardDtoCopyWithImpl<StudentDashboardDto>(this as StudentDashboardDto, _$identity);

  /// Serializes this StudentDashboardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentDashboardDto&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other.continueLearning, continueLearning)&&const DeepCollectionEquality().equals(other.upcomingLiveClasses, upcomingLiveClasses)&&const DeepCollectionEquality().equals(other.dueAssignments, dueAssignments)&&const DeepCollectionEquality().equals(other.availableQuizzes, availableQuizzes)&&const DeepCollectionEquality().equals(other.recentResults, recentResults)&&const DeepCollectionEquality().equals(other.recommendedCourses, recommendedCourses)&&(identical(other.unreadNotificationCount, unreadNotificationCount) || other.unreadNotificationCount == unreadNotificationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,generatedAt,const DeepCollectionEquality().hash(continueLearning),const DeepCollectionEquality().hash(upcomingLiveClasses),const DeepCollectionEquality().hash(dueAssignments),const DeepCollectionEquality().hash(availableQuizzes),const DeepCollectionEquality().hash(recentResults),const DeepCollectionEquality().hash(recommendedCourses),unreadNotificationCount);

@override
String toString() {
  return 'StudentDashboardDto(generatedAt: $generatedAt, continueLearning: $continueLearning, upcomingLiveClasses: $upcomingLiveClasses, dueAssignments: $dueAssignments, availableQuizzes: $availableQuizzes, recentResults: $recentResults, recommendedCourses: $recommendedCourses, unreadNotificationCount: $unreadNotificationCount)';
}


}

/// @nodoc
abstract mixin class $StudentDashboardDtoCopyWith<$Res>  {
  factory $StudentDashboardDtoCopyWith(StudentDashboardDto value, $Res Function(StudentDashboardDto) _then) = _$StudentDashboardDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'generated_at') DateTime generatedAt,@JsonKey(name: 'continue_learning') List<ContinueLearningDto> continueLearning,@JsonKey(name: 'upcoming_live_classes') List<DashboardLiveClassDto> upcomingLiveClasses,@JsonKey(name: 'due_assignments') List<DashboardAssignmentDto> dueAssignments,@JsonKey(name: 'available_quizzes') List<DashboardQuizDto> availableQuizzes,@JsonKey(name: 'recent_results') List<DashboardResultDto> recentResults,@JsonKey(name: 'recommended_courses') List<RecommendedCourseDto> recommendedCourses,@JsonKey(name: 'unread_notification_count') int unreadNotificationCount
});




}
/// @nodoc
class _$StudentDashboardDtoCopyWithImpl<$Res>
    implements $StudentDashboardDtoCopyWith<$Res> {
  _$StudentDashboardDtoCopyWithImpl(this._self, this._then);

  final StudentDashboardDto _self;
  final $Res Function(StudentDashboardDto) _then;

/// Create a copy of StudentDashboardDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? generatedAt = null,Object? continueLearning = null,Object? upcomingLiveClasses = null,Object? dueAssignments = null,Object? availableQuizzes = null,Object? recentResults = null,Object? recommendedCourses = null,Object? unreadNotificationCount = null,}) {
  return _then(_self.copyWith(
generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,continueLearning: null == continueLearning ? _self.continueLearning : continueLearning // ignore: cast_nullable_to_non_nullable
as List<ContinueLearningDto>,upcomingLiveClasses: null == upcomingLiveClasses ? _self.upcomingLiveClasses : upcomingLiveClasses // ignore: cast_nullable_to_non_nullable
as List<DashboardLiveClassDto>,dueAssignments: null == dueAssignments ? _self.dueAssignments : dueAssignments // ignore: cast_nullable_to_non_nullable
as List<DashboardAssignmentDto>,availableQuizzes: null == availableQuizzes ? _self.availableQuizzes : availableQuizzes // ignore: cast_nullable_to_non_nullable
as List<DashboardQuizDto>,recentResults: null == recentResults ? _self.recentResults : recentResults // ignore: cast_nullable_to_non_nullable
as List<DashboardResultDto>,recommendedCourses: null == recommendedCourses ? _self.recommendedCourses : recommendedCourses // ignore: cast_nullable_to_non_nullable
as List<RecommendedCourseDto>,unreadNotificationCount: null == unreadNotificationCount ? _self.unreadNotificationCount : unreadNotificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentDashboardDto].
extension StudentDashboardDtoPatterns on StudentDashboardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentDashboardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentDashboardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentDashboardDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentDashboardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentDashboardDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentDashboardDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'generated_at')  DateTime generatedAt, @JsonKey(name: 'continue_learning')  List<ContinueLearningDto> continueLearning, @JsonKey(name: 'upcoming_live_classes')  List<DashboardLiveClassDto> upcomingLiveClasses, @JsonKey(name: 'due_assignments')  List<DashboardAssignmentDto> dueAssignments, @JsonKey(name: 'available_quizzes')  List<DashboardQuizDto> availableQuizzes, @JsonKey(name: 'recent_results')  List<DashboardResultDto> recentResults, @JsonKey(name: 'recommended_courses')  List<RecommendedCourseDto> recommendedCourses, @JsonKey(name: 'unread_notification_count')  int unreadNotificationCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentDashboardDto() when $default != null:
return $default(_that.generatedAt,_that.continueLearning,_that.upcomingLiveClasses,_that.dueAssignments,_that.availableQuizzes,_that.recentResults,_that.recommendedCourses,_that.unreadNotificationCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'generated_at')  DateTime generatedAt, @JsonKey(name: 'continue_learning')  List<ContinueLearningDto> continueLearning, @JsonKey(name: 'upcoming_live_classes')  List<DashboardLiveClassDto> upcomingLiveClasses, @JsonKey(name: 'due_assignments')  List<DashboardAssignmentDto> dueAssignments, @JsonKey(name: 'available_quizzes')  List<DashboardQuizDto> availableQuizzes, @JsonKey(name: 'recent_results')  List<DashboardResultDto> recentResults, @JsonKey(name: 'recommended_courses')  List<RecommendedCourseDto> recommendedCourses, @JsonKey(name: 'unread_notification_count')  int unreadNotificationCount)  $default,) {final _that = this;
switch (_that) {
case _StudentDashboardDto():
return $default(_that.generatedAt,_that.continueLearning,_that.upcomingLiveClasses,_that.dueAssignments,_that.availableQuizzes,_that.recentResults,_that.recommendedCourses,_that.unreadNotificationCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'generated_at')  DateTime generatedAt, @JsonKey(name: 'continue_learning')  List<ContinueLearningDto> continueLearning, @JsonKey(name: 'upcoming_live_classes')  List<DashboardLiveClassDto> upcomingLiveClasses, @JsonKey(name: 'due_assignments')  List<DashboardAssignmentDto> dueAssignments, @JsonKey(name: 'available_quizzes')  List<DashboardQuizDto> availableQuizzes, @JsonKey(name: 'recent_results')  List<DashboardResultDto> recentResults, @JsonKey(name: 'recommended_courses')  List<RecommendedCourseDto> recommendedCourses, @JsonKey(name: 'unread_notification_count')  int unreadNotificationCount)?  $default,) {final _that = this;
switch (_that) {
case _StudentDashboardDto() when $default != null:
return $default(_that.generatedAt,_that.continueLearning,_that.upcomingLiveClasses,_that.dueAssignments,_that.availableQuizzes,_that.recentResults,_that.recommendedCourses,_that.unreadNotificationCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentDashboardDto implements StudentDashboardDto {
  const _StudentDashboardDto({@JsonKey(name: 'generated_at') required this.generatedAt, @JsonKey(name: 'continue_learning') final  List<ContinueLearningDto> continueLearning = const <ContinueLearningDto>[], @JsonKey(name: 'upcoming_live_classes') final  List<DashboardLiveClassDto> upcomingLiveClasses = const <DashboardLiveClassDto>[], @JsonKey(name: 'due_assignments') final  List<DashboardAssignmentDto> dueAssignments = const <DashboardAssignmentDto>[], @JsonKey(name: 'available_quizzes') final  List<DashboardQuizDto> availableQuizzes = const <DashboardQuizDto>[], @JsonKey(name: 'recent_results') final  List<DashboardResultDto> recentResults = const <DashboardResultDto>[], @JsonKey(name: 'recommended_courses') final  List<RecommendedCourseDto> recommendedCourses = const <RecommendedCourseDto>[], @JsonKey(name: 'unread_notification_count') this.unreadNotificationCount = 0}): _continueLearning = continueLearning,_upcomingLiveClasses = upcomingLiveClasses,_dueAssignments = dueAssignments,_availableQuizzes = availableQuizzes,_recentResults = recentResults,_recommendedCourses = recommendedCourses;
  factory _StudentDashboardDto.fromJson(Map<String, dynamic> json) => _$StudentDashboardDtoFromJson(json);

@override@JsonKey(name: 'generated_at') final  DateTime generatedAt;
 final  List<ContinueLearningDto> _continueLearning;
@override@JsonKey(name: 'continue_learning') List<ContinueLearningDto> get continueLearning {
  if (_continueLearning is EqualUnmodifiableListView) return _continueLearning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_continueLearning);
}

 final  List<DashboardLiveClassDto> _upcomingLiveClasses;
@override@JsonKey(name: 'upcoming_live_classes') List<DashboardLiveClassDto> get upcomingLiveClasses {
  if (_upcomingLiveClasses is EqualUnmodifiableListView) return _upcomingLiveClasses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingLiveClasses);
}

 final  List<DashboardAssignmentDto> _dueAssignments;
@override@JsonKey(name: 'due_assignments') List<DashboardAssignmentDto> get dueAssignments {
  if (_dueAssignments is EqualUnmodifiableListView) return _dueAssignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dueAssignments);
}

 final  List<DashboardQuizDto> _availableQuizzes;
@override@JsonKey(name: 'available_quizzes') List<DashboardQuizDto> get availableQuizzes {
  if (_availableQuizzes is EqualUnmodifiableListView) return _availableQuizzes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableQuizzes);
}

 final  List<DashboardResultDto> _recentResults;
@override@JsonKey(name: 'recent_results') List<DashboardResultDto> get recentResults {
  if (_recentResults is EqualUnmodifiableListView) return _recentResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentResults);
}

 final  List<RecommendedCourseDto> _recommendedCourses;
@override@JsonKey(name: 'recommended_courses') List<RecommendedCourseDto> get recommendedCourses {
  if (_recommendedCourses is EqualUnmodifiableListView) return _recommendedCourses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedCourses);
}

@override@JsonKey(name: 'unread_notification_count') final  int unreadNotificationCount;

/// Create a copy of StudentDashboardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentDashboardDtoCopyWith<_StudentDashboardDto> get copyWith => __$StudentDashboardDtoCopyWithImpl<_StudentDashboardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentDashboardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentDashboardDto&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other._continueLearning, _continueLearning)&&const DeepCollectionEquality().equals(other._upcomingLiveClasses, _upcomingLiveClasses)&&const DeepCollectionEquality().equals(other._dueAssignments, _dueAssignments)&&const DeepCollectionEquality().equals(other._availableQuizzes, _availableQuizzes)&&const DeepCollectionEquality().equals(other._recentResults, _recentResults)&&const DeepCollectionEquality().equals(other._recommendedCourses, _recommendedCourses)&&(identical(other.unreadNotificationCount, unreadNotificationCount) || other.unreadNotificationCount == unreadNotificationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,generatedAt,const DeepCollectionEquality().hash(_continueLearning),const DeepCollectionEquality().hash(_upcomingLiveClasses),const DeepCollectionEquality().hash(_dueAssignments),const DeepCollectionEquality().hash(_availableQuizzes),const DeepCollectionEquality().hash(_recentResults),const DeepCollectionEquality().hash(_recommendedCourses),unreadNotificationCount);

@override
String toString() {
  return 'StudentDashboardDto(generatedAt: $generatedAt, continueLearning: $continueLearning, upcomingLiveClasses: $upcomingLiveClasses, dueAssignments: $dueAssignments, availableQuizzes: $availableQuizzes, recentResults: $recentResults, recommendedCourses: $recommendedCourses, unreadNotificationCount: $unreadNotificationCount)';
}


}

/// @nodoc
abstract mixin class _$StudentDashboardDtoCopyWith<$Res> implements $StudentDashboardDtoCopyWith<$Res> {
  factory _$StudentDashboardDtoCopyWith(_StudentDashboardDto value, $Res Function(_StudentDashboardDto) _then) = __$StudentDashboardDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'generated_at') DateTime generatedAt,@JsonKey(name: 'continue_learning') List<ContinueLearningDto> continueLearning,@JsonKey(name: 'upcoming_live_classes') List<DashboardLiveClassDto> upcomingLiveClasses,@JsonKey(name: 'due_assignments') List<DashboardAssignmentDto> dueAssignments,@JsonKey(name: 'available_quizzes') List<DashboardQuizDto> availableQuizzes,@JsonKey(name: 'recent_results') List<DashboardResultDto> recentResults,@JsonKey(name: 'recommended_courses') List<RecommendedCourseDto> recommendedCourses,@JsonKey(name: 'unread_notification_count') int unreadNotificationCount
});




}
/// @nodoc
class __$StudentDashboardDtoCopyWithImpl<$Res>
    implements _$StudentDashboardDtoCopyWith<$Res> {
  __$StudentDashboardDtoCopyWithImpl(this._self, this._then);

  final _StudentDashboardDto _self;
  final $Res Function(_StudentDashboardDto) _then;

/// Create a copy of StudentDashboardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? generatedAt = null,Object? continueLearning = null,Object? upcomingLiveClasses = null,Object? dueAssignments = null,Object? availableQuizzes = null,Object? recentResults = null,Object? recommendedCourses = null,Object? unreadNotificationCount = null,}) {
  return _then(_StudentDashboardDto(
generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,continueLearning: null == continueLearning ? _self._continueLearning : continueLearning // ignore: cast_nullable_to_non_nullable
as List<ContinueLearningDto>,upcomingLiveClasses: null == upcomingLiveClasses ? _self._upcomingLiveClasses : upcomingLiveClasses // ignore: cast_nullable_to_non_nullable
as List<DashboardLiveClassDto>,dueAssignments: null == dueAssignments ? _self._dueAssignments : dueAssignments // ignore: cast_nullable_to_non_nullable
as List<DashboardAssignmentDto>,availableQuizzes: null == availableQuizzes ? _self._availableQuizzes : availableQuizzes // ignore: cast_nullable_to_non_nullable
as List<DashboardQuizDto>,recentResults: null == recentResults ? _self._recentResults : recentResults // ignore: cast_nullable_to_non_nullable
as List<DashboardResultDto>,recommendedCourses: null == recommendedCourses ? _self._recommendedCourses : recommendedCourses // ignore: cast_nullable_to_non_nullable
as List<RecommendedCourseDto>,unreadNotificationCount: null == unreadNotificationCount ? _self.unreadNotificationCount : unreadNotificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StudentLiveClassDto {

 String get id;@JsonKey(name: 'organization_id') String get organizationId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId; String get title; String get description; String get status;@JsonKey(name: 'scheduled_start_at') DateTime get scheduledStartAt;@JsonKey(name: 'scheduled_end_at') DateTime get scheduledEndAt;@JsonKey(name: 'started_at') DateTime? get startedAt;@JsonKey(name: 'ended_at') DateTime? get endedAt;@JsonKey(name: 'course_title') String get courseTitle;
/// Create a copy of StudentLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentLiveClassDtoCopyWith<StudentLiveClassDto> get copyWith => _$StudentLiveClassDtoCopyWithImpl<StudentLiveClassDto>(this as StudentLiveClassDto, _$identity);

  /// Serializes this StudentLiveClassDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentLiveClassDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,courseId,batchId,title,description,status,scheduledStartAt,scheduledEndAt,startedAt,endedAt,courseTitle);

@override
String toString() {
  return 'StudentLiveClassDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, title: $title, description: $description, status: $status, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, startedAt: $startedAt, endedAt: $endedAt, courseTitle: $courseTitle)';
}


}

/// @nodoc
abstract mixin class $StudentLiveClassDtoCopyWith<$Res>  {
  factory $StudentLiveClassDtoCopyWith(StudentLiveClassDto value, $Res Function(StudentLiveClassDto) _then) = _$StudentLiveClassDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title, String description, String status,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'course_title') String courseTitle
});




}
/// @nodoc
class _$StudentLiveClassDtoCopyWithImpl<$Res>
    implements $StudentLiveClassDtoCopyWith<$Res> {
  _$StudentLiveClassDtoCopyWithImpl(this._self, this._then);

  final StudentLiveClassDto _self;
  final $Res Function(StudentLiveClassDto) _then;

/// Create a copy of StudentLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? description = null,Object? status = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? courseTitle = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentLiveClassDto].
extension StudentLiveClassDtoPatterns on StudentLiveClassDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentLiveClassDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentLiveClassDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentLiveClassDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentLiveClassDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentLiveClassDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentLiveClassDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title,  String description,  String status, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'course_title')  String courseTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentLiveClassDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.title,_that.description,_that.status,_that.scheduledStartAt,_that.scheduledEndAt,_that.startedAt,_that.endedAt,_that.courseTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title,  String description,  String status, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'course_title')  String courseTitle)  $default,) {final _that = this;
switch (_that) {
case _StudentLiveClassDto():
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.title,_that.description,_that.status,_that.scheduledStartAt,_that.scheduledEndAt,_that.startedAt,_that.endedAt,_that.courseTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title,  String description,  String status, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'course_title')  String courseTitle)?  $default,) {final _that = this;
switch (_that) {
case _StudentLiveClassDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.title,_that.description,_that.status,_that.scheduledStartAt,_that.scheduledEndAt,_that.startedAt,_that.endedAt,_that.courseTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentLiveClassDto implements StudentLiveClassDto {
  const _StudentLiveClassDto({required this.id, @JsonKey(name: 'organization_id') required this.organizationId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, required this.title, this.description = '', required this.status, @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt, @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'ended_at') this.endedAt, @JsonKey(name: 'course_title') required this.courseTitle});
  factory _StudentLiveClassDto.fromJson(Map<String, dynamic> json) => _$StudentLiveClassDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String organizationId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override final  String title;
@override@JsonKey() final  String description;
@override final  String status;
@override@JsonKey(name: 'scheduled_start_at') final  DateTime scheduledStartAt;
@override@JsonKey(name: 'scheduled_end_at') final  DateTime scheduledEndAt;
@override@JsonKey(name: 'started_at') final  DateTime? startedAt;
@override@JsonKey(name: 'ended_at') final  DateTime? endedAt;
@override@JsonKey(name: 'course_title') final  String courseTitle;

/// Create a copy of StudentLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentLiveClassDtoCopyWith<_StudentLiveClassDto> get copyWith => __$StudentLiveClassDtoCopyWithImpl<_StudentLiveClassDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentLiveClassDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentLiveClassDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,courseId,batchId,title,description,status,scheduledStartAt,scheduledEndAt,startedAt,endedAt,courseTitle);

@override
String toString() {
  return 'StudentLiveClassDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, title: $title, description: $description, status: $status, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, startedAt: $startedAt, endedAt: $endedAt, courseTitle: $courseTitle)';
}


}

/// @nodoc
abstract mixin class _$StudentLiveClassDtoCopyWith<$Res> implements $StudentLiveClassDtoCopyWith<$Res> {
  factory _$StudentLiveClassDtoCopyWith(_StudentLiveClassDto value, $Res Function(_StudentLiveClassDto) _then) = __$StudentLiveClassDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title, String description, String status,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'course_title') String courseTitle
});




}
/// @nodoc
class __$StudentLiveClassDtoCopyWithImpl<$Res>
    implements _$StudentLiveClassDtoCopyWith<$Res> {
  __$StudentLiveClassDtoCopyWithImpl(this._self, this._then);

  final _StudentLiveClassDto _self;
  final $Res Function(_StudentLiveClassDto) _then;

/// Create a copy of StudentLiveClassDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? description = null,Object? status = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? courseTitle = null,}) {
  return _then(_StudentLiveClassDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StudentQuizDto {

 String get id;@JsonKey(name: 'organization_id') String get organizationId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId;@JsonKey(name: 'lesson_id') String? get lessonId; String get title; String get instructions;@JsonKey(name: 'time_limit_seconds') int? get timeLimitSeconds;@JsonKey(name: 'attempt_limit') int get attemptLimit;@JsonKey(name: 'attempts_used') int get attemptsUsed;@JsonKey(name: 'pass_percentage') double get passPercentage;@JsonKey(name: 'available_from') DateTime? get availableFrom;@JsonKey(name: 'available_until') DateTime? get availableUntil;@JsonKey(name: 'results_visibility') String get resultsVisibility;@JsonKey(name: 'is_required') bool get isRequired;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StudentQuizDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentQuizDtoCopyWith<StudentQuizDto> get copyWith => _$StudentQuizDtoCopyWithImpl<StudentQuizDto>(this as StudentQuizDto, _$identity);

  /// Serializes this StudentQuizDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentQuizDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.attemptsUsed, attemptsUsed) || other.attemptsUsed == attemptsUsed)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.availableFrom, availableFrom) || other.availableFrom == availableFrom)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil)&&(identical(other.resultsVisibility, resultsVisibility) || other.resultsVisibility == resultsVisibility)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,courseId,batchId,lessonId,title,instructions,timeLimitSeconds,attemptLimit,attemptsUsed,passPercentage,availableFrom,availableUntil,resultsVisibility,isRequired,courseTitle,createdAt,updatedAt);

@override
String toString() {
  return 'StudentQuizDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired, courseTitle: $courseTitle, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StudentQuizDtoCopyWith<$Res>  {
  factory $StudentQuizDtoCopyWith(StudentQuizDto value, $Res Function(StudentQuizDto) _then) = _$StudentQuizDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'lesson_id') String? lessonId, String title, String instructions,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'attempts_used') int attemptsUsed,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'available_from') DateTime? availableFrom,@JsonKey(name: 'available_until') DateTime? availableUntil,@JsonKey(name: 'results_visibility') String resultsVisibility,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StudentQuizDtoCopyWithImpl<$Res>
    implements $StudentQuizDtoCopyWith<$Res> {
  _$StudentQuizDtoCopyWithImpl(this._self, this._then);

  final StudentQuizDto _self;
  final $Res Function(StudentQuizDto) _then;

/// Create a copy of StudentQuizDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? lessonId = freezed,Object? title = null,Object? instructions = null,Object? timeLimitSeconds = freezed,Object? attemptLimit = null,Object? attemptsUsed = null,Object? passPercentage = null,Object? availableFrom = freezed,Object? availableUntil = freezed,Object? resultsVisibility = null,Object? isRequired = null,Object? courseTitle = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,attemptsUsed: null == attemptsUsed ? _self.attemptsUsed : attemptsUsed // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,availableFrom: freezed == availableFrom ? _self.availableFrom : availableFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,resultsVisibility: null == resultsVisibility ? _self.resultsVisibility : resultsVisibility // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentQuizDto].
extension StudentQuizDtoPatterns on StudentQuizDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentQuizDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentQuizDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentQuizDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentQuizDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentQuizDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentQuizDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String resultsVisibility, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentQuizDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.timeLimitSeconds,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired,_that.courseTitle,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String resultsVisibility, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StudentQuizDto():
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.timeLimitSeconds,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired,_that.courseTitle,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String resultsVisibility, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StudentQuizDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.timeLimitSeconds,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired,_that.courseTitle,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentQuizDto implements StudentQuizDto {
  const _StudentQuizDto({required this.id, @JsonKey(name: 'organization_id') required this.organizationId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, @JsonKey(name: 'lesson_id') this.lessonId, required this.title, this.instructions = '', @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds, @JsonKey(name: 'attempt_limit') required this.attemptLimit, @JsonKey(name: 'attempts_used') this.attemptsUsed = 0, @JsonKey(name: 'pass_percentage') required this.passPercentage, @JsonKey(name: 'available_from') this.availableFrom, @JsonKey(name: 'available_until') this.availableUntil, @JsonKey(name: 'results_visibility') required this.resultsVisibility, @JsonKey(name: 'is_required') this.isRequired = false, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StudentQuizDto.fromJson(Map<String, dynamic> json) => _$StudentQuizDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String organizationId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override@JsonKey(name: 'lesson_id') final  String? lessonId;
@override final  String title;
@override@JsonKey() final  String instructions;
@override@JsonKey(name: 'time_limit_seconds') final  int? timeLimitSeconds;
@override@JsonKey(name: 'attempt_limit') final  int attemptLimit;
@override@JsonKey(name: 'attempts_used') final  int attemptsUsed;
@override@JsonKey(name: 'pass_percentage') final  double passPercentage;
@override@JsonKey(name: 'available_from') final  DateTime? availableFrom;
@override@JsonKey(name: 'available_until') final  DateTime? availableUntil;
@override@JsonKey(name: 'results_visibility') final  String resultsVisibility;
@override@JsonKey(name: 'is_required') final  bool isRequired;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StudentQuizDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentQuizDtoCopyWith<_StudentQuizDto> get copyWith => __$StudentQuizDtoCopyWithImpl<_StudentQuizDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentQuizDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentQuizDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.attemptsUsed, attemptsUsed) || other.attemptsUsed == attemptsUsed)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.availableFrom, availableFrom) || other.availableFrom == availableFrom)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil)&&(identical(other.resultsVisibility, resultsVisibility) || other.resultsVisibility == resultsVisibility)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,courseId,batchId,lessonId,title,instructions,timeLimitSeconds,attemptLimit,attemptsUsed,passPercentage,availableFrom,availableUntil,resultsVisibility,isRequired,courseTitle,createdAt,updatedAt);

@override
String toString() {
  return 'StudentQuizDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired, courseTitle: $courseTitle, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StudentQuizDtoCopyWith<$Res> implements $StudentQuizDtoCopyWith<$Res> {
  factory _$StudentQuizDtoCopyWith(_StudentQuizDto value, $Res Function(_StudentQuizDto) _then) = __$StudentQuizDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'lesson_id') String? lessonId, String title, String instructions,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'attempts_used') int attemptsUsed,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'available_from') DateTime? availableFrom,@JsonKey(name: 'available_until') DateTime? availableUntil,@JsonKey(name: 'results_visibility') String resultsVisibility,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StudentQuizDtoCopyWithImpl<$Res>
    implements _$StudentQuizDtoCopyWith<$Res> {
  __$StudentQuizDtoCopyWithImpl(this._self, this._then);

  final _StudentQuizDto _self;
  final $Res Function(_StudentQuizDto) _then;

/// Create a copy of StudentQuizDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? lessonId = freezed,Object? title = null,Object? instructions = null,Object? timeLimitSeconds = freezed,Object? attemptLimit = null,Object? attemptsUsed = null,Object? passPercentage = null,Object? availableFrom = freezed,Object? availableUntil = freezed,Object? resultsVisibility = null,Object? isRequired = null,Object? courseTitle = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_StudentQuizDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,attemptsUsed: null == attemptsUsed ? _self.attemptsUsed : attemptsUsed // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,availableFrom: freezed == availableFrom ? _self.availableFrom : availableFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,resultsVisibility: null == resultsVisibility ? _self.resultsVisibility : resultsVisibility // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StudentAssignmentDto {

 String get id;@JsonKey(name: 'organization_id') String get organizationId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId;@JsonKey(name: 'lesson_id') String? get lessonId; String get title; String get instructions;@JsonKey(name: 'due_at') DateTime? get dueAt;@JsonKey(name: 'maximum_score') double get maximumScore;@JsonKey(name: 'passing_score') double get passingScore;@JsonKey(name: 'allowed_file_types') List<String> get allowedFileTypes;@JsonKey(name: 'maximum_submissions') int get maximumSubmissions;@JsonKey(name: 'is_required') bool get isRequired;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'submission_id') String? get submissionId;@JsonKey(name: 'submission_status') String get submissionStatus;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StudentAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentAssignmentDtoCopyWith<StudentAssignmentDto> get copyWith => _$StudentAssignmentDtoCopyWithImpl<StudentAssignmentDto>(this as StudentAssignmentDto, _$identity);

  /// Serializes this StudentAssignmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentAssignmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.maximumScore, maximumScore) || other.maximumScore == maximumScore)&&(identical(other.passingScore, passingScore) || other.passingScore == passingScore)&&const DeepCollectionEquality().equals(other.allowedFileTypes, allowedFileTypes)&&(identical(other.maximumSubmissions, maximumSubmissions) || other.maximumSubmissions == maximumSubmissions)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.submissionStatus, submissionStatus) || other.submissionStatus == submissionStatus)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizationId,courseId,batchId,lessonId,title,instructions,dueAt,maximumScore,passingScore,const DeepCollectionEquality().hash(allowedFileTypes),maximumSubmissions,isRequired,courseTitle,submissionId,submissionStatus,submittedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'StudentAssignmentDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, dueAt: $dueAt, maximumScore: $maximumScore, passingScore: $passingScore, allowedFileTypes: $allowedFileTypes, maximumSubmissions: $maximumSubmissions, isRequired: $isRequired, courseTitle: $courseTitle, submissionId: $submissionId, submissionStatus: $submissionStatus, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StudentAssignmentDtoCopyWith<$Res>  {
  factory $StudentAssignmentDtoCopyWith(StudentAssignmentDto value, $Res Function(StudentAssignmentDto) _then) = _$StudentAssignmentDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'lesson_id') String? lessonId, String title, String instructions,@JsonKey(name: 'due_at') DateTime? dueAt,@JsonKey(name: 'maximum_score') double maximumScore,@JsonKey(name: 'passing_score') double passingScore,@JsonKey(name: 'allowed_file_types') List<String> allowedFileTypes,@JsonKey(name: 'maximum_submissions') int maximumSubmissions,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'submission_id') String? submissionId,@JsonKey(name: 'submission_status') String submissionStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StudentAssignmentDtoCopyWithImpl<$Res>
    implements $StudentAssignmentDtoCopyWith<$Res> {
  _$StudentAssignmentDtoCopyWithImpl(this._self, this._then);

  final StudentAssignmentDto _self;
  final $Res Function(StudentAssignmentDto) _then;

/// Create a copy of StudentAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? lessonId = freezed,Object? title = null,Object? instructions = null,Object? dueAt = freezed,Object? maximumScore = null,Object? passingScore = null,Object? allowedFileTypes = null,Object? maximumSubmissions = null,Object? isRequired = null,Object? courseTitle = null,Object? submissionId = freezed,Object? submissionStatus = null,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,maximumScore: null == maximumScore ? _self.maximumScore : maximumScore // ignore: cast_nullable_to_non_nullable
as double,passingScore: null == passingScore ? _self.passingScore : passingScore // ignore: cast_nullable_to_non_nullable
as double,allowedFileTypes: null == allowedFileTypes ? _self.allowedFileTypes : allowedFileTypes // ignore: cast_nullable_to_non_nullable
as List<String>,maximumSubmissions: null == maximumSubmissions ? _self.maximumSubmissions : maximumSubmissions // ignore: cast_nullable_to_non_nullable
as int,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String?,submissionStatus: null == submissionStatus ? _self.submissionStatus : submissionStatus // ignore: cast_nullable_to_non_nullable
as String,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentAssignmentDto].
extension StudentAssignmentDtoPatterns on StudentAssignmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentAssignmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentAssignmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentAssignmentDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentAssignmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentAssignmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentAssignmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'allowed_file_types')  List<String> allowedFileTypes, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'submission_id')  String? submissionId, @JsonKey(name: 'submission_status')  String submissionStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentAssignmentDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.dueAt,_that.maximumScore,_that.passingScore,_that.allowedFileTypes,_that.maximumSubmissions,_that.isRequired,_that.courseTitle,_that.submissionId,_that.submissionStatus,_that.submittedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'allowed_file_types')  List<String> allowedFileTypes, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'submission_id')  String? submissionId, @JsonKey(name: 'submission_status')  String submissionStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StudentAssignmentDto():
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.dueAt,_that.maximumScore,_that.passingScore,_that.allowedFileTypes,_that.maximumSubmissions,_that.isRequired,_that.courseTitle,_that.submissionId,_that.submissionStatus,_that.submittedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'lesson_id')  String? lessonId,  String title,  String instructions, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'allowed_file_types')  List<String> allowedFileTypes, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'submission_id')  String? submissionId, @JsonKey(name: 'submission_status')  String submissionStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StudentAssignmentDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.lessonId,_that.title,_that.instructions,_that.dueAt,_that.maximumScore,_that.passingScore,_that.allowedFileTypes,_that.maximumSubmissions,_that.isRequired,_that.courseTitle,_that.submissionId,_that.submissionStatus,_that.submittedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentAssignmentDto implements StudentAssignmentDto {
  const _StudentAssignmentDto({required this.id, @JsonKey(name: 'organization_id') required this.organizationId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, @JsonKey(name: 'lesson_id') this.lessonId, required this.title, this.instructions = '', @JsonKey(name: 'due_at') this.dueAt, @JsonKey(name: 'maximum_score') required this.maximumScore, @JsonKey(name: 'passing_score') required this.passingScore, @JsonKey(name: 'allowed_file_types') final  List<String> allowedFileTypes = const <String>[], @JsonKey(name: 'maximum_submissions') this.maximumSubmissions = 1, @JsonKey(name: 'is_required') this.isRequired = false, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'submission_id') this.submissionId, @JsonKey(name: 'submission_status') required this.submissionStatus, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _allowedFileTypes = allowedFileTypes;
  factory _StudentAssignmentDto.fromJson(Map<String, dynamic> json) => _$StudentAssignmentDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String organizationId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override@JsonKey(name: 'lesson_id') final  String? lessonId;
@override final  String title;
@override@JsonKey() final  String instructions;
@override@JsonKey(name: 'due_at') final  DateTime? dueAt;
@override@JsonKey(name: 'maximum_score') final  double maximumScore;
@override@JsonKey(name: 'passing_score') final  double passingScore;
 final  List<String> _allowedFileTypes;
@override@JsonKey(name: 'allowed_file_types') List<String> get allowedFileTypes {
  if (_allowedFileTypes is EqualUnmodifiableListView) return _allowedFileTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allowedFileTypes);
}

@override@JsonKey(name: 'maximum_submissions') final  int maximumSubmissions;
@override@JsonKey(name: 'is_required') final  bool isRequired;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'submission_id') final  String? submissionId;
@override@JsonKey(name: 'submission_status') final  String submissionStatus;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StudentAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentAssignmentDtoCopyWith<_StudentAssignmentDto> get copyWith => __$StudentAssignmentDtoCopyWithImpl<_StudentAssignmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentAssignmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentAssignmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.maximumScore, maximumScore) || other.maximumScore == maximumScore)&&(identical(other.passingScore, passingScore) || other.passingScore == passingScore)&&const DeepCollectionEquality().equals(other._allowedFileTypes, _allowedFileTypes)&&(identical(other.maximumSubmissions, maximumSubmissions) || other.maximumSubmissions == maximumSubmissions)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.submissionStatus, submissionStatus) || other.submissionStatus == submissionStatus)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizationId,courseId,batchId,lessonId,title,instructions,dueAt,maximumScore,passingScore,const DeepCollectionEquality().hash(_allowedFileTypes),maximumSubmissions,isRequired,courseTitle,submissionId,submissionStatus,submittedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'StudentAssignmentDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, dueAt: $dueAt, maximumScore: $maximumScore, passingScore: $passingScore, allowedFileTypes: $allowedFileTypes, maximumSubmissions: $maximumSubmissions, isRequired: $isRequired, courseTitle: $courseTitle, submissionId: $submissionId, submissionStatus: $submissionStatus, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StudentAssignmentDtoCopyWith<$Res> implements $StudentAssignmentDtoCopyWith<$Res> {
  factory _$StudentAssignmentDtoCopyWith(_StudentAssignmentDto value, $Res Function(_StudentAssignmentDto) _then) = __$StudentAssignmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'lesson_id') String? lessonId, String title, String instructions,@JsonKey(name: 'due_at') DateTime? dueAt,@JsonKey(name: 'maximum_score') double maximumScore,@JsonKey(name: 'passing_score') double passingScore,@JsonKey(name: 'allowed_file_types') List<String> allowedFileTypes,@JsonKey(name: 'maximum_submissions') int maximumSubmissions,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'submission_id') String? submissionId,@JsonKey(name: 'submission_status') String submissionStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StudentAssignmentDtoCopyWithImpl<$Res>
    implements _$StudentAssignmentDtoCopyWith<$Res> {
  __$StudentAssignmentDtoCopyWithImpl(this._self, this._then);

  final _StudentAssignmentDto _self;
  final $Res Function(_StudentAssignmentDto) _then;

/// Create a copy of StudentAssignmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? courseId = null,Object? batchId = freezed,Object? lessonId = freezed,Object? title = null,Object? instructions = null,Object? dueAt = freezed,Object? maximumScore = null,Object? passingScore = null,Object? allowedFileTypes = null,Object? maximumSubmissions = null,Object? isRequired = null,Object? courseTitle = null,Object? submissionId = freezed,Object? submissionStatus = null,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_StudentAssignmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,maximumScore: null == maximumScore ? _self.maximumScore : maximumScore // ignore: cast_nullable_to_non_nullable
as double,passingScore: null == passingScore ? _self.passingScore : passingScore // ignore: cast_nullable_to_non_nullable
as double,allowedFileTypes: null == allowedFileTypes ? _self._allowedFileTypes : allowedFileTypes // ignore: cast_nullable_to_non_nullable
as List<String>,maximumSubmissions: null == maximumSubmissions ? _self.maximumSubmissions : maximumSubmissions // ignore: cast_nullable_to_non_nullable
as int,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String?,submissionStatus: null == submissionStatus ? _self.submissionStatus : submissionStatus // ignore: cast_nullable_to_non_nullable
as String,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StudentSubmissionDto {

 String get id;@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'enrollment_id') String get enrollmentId;@JsonKey(name: 'submission_number') int get submissionNumber; String get status;@JsonKey(name: 'text_content') String get textContent;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'assignment_title') String get assignmentTitle;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId;@JsonKey(name: 'course_title') String get courseTitle; double? get points; double? get percentage; String? get feedback;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StudentSubmissionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentSubmissionDtoCopyWith<StudentSubmissionDto> get copyWith => _$StudentSubmissionDtoCopyWithImpl<StudentSubmissionDto>(this as StudentSubmissionDto, _$identity);

  /// Serializes this StudentSubmissionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentSubmissionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.submissionNumber, submissionNumber) || other.submissionNumber == submissionNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.textContent, textContent) || other.textContent == textContent)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.assignmentTitle, assignmentTitle) || other.assignmentTitle == assignmentTitle)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.points, points) || other.points == points)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignmentId,enrollmentId,submissionNumber,status,textContent,submittedAt,assignmentTitle,courseId,batchId,courseTitle,points,percentage,feedback,createdAt,updatedAt);

@override
String toString() {
  return 'StudentSubmissionDto(id: $id, assignmentId: $assignmentId, enrollmentId: $enrollmentId, submissionNumber: $submissionNumber, status: $status, textContent: $textContent, submittedAt: $submittedAt, assignmentTitle: $assignmentTitle, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, points: $points, percentage: $percentage, feedback: $feedback, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StudentSubmissionDtoCopyWith<$Res>  {
  factory $StudentSubmissionDtoCopyWith(StudentSubmissionDto value, $Res Function(StudentSubmissionDto) _then) = _$StudentSubmissionDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'submission_number') int submissionNumber, String status,@JsonKey(name: 'text_content') String textContent,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'assignment_title') String assignmentTitle,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'course_title') String courseTitle, double? points, double? percentage, String? feedback,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StudentSubmissionDtoCopyWithImpl<$Res>
    implements $StudentSubmissionDtoCopyWith<$Res> {
  _$StudentSubmissionDtoCopyWithImpl(this._self, this._then);

  final StudentSubmissionDto _self;
  final $Res Function(StudentSubmissionDto) _then;

/// Create a copy of StudentSubmissionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assignmentId = null,Object? enrollmentId = null,Object? submissionNumber = null,Object? status = null,Object? textContent = null,Object? submittedAt = freezed,Object? assignmentTitle = null,Object? courseId = null,Object? batchId = freezed,Object? courseTitle = null,Object? points = freezed,Object? percentage = freezed,Object? feedback = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,submissionNumber: null == submissionNumber ? _self.submissionNumber : submissionNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,textContent: null == textContent ? _self.textContent : textContent // ignore: cast_nullable_to_non_nullable
as String,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignmentTitle: null == assignmentTitle ? _self.assignmentTitle : assignmentTitle // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentSubmissionDto].
extension StudentSubmissionDtoPatterns on StudentSubmissionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentSubmissionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentSubmissionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentSubmissionDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentSubmissionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentSubmissionDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentSubmissionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'submission_number')  int submissionNumber,  String status, @JsonKey(name: 'text_content')  String textContent, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'assignment_title')  String assignmentTitle, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String courseTitle,  double? points,  double? percentage,  String? feedback, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentSubmissionDto() when $default != null:
return $default(_that.id,_that.assignmentId,_that.enrollmentId,_that.submissionNumber,_that.status,_that.textContent,_that.submittedAt,_that.assignmentTitle,_that.courseId,_that.batchId,_that.courseTitle,_that.points,_that.percentage,_that.feedback,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'submission_number')  int submissionNumber,  String status, @JsonKey(name: 'text_content')  String textContent, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'assignment_title')  String assignmentTitle, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String courseTitle,  double? points,  double? percentage,  String? feedback, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StudentSubmissionDto():
return $default(_that.id,_that.assignmentId,_that.enrollmentId,_that.submissionNumber,_that.status,_that.textContent,_that.submittedAt,_that.assignmentTitle,_that.courseId,_that.batchId,_that.courseTitle,_that.points,_that.percentage,_that.feedback,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'submission_number')  int submissionNumber,  String status, @JsonKey(name: 'text_content')  String textContent, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'assignment_title')  String assignmentTitle, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String courseTitle,  double? points,  double? percentage,  String? feedback, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StudentSubmissionDto() when $default != null:
return $default(_that.id,_that.assignmentId,_that.enrollmentId,_that.submissionNumber,_that.status,_that.textContent,_that.submittedAt,_that.assignmentTitle,_that.courseId,_that.batchId,_that.courseTitle,_that.points,_that.percentage,_that.feedback,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentSubmissionDto implements StudentSubmissionDto {
  const _StudentSubmissionDto({required this.id, @JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'enrollment_id') required this.enrollmentId, @JsonKey(name: 'submission_number') required this.submissionNumber, required this.status, @JsonKey(name: 'text_content') this.textContent = '', @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'assignment_title') required this.assignmentTitle, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, @JsonKey(name: 'course_title') required this.courseTitle, this.points, this.percentage, this.feedback, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StudentSubmissionDto.fromJson(Map<String, dynamic> json) => _$StudentSubmissionDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'enrollment_id') final  String enrollmentId;
@override@JsonKey(name: 'submission_number') final  int submissionNumber;
@override final  String status;
@override@JsonKey(name: 'text_content') final  String textContent;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'assignment_title') final  String assignmentTitle;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override final  double? points;
@override final  double? percentage;
@override final  String? feedback;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StudentSubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentSubmissionDtoCopyWith<_StudentSubmissionDto> get copyWith => __$StudentSubmissionDtoCopyWithImpl<_StudentSubmissionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentSubmissionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentSubmissionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.submissionNumber, submissionNumber) || other.submissionNumber == submissionNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.textContent, textContent) || other.textContent == textContent)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.assignmentTitle, assignmentTitle) || other.assignmentTitle == assignmentTitle)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.points, points) || other.points == points)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignmentId,enrollmentId,submissionNumber,status,textContent,submittedAt,assignmentTitle,courseId,batchId,courseTitle,points,percentage,feedback,createdAt,updatedAt);

@override
String toString() {
  return 'StudentSubmissionDto(id: $id, assignmentId: $assignmentId, enrollmentId: $enrollmentId, submissionNumber: $submissionNumber, status: $status, textContent: $textContent, submittedAt: $submittedAt, assignmentTitle: $assignmentTitle, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, points: $points, percentage: $percentage, feedback: $feedback, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StudentSubmissionDtoCopyWith<$Res> implements $StudentSubmissionDtoCopyWith<$Res> {
  factory _$StudentSubmissionDtoCopyWith(_StudentSubmissionDto value, $Res Function(_StudentSubmissionDto) _then) = __$StudentSubmissionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'submission_number') int submissionNumber, String status,@JsonKey(name: 'text_content') String textContent,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'assignment_title') String assignmentTitle,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'course_title') String courseTitle, double? points, double? percentage, String? feedback,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StudentSubmissionDtoCopyWithImpl<$Res>
    implements _$StudentSubmissionDtoCopyWith<$Res> {
  __$StudentSubmissionDtoCopyWithImpl(this._self, this._then);

  final _StudentSubmissionDto _self;
  final $Res Function(_StudentSubmissionDto) _then;

/// Create a copy of StudentSubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assignmentId = null,Object? enrollmentId = null,Object? submissionNumber = null,Object? status = null,Object? textContent = null,Object? submittedAt = freezed,Object? assignmentTitle = null,Object? courseId = null,Object? batchId = freezed,Object? courseTitle = null,Object? points = freezed,Object? percentage = freezed,Object? feedback = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_StudentSubmissionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,submissionNumber: null == submissionNumber ? _self.submissionNumber : submissionNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,textContent: null == textContent ? _self.textContent : textContent // ignore: cast_nullable_to_non_nullable
as String,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignmentTitle: null == assignmentTitle ? _self.assignmentTitle : assignmentTitle // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StudentCalendarItemDto {

 String get type;@JsonKey(name: 'entity_id') String get entityId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId; String get title;@JsonKey(name: 'starts_at') DateTime get startsAt;@JsonKey(name: 'ends_at') DateTime? get endsAt; String get status;
/// Create a copy of StudentCalendarItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCalendarItemDtoCopyWith<StudentCalendarItemDto> get copyWith => _$StudentCalendarItemDtoCopyWithImpl<StudentCalendarItemDto>(this as StudentCalendarItemDto, _$identity);

  /// Serializes this StudentCalendarItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentCalendarItemDto&&(identical(other.type, type) || other.type == type)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entityId,courseId,batchId,title,startsAt,endsAt,status);

@override
String toString() {
  return 'StudentCalendarItemDto(type: $type, entityId: $entityId, courseId: $courseId, batchId: $batchId, title: $title, startsAt: $startsAt, endsAt: $endsAt, status: $status)';
}


}

/// @nodoc
abstract mixin class $StudentCalendarItemDtoCopyWith<$Res>  {
  factory $StudentCalendarItemDtoCopyWith(StudentCalendarItemDto value, $Res Function(StudentCalendarItemDto) _then) = _$StudentCalendarItemDtoCopyWithImpl;
@useResult
$Res call({
 String type,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'starts_at') DateTime startsAt,@JsonKey(name: 'ends_at') DateTime? endsAt, String status
});




}
/// @nodoc
class _$StudentCalendarItemDtoCopyWithImpl<$Res>
    implements $StudentCalendarItemDtoCopyWith<$Res> {
  _$StudentCalendarItemDtoCopyWithImpl(this._self, this._then);

  final StudentCalendarItemDto _self;
  final $Res Function(StudentCalendarItemDto) _then;

/// Create a copy of StudentCalendarItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? entityId = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? startsAt = null,Object? endsAt = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: freezed == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentCalendarItemDto].
extension StudentCalendarItemDtoPatterns on StudentCalendarItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentCalendarItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentCalendarItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentCalendarItemDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentCalendarItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentCalendarItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentCalendarItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime? endsAt,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentCalendarItemDto() when $default != null:
return $default(_that.type,_that.entityId,_that.courseId,_that.batchId,_that.title,_that.startsAt,_that.endsAt,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime? endsAt,  String status)  $default,) {final _that = this;
switch (_that) {
case _StudentCalendarItemDto():
return $default(_that.type,_that.entityId,_that.courseId,_that.batchId,_that.title,_that.startsAt,_that.endsAt,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId,  String title, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime? endsAt,  String status)?  $default,) {final _that = this;
switch (_that) {
case _StudentCalendarItemDto() when $default != null:
return $default(_that.type,_that.entityId,_that.courseId,_that.batchId,_that.title,_that.startsAt,_that.endsAt,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentCalendarItemDto implements StudentCalendarItemDto {
  const _StudentCalendarItemDto({required this.type, @JsonKey(name: 'entity_id') required this.entityId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, required this.title, @JsonKey(name: 'starts_at') required this.startsAt, @JsonKey(name: 'ends_at') this.endsAt, required this.status});
  factory _StudentCalendarItemDto.fromJson(Map<String, dynamic> json) => _$StudentCalendarItemDtoFromJson(json);

@override final  String type;
@override@JsonKey(name: 'entity_id') final  String entityId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override final  String title;
@override@JsonKey(name: 'starts_at') final  DateTime startsAt;
@override@JsonKey(name: 'ends_at') final  DateTime? endsAt;
@override final  String status;

/// Create a copy of StudentCalendarItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCalendarItemDtoCopyWith<_StudentCalendarItemDto> get copyWith => __$StudentCalendarItemDtoCopyWithImpl<_StudentCalendarItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentCalendarItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentCalendarItemDto&&(identical(other.type, type) || other.type == type)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entityId,courseId,batchId,title,startsAt,endsAt,status);

@override
String toString() {
  return 'StudentCalendarItemDto(type: $type, entityId: $entityId, courseId: $courseId, batchId: $batchId, title: $title, startsAt: $startsAt, endsAt: $endsAt, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StudentCalendarItemDtoCopyWith<$Res> implements $StudentCalendarItemDtoCopyWith<$Res> {
  factory _$StudentCalendarItemDtoCopyWith(_StudentCalendarItemDto value, $Res Function(_StudentCalendarItemDto) _then) = __$StudentCalendarItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String type,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId, String title,@JsonKey(name: 'starts_at') DateTime startsAt,@JsonKey(name: 'ends_at') DateTime? endsAt, String status
});




}
/// @nodoc
class __$StudentCalendarItemDtoCopyWithImpl<$Res>
    implements _$StudentCalendarItemDtoCopyWith<$Res> {
  __$StudentCalendarItemDtoCopyWithImpl(this._self, this._then);

  final _StudentCalendarItemDto _self;
  final $Res Function(_StudentCalendarItemDto) _then;

/// Create a copy of StudentCalendarItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? entityId = null,Object? courseId = null,Object? batchId = freezed,Object? title = null,Object? startsAt = null,Object? endsAt = freezed,Object? status = null,}) {
  return _then(_StudentCalendarItemDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: freezed == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StudentCalendarDto {

 List<StudentCalendarItemDto> get items;@JsonKey(name: 'from') DateTime get fromDate;@JsonKey(name: 'to') DateTime get toDate;
/// Create a copy of StudentCalendarDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCalendarDtoCopyWith<StudentCalendarDto> get copyWith => _$StudentCalendarDtoCopyWithImpl<StudentCalendarDto>(this as StudentCalendarDto, _$identity);

  /// Serializes this StudentCalendarDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentCalendarDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),fromDate,toDate);

@override
String toString() {
  return 'StudentCalendarDto(items: $items, fromDate: $fromDate, toDate: $toDate)';
}


}

/// @nodoc
abstract mixin class $StudentCalendarDtoCopyWith<$Res>  {
  factory $StudentCalendarDtoCopyWith(StudentCalendarDto value, $Res Function(StudentCalendarDto) _then) = _$StudentCalendarDtoCopyWithImpl;
@useResult
$Res call({
 List<StudentCalendarItemDto> items,@JsonKey(name: 'from') DateTime fromDate,@JsonKey(name: 'to') DateTime toDate
});




}
/// @nodoc
class _$StudentCalendarDtoCopyWithImpl<$Res>
    implements $StudentCalendarDtoCopyWith<$Res> {
  _$StudentCalendarDtoCopyWithImpl(this._self, this._then);

  final StudentCalendarDto _self;
  final $Res Function(StudentCalendarDto) _then;

/// Create a copy of StudentCalendarDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? fromDate = null,Object? toDate = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<StudentCalendarItemDto>,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentCalendarDto].
extension StudentCalendarDtoPatterns on StudentCalendarDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentCalendarDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentCalendarDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentCalendarDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentCalendarDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentCalendarDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentCalendarDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StudentCalendarItemDto> items, @JsonKey(name: 'from')  DateTime fromDate, @JsonKey(name: 'to')  DateTime toDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentCalendarDto() when $default != null:
return $default(_that.items,_that.fromDate,_that.toDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StudentCalendarItemDto> items, @JsonKey(name: 'from')  DateTime fromDate, @JsonKey(name: 'to')  DateTime toDate)  $default,) {final _that = this;
switch (_that) {
case _StudentCalendarDto():
return $default(_that.items,_that.fromDate,_that.toDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StudentCalendarItemDto> items, @JsonKey(name: 'from')  DateTime fromDate, @JsonKey(name: 'to')  DateTime toDate)?  $default,) {final _that = this;
switch (_that) {
case _StudentCalendarDto() when $default != null:
return $default(_that.items,_that.fromDate,_that.toDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentCalendarDto implements StudentCalendarDto {
  const _StudentCalendarDto({final  List<StudentCalendarItemDto> items = const <StudentCalendarItemDto>[], @JsonKey(name: 'from') required this.fromDate, @JsonKey(name: 'to') required this.toDate}): _items = items;
  factory _StudentCalendarDto.fromJson(Map<String, dynamic> json) => _$StudentCalendarDtoFromJson(json);

 final  List<StudentCalendarItemDto> _items;
@override@JsonKey() List<StudentCalendarItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'from') final  DateTime fromDate;
@override@JsonKey(name: 'to') final  DateTime toDate;

/// Create a copy of StudentCalendarDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCalendarDtoCopyWith<_StudentCalendarDto> get copyWith => __$StudentCalendarDtoCopyWithImpl<_StudentCalendarDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentCalendarDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentCalendarDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),fromDate,toDate);

@override
String toString() {
  return 'StudentCalendarDto(items: $items, fromDate: $fromDate, toDate: $toDate)';
}


}

/// @nodoc
abstract mixin class _$StudentCalendarDtoCopyWith<$Res> implements $StudentCalendarDtoCopyWith<$Res> {
  factory _$StudentCalendarDtoCopyWith(_StudentCalendarDto value, $Res Function(_StudentCalendarDto) _then) = __$StudentCalendarDtoCopyWithImpl;
@override @useResult
$Res call({
 List<StudentCalendarItemDto> items,@JsonKey(name: 'from') DateTime fromDate,@JsonKey(name: 'to') DateTime toDate
});




}
/// @nodoc
class __$StudentCalendarDtoCopyWithImpl<$Res>
    implements _$StudentCalendarDtoCopyWith<$Res> {
  __$StudentCalendarDtoCopyWithImpl(this._self, this._then);

  final _StudentCalendarDto _self;
  final $Res Function(_StudentCalendarDto) _then;

/// Create a copy of StudentCalendarDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? fromDate = null,Object? toDate = null,}) {
  return _then(_StudentCalendarDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StudentCalendarItemDto>,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PublicOptionDto {

 String get id; String get text; bool? get correct;
/// Create a copy of PublicOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicOptionDtoCopyWith<PublicOptionDto> get copyWith => _$PublicOptionDtoCopyWithImpl<PublicOptionDto>(this as PublicOptionDto, _$identity);

  /// Serializes this PublicOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,correct);

@override
String toString() {
  return 'PublicOptionDto(id: $id, text: $text, correct: $correct)';
}


}

/// @nodoc
abstract mixin class $PublicOptionDtoCopyWith<$Res>  {
  factory $PublicOptionDtoCopyWith(PublicOptionDto value, $Res Function(PublicOptionDto) _then) = _$PublicOptionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String text, bool? correct
});




}
/// @nodoc
class _$PublicOptionDtoCopyWithImpl<$Res>
    implements $PublicOptionDtoCopyWith<$Res> {
  _$PublicOptionDtoCopyWithImpl(this._self, this._then);

  final PublicOptionDto _self;
  final $Res Function(PublicOptionDto) _then;

/// Create a copy of PublicOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? correct = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicOptionDto].
extension PublicOptionDtoPatterns on PublicOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _PublicOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PublicOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String text,  bool? correct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicOptionDto() when $default != null:
return $default(_that.id,_that.text,_that.correct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String text,  bool? correct)  $default,) {final _that = this;
switch (_that) {
case _PublicOptionDto():
return $default(_that.id,_that.text,_that.correct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String text,  bool? correct)?  $default,) {final _that = this;
switch (_that) {
case _PublicOptionDto() when $default != null:
return $default(_that.id,_that.text,_that.correct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicOptionDto implements PublicOptionDto {
  const _PublicOptionDto({required this.id, required this.text, this.correct});
  factory _PublicOptionDto.fromJson(Map<String, dynamic> json) => _$PublicOptionDtoFromJson(json);

@override final  String id;
@override final  String text;
@override final  bool? correct;

/// Create a copy of PublicOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicOptionDtoCopyWith<_PublicOptionDto> get copyWith => __$PublicOptionDtoCopyWithImpl<_PublicOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,correct);

@override
String toString() {
  return 'PublicOptionDto(id: $id, text: $text, correct: $correct)';
}


}

/// @nodoc
abstract mixin class _$PublicOptionDtoCopyWith<$Res> implements $PublicOptionDtoCopyWith<$Res> {
  factory _$PublicOptionDtoCopyWith(_PublicOptionDto value, $Res Function(_PublicOptionDto) _then) = __$PublicOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, bool? correct
});




}
/// @nodoc
class __$PublicOptionDtoCopyWithImpl<$Res>
    implements _$PublicOptionDtoCopyWith<$Res> {
  __$PublicOptionDtoCopyWithImpl(this._self, this._then);

  final _PublicOptionDto _self;
  final $Res Function(_PublicOptionDto) _then;

/// Create a copy of PublicOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? correct = freezed,}) {
  return _then(_PublicOptionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$PublicQuestionDto {

 String get id;@JsonKey(name: 'section_id') String? get sectionId; String get type; String? get difficulty; String get prompt; double get points; List<PublicOptionDto> get options;
/// Create a copy of PublicQuestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicQuestionDtoCopyWith<PublicQuestionDto> get copyWith => _$PublicQuestionDtoCopyWithImpl<PublicQuestionDto>(this as PublicQuestionDto, _$identity);

  /// Serializes this PublicQuestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.type, type) || other.type == type)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sectionId,type,difficulty,prompt,points,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'PublicQuestionDto(id: $id, sectionId: $sectionId, type: $type, difficulty: $difficulty, prompt: $prompt, points: $points, options: $options)';
}


}

/// @nodoc
abstract mixin class $PublicQuestionDtoCopyWith<$Res>  {
  factory $PublicQuestionDtoCopyWith(PublicQuestionDto value, $Res Function(PublicQuestionDto) _then) = _$PublicQuestionDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'section_id') String? sectionId, String type, String? difficulty, String prompt, double points, List<PublicOptionDto> options
});




}
/// @nodoc
class _$PublicQuestionDtoCopyWithImpl<$Res>
    implements $PublicQuestionDtoCopyWith<$Res> {
  _$PublicQuestionDtoCopyWithImpl(this._self, this._then);

  final PublicQuestionDto _self;
  final $Res Function(PublicQuestionDto) _then;

/// Create a copy of PublicQuestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sectionId = freezed,Object? type = null,Object? difficulty = freezed,Object? prompt = null,Object? points = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<PublicOptionDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicQuestionDto].
extension PublicQuestionDtoPatterns on PublicQuestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicQuestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicQuestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicQuestionDto value)  $default,){
final _that = this;
switch (_that) {
case _PublicQuestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicQuestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PublicQuestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'section_id')  String? sectionId,  String type,  String? difficulty,  String prompt,  double points,  List<PublicOptionDto> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicQuestionDto() when $default != null:
return $default(_that.id,_that.sectionId,_that.type,_that.difficulty,_that.prompt,_that.points,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'section_id')  String? sectionId,  String type,  String? difficulty,  String prompt,  double points,  List<PublicOptionDto> options)  $default,) {final _that = this;
switch (_that) {
case _PublicQuestionDto():
return $default(_that.id,_that.sectionId,_that.type,_that.difficulty,_that.prompt,_that.points,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'section_id')  String? sectionId,  String type,  String? difficulty,  String prompt,  double points,  List<PublicOptionDto> options)?  $default,) {final _that = this;
switch (_that) {
case _PublicQuestionDto() when $default != null:
return $default(_that.id,_that.sectionId,_that.type,_that.difficulty,_that.prompt,_that.points,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicQuestionDto implements PublicQuestionDto {
  const _PublicQuestionDto({required this.id, @JsonKey(name: 'section_id') this.sectionId, required this.type, this.difficulty, required this.prompt, required this.points, final  List<PublicOptionDto> options = const <PublicOptionDto>[]}): _options = options;
  factory _PublicQuestionDto.fromJson(Map<String, dynamic> json) => _$PublicQuestionDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override final  String type;
@override final  String? difficulty;
@override final  String prompt;
@override final  double points;
 final  List<PublicOptionDto> _options;
@override@JsonKey() List<PublicOptionDto> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of PublicQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicQuestionDtoCopyWith<_PublicQuestionDto> get copyWith => __$PublicQuestionDtoCopyWithImpl<_PublicQuestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicQuestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.type, type) || other.type == type)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sectionId,type,difficulty,prompt,points,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'PublicQuestionDto(id: $id, sectionId: $sectionId, type: $type, difficulty: $difficulty, prompt: $prompt, points: $points, options: $options)';
}


}

/// @nodoc
abstract mixin class _$PublicQuestionDtoCopyWith<$Res> implements $PublicQuestionDtoCopyWith<$Res> {
  factory _$PublicQuestionDtoCopyWith(_PublicQuestionDto value, $Res Function(_PublicQuestionDto) _then) = __$PublicQuestionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'section_id') String? sectionId, String type, String? difficulty, String prompt, double points, List<PublicOptionDto> options
});




}
/// @nodoc
class __$PublicQuestionDtoCopyWithImpl<$Res>
    implements _$PublicQuestionDtoCopyWith<$Res> {
  __$PublicQuestionDtoCopyWithImpl(this._self, this._then);

  final _PublicQuestionDto _self;
  final $Res Function(_PublicQuestionDto) _then;

/// Create a copy of PublicQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sectionId = freezed,Object? type = null,Object? difficulty = freezed,Object? prompt = null,Object? points = null,Object? options = null,}) {
  return _then(_PublicQuestionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<PublicOptionDto>,
  ));
}


}


/// @nodoc
mixin _$ExamDto {

 String get id;@JsonKey(name: 'organization_id') String? get organizationId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'batch_id') String? get batchId;@JsonKey(name: 'course_title') String? get courseTitle; String get title; String get instructions; String get status;@JsonKey(name: 'attempt_limit') int get attemptLimit;@JsonKey(name: 'attempts_used') int get attemptsUsed;@JsonKey(name: 'pass_percentage') double get passPercentage;@JsonKey(name: 'assessment_mode') String get assessmentMode;@JsonKey(name: 'negative_mark_per_wrong') double get negativeMarkPerWrong;@JsonKey(name: 'minimum_score') double get minimumScore;@JsonKey(name: 'duration_seconds') int get durationSeconds;@JsonKey(name: 'starts_at') DateTime get startsAt;@JsonKey(name: 'ends_at') DateTime get endsAt;@JsonKey(name: 'auto_submit') bool get autoSubmit;@JsonKey(name: 'rank_enabled') bool get rankEnabled;@JsonKey(name: 'answer_review_at') DateTime? get answerReviewAt;@JsonKey(name: 'question_selection_strategy') String? get selectionStrategy; int? get version;
/// Create a copy of ExamDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamDtoCopyWith<ExamDto> get copyWith => _$ExamDtoCopyWithImpl<ExamDto>(this as ExamDto, _$identity);

  /// Serializes this ExamDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.status, status) || other.status == status)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.attemptsUsed, attemptsUsed) || other.attemptsUsed == attemptsUsed)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.assessmentMode, assessmentMode) || other.assessmentMode == assessmentMode)&&(identical(other.negativeMarkPerWrong, negativeMarkPerWrong) || other.negativeMarkPerWrong == negativeMarkPerWrong)&&(identical(other.minimumScore, minimumScore) || other.minimumScore == minimumScore)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.autoSubmit, autoSubmit) || other.autoSubmit == autoSubmit)&&(identical(other.rankEnabled, rankEnabled) || other.rankEnabled == rankEnabled)&&(identical(other.answerReviewAt, answerReviewAt) || other.answerReviewAt == answerReviewAt)&&(identical(other.selectionStrategy, selectionStrategy) || other.selectionStrategy == selectionStrategy)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizationId,courseId,batchId,courseTitle,title,instructions,status,attemptLimit,attemptsUsed,passPercentage,assessmentMode,negativeMarkPerWrong,minimumScore,durationSeconds,startsAt,endsAt,autoSubmit,rankEnabled,answerReviewAt,selectionStrategy,version]);

@override
String toString() {
  return 'ExamDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, title: $title, instructions: $instructions, status: $status, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, assessmentMode: $assessmentMode, negativeMarkPerWrong: $negativeMarkPerWrong, minimumScore: $minimumScore, durationSeconds: $durationSeconds, startsAt: $startsAt, endsAt: $endsAt, autoSubmit: $autoSubmit, rankEnabled: $rankEnabled, answerReviewAt: $answerReviewAt, selectionStrategy: $selectionStrategy, version: $version)';
}


}

/// @nodoc
abstract mixin class $ExamDtoCopyWith<$Res>  {
  factory $ExamDtoCopyWith(ExamDto value, $Res Function(ExamDto) _then) = _$ExamDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String? organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'course_title') String? courseTitle, String title, String instructions, String status,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'attempts_used') int attemptsUsed,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'assessment_mode') String assessmentMode,@JsonKey(name: 'negative_mark_per_wrong') double negativeMarkPerWrong,@JsonKey(name: 'minimum_score') double minimumScore,@JsonKey(name: 'duration_seconds') int durationSeconds,@JsonKey(name: 'starts_at') DateTime startsAt,@JsonKey(name: 'ends_at') DateTime endsAt,@JsonKey(name: 'auto_submit') bool autoSubmit,@JsonKey(name: 'rank_enabled') bool rankEnabled,@JsonKey(name: 'answer_review_at') DateTime? answerReviewAt,@JsonKey(name: 'question_selection_strategy') String? selectionStrategy, int? version
});




}
/// @nodoc
class _$ExamDtoCopyWithImpl<$Res>
    implements $ExamDtoCopyWith<$Res> {
  _$ExamDtoCopyWithImpl(this._self, this._then);

  final ExamDto _self;
  final $Res Function(ExamDto) _then;

/// Create a copy of ExamDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = freezed,Object? courseId = null,Object? batchId = freezed,Object? courseTitle = freezed,Object? title = null,Object? instructions = null,Object? status = null,Object? attemptLimit = null,Object? attemptsUsed = null,Object? passPercentage = null,Object? assessmentMode = null,Object? negativeMarkPerWrong = null,Object? minimumScore = null,Object? durationSeconds = null,Object? startsAt = null,Object? endsAt = null,Object? autoSubmit = null,Object? rankEnabled = null,Object? answerReviewAt = freezed,Object? selectionStrategy = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,courseTitle: freezed == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,attemptsUsed: null == attemptsUsed ? _self.attemptsUsed : attemptsUsed // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,assessmentMode: null == assessmentMode ? _self.assessmentMode : assessmentMode // ignore: cast_nullable_to_non_nullable
as String,negativeMarkPerWrong: null == negativeMarkPerWrong ? _self.negativeMarkPerWrong : negativeMarkPerWrong // ignore: cast_nullable_to_non_nullable
as double,minimumScore: null == minimumScore ? _self.minimumScore : minimumScore // ignore: cast_nullable_to_non_nullable
as double,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,autoSubmit: null == autoSubmit ? _self.autoSubmit : autoSubmit // ignore: cast_nullable_to_non_nullable
as bool,rankEnabled: null == rankEnabled ? _self.rankEnabled : rankEnabled // ignore: cast_nullable_to_non_nullable
as bool,answerReviewAt: freezed == answerReviewAt ? _self.answerReviewAt : answerReviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,selectionStrategy: freezed == selectionStrategy ? _self.selectionStrategy : selectionStrategy // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamDto].
extension ExamDtoPatterns on ExamDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamDto value)  $default,){
final _that = this;
switch (_that) {
case _ExamDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExamDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String? courseTitle,  String title,  String instructions,  String status, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'assessment_mode')  String assessmentMode, @JsonKey(name: 'negative_mark_per_wrong')  double negativeMarkPerWrong, @JsonKey(name: 'minimum_score')  double minimumScore, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime endsAt, @JsonKey(name: 'auto_submit')  bool autoSubmit, @JsonKey(name: 'rank_enabled')  bool rankEnabled, @JsonKey(name: 'answer_review_at')  DateTime? answerReviewAt, @JsonKey(name: 'question_selection_strategy')  String? selectionStrategy,  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.courseTitle,_that.title,_that.instructions,_that.status,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.assessmentMode,_that.negativeMarkPerWrong,_that.minimumScore,_that.durationSeconds,_that.startsAt,_that.endsAt,_that.autoSubmit,_that.rankEnabled,_that.answerReviewAt,_that.selectionStrategy,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String? courseTitle,  String title,  String instructions,  String status, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'assessment_mode')  String assessmentMode, @JsonKey(name: 'negative_mark_per_wrong')  double negativeMarkPerWrong, @JsonKey(name: 'minimum_score')  double minimumScore, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime endsAt, @JsonKey(name: 'auto_submit')  bool autoSubmit, @JsonKey(name: 'rank_enabled')  bool rankEnabled, @JsonKey(name: 'answer_review_at')  DateTime? answerReviewAt, @JsonKey(name: 'question_selection_strategy')  String? selectionStrategy,  int? version)  $default,) {final _that = this;
switch (_that) {
case _ExamDto():
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.courseTitle,_that.title,_that.instructions,_that.status,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.assessmentMode,_that.negativeMarkPerWrong,_that.minimumScore,_that.durationSeconds,_that.startsAt,_that.endsAt,_that.autoSubmit,_that.rankEnabled,_that.answerReviewAt,_that.selectionStrategy,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String? organizationId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'batch_id')  String? batchId, @JsonKey(name: 'course_title')  String? courseTitle,  String title,  String instructions,  String status, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'attempts_used')  int attemptsUsed, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'assessment_mode')  String assessmentMode, @JsonKey(name: 'negative_mark_per_wrong')  double negativeMarkPerWrong, @JsonKey(name: 'minimum_score')  double minimumScore, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'starts_at')  DateTime startsAt, @JsonKey(name: 'ends_at')  DateTime endsAt, @JsonKey(name: 'auto_submit')  bool autoSubmit, @JsonKey(name: 'rank_enabled')  bool rankEnabled, @JsonKey(name: 'answer_review_at')  DateTime? answerReviewAt, @JsonKey(name: 'question_selection_strategy')  String? selectionStrategy,  int? version)?  $default,) {final _that = this;
switch (_that) {
case _ExamDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.courseId,_that.batchId,_that.courseTitle,_that.title,_that.instructions,_that.status,_that.attemptLimit,_that.attemptsUsed,_that.passPercentage,_that.assessmentMode,_that.negativeMarkPerWrong,_that.minimumScore,_that.durationSeconds,_that.startsAt,_that.endsAt,_that.autoSubmit,_that.rankEnabled,_that.answerReviewAt,_that.selectionStrategy,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamDto implements ExamDto {
  const _ExamDto({required this.id, @JsonKey(name: 'organization_id') this.organizationId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'batch_id') this.batchId, @JsonKey(name: 'course_title') this.courseTitle, required this.title, this.instructions = '', required this.status, @JsonKey(name: 'attempt_limit') required this.attemptLimit, @JsonKey(name: 'attempts_used') this.attemptsUsed = 0, @JsonKey(name: 'pass_percentage') required this.passPercentage, @JsonKey(name: 'assessment_mode') required this.assessmentMode, @JsonKey(name: 'negative_mark_per_wrong') required this.negativeMarkPerWrong, @JsonKey(name: 'minimum_score') required this.minimumScore, @JsonKey(name: 'duration_seconds') required this.durationSeconds, @JsonKey(name: 'starts_at') required this.startsAt, @JsonKey(name: 'ends_at') required this.endsAt, @JsonKey(name: 'auto_submit') required this.autoSubmit, @JsonKey(name: 'rank_enabled') required this.rankEnabled, @JsonKey(name: 'answer_review_at') this.answerReviewAt, @JsonKey(name: 'question_selection_strategy') this.selectionStrategy, this.version});
  factory _ExamDto.fromJson(Map<String, dynamic> json) => _$ExamDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String? organizationId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'batch_id') final  String? batchId;
@override@JsonKey(name: 'course_title') final  String? courseTitle;
@override final  String title;
@override@JsonKey() final  String instructions;
@override final  String status;
@override@JsonKey(name: 'attempt_limit') final  int attemptLimit;
@override@JsonKey(name: 'attempts_used') final  int attemptsUsed;
@override@JsonKey(name: 'pass_percentage') final  double passPercentage;
@override@JsonKey(name: 'assessment_mode') final  String assessmentMode;
@override@JsonKey(name: 'negative_mark_per_wrong') final  double negativeMarkPerWrong;
@override@JsonKey(name: 'minimum_score') final  double minimumScore;
@override@JsonKey(name: 'duration_seconds') final  int durationSeconds;
@override@JsonKey(name: 'starts_at') final  DateTime startsAt;
@override@JsonKey(name: 'ends_at') final  DateTime endsAt;
@override@JsonKey(name: 'auto_submit') final  bool autoSubmit;
@override@JsonKey(name: 'rank_enabled') final  bool rankEnabled;
@override@JsonKey(name: 'answer_review_at') final  DateTime? answerReviewAt;
@override@JsonKey(name: 'question_selection_strategy') final  String? selectionStrategy;
@override final  int? version;

/// Create a copy of ExamDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamDtoCopyWith<_ExamDto> get copyWith => __$ExamDtoCopyWithImpl<_ExamDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.title, title) || other.title == title)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.status, status) || other.status == status)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.attemptsUsed, attemptsUsed) || other.attemptsUsed == attemptsUsed)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.assessmentMode, assessmentMode) || other.assessmentMode == assessmentMode)&&(identical(other.negativeMarkPerWrong, negativeMarkPerWrong) || other.negativeMarkPerWrong == negativeMarkPerWrong)&&(identical(other.minimumScore, minimumScore) || other.minimumScore == minimumScore)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.autoSubmit, autoSubmit) || other.autoSubmit == autoSubmit)&&(identical(other.rankEnabled, rankEnabled) || other.rankEnabled == rankEnabled)&&(identical(other.answerReviewAt, answerReviewAt) || other.answerReviewAt == answerReviewAt)&&(identical(other.selectionStrategy, selectionStrategy) || other.selectionStrategy == selectionStrategy)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizationId,courseId,batchId,courseTitle,title,instructions,status,attemptLimit,attemptsUsed,passPercentage,assessmentMode,negativeMarkPerWrong,minimumScore,durationSeconds,startsAt,endsAt,autoSubmit,rankEnabled,answerReviewAt,selectionStrategy,version]);

@override
String toString() {
  return 'ExamDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, title: $title, instructions: $instructions, status: $status, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, assessmentMode: $assessmentMode, negativeMarkPerWrong: $negativeMarkPerWrong, minimumScore: $minimumScore, durationSeconds: $durationSeconds, startsAt: $startsAt, endsAt: $endsAt, autoSubmit: $autoSubmit, rankEnabled: $rankEnabled, answerReviewAt: $answerReviewAt, selectionStrategy: $selectionStrategy, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ExamDtoCopyWith<$Res> implements $ExamDtoCopyWith<$Res> {
  factory _$ExamDtoCopyWith(_ExamDto value, $Res Function(_ExamDto) _then) = __$ExamDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String? organizationId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'batch_id') String? batchId,@JsonKey(name: 'course_title') String? courseTitle, String title, String instructions, String status,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'attempts_used') int attemptsUsed,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'assessment_mode') String assessmentMode,@JsonKey(name: 'negative_mark_per_wrong') double negativeMarkPerWrong,@JsonKey(name: 'minimum_score') double minimumScore,@JsonKey(name: 'duration_seconds') int durationSeconds,@JsonKey(name: 'starts_at') DateTime startsAt,@JsonKey(name: 'ends_at') DateTime endsAt,@JsonKey(name: 'auto_submit') bool autoSubmit,@JsonKey(name: 'rank_enabled') bool rankEnabled,@JsonKey(name: 'answer_review_at') DateTime? answerReviewAt,@JsonKey(name: 'question_selection_strategy') String? selectionStrategy, int? version
});




}
/// @nodoc
class __$ExamDtoCopyWithImpl<$Res>
    implements _$ExamDtoCopyWith<$Res> {
  __$ExamDtoCopyWithImpl(this._self, this._then);

  final _ExamDto _self;
  final $Res Function(_ExamDto) _then;

/// Create a copy of ExamDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = freezed,Object? courseId = null,Object? batchId = freezed,Object? courseTitle = freezed,Object? title = null,Object? instructions = null,Object? status = null,Object? attemptLimit = null,Object? attemptsUsed = null,Object? passPercentage = null,Object? assessmentMode = null,Object? negativeMarkPerWrong = null,Object? minimumScore = null,Object? durationSeconds = null,Object? startsAt = null,Object? endsAt = null,Object? autoSubmit = null,Object? rankEnabled = null,Object? answerReviewAt = freezed,Object? selectionStrategy = freezed,Object? version = freezed,}) {
  return _then(_ExamDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,batchId: freezed == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String?,courseTitle: freezed == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,attemptsUsed: null == attemptsUsed ? _self.attemptsUsed : attemptsUsed // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,assessmentMode: null == assessmentMode ? _self.assessmentMode : assessmentMode // ignore: cast_nullable_to_non_nullable
as String,negativeMarkPerWrong: null == negativeMarkPerWrong ? _self.negativeMarkPerWrong : negativeMarkPerWrong // ignore: cast_nullable_to_non_nullable
as double,minimumScore: null == minimumScore ? _self.minimumScore : minimumScore // ignore: cast_nullable_to_non_nullable
as double,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,autoSubmit: null == autoSubmit ? _self.autoSubmit : autoSubmit // ignore: cast_nullable_to_non_nullable
as bool,rankEnabled: null == rankEnabled ? _self.rankEnabled : rankEnabled // ignore: cast_nullable_to_non_nullable
as bool,answerReviewAt: freezed == answerReviewAt ? _self.answerReviewAt : answerReviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,selectionStrategy: freezed == selectionStrategy ? _self.selectionStrategy : selectionStrategy // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ExamAttemptDto {

 String get id;@JsonKey(name: 'quiz_id') String get examId;@JsonKey(name: 'attempt_number') int get attemptNumber; String get status;@JsonKey(name: 'started_at') DateTime get startedAt;@JsonKey(name: 'expires_at') DateTime? get expiresAt;@JsonKey(name: 'submit_before') DateTime? get submitBefore; List<PublicQuestionDto> get questions; double? get percentage; bool? get passed;
/// Create a copy of ExamAttemptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamAttemptDtoCopyWith<ExamAttemptDto> get copyWith => _$ExamAttemptDtoCopyWithImpl<ExamAttemptDto>(this as ExamAttemptDto, _$identity);

  /// Serializes this ExamAttemptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.submitBefore, submitBefore) || other.submitBefore == submitBefore)&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examId,attemptNumber,status,startedAt,expiresAt,submitBefore,const DeepCollectionEquality().hash(questions),percentage,passed);

@override
String toString() {
  return 'ExamAttemptDto(id: $id, examId: $examId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, submitBefore: $submitBefore, questions: $questions, percentage: $percentage, passed: $passed)';
}


}

/// @nodoc
abstract mixin class $ExamAttemptDtoCopyWith<$Res>  {
  factory $ExamAttemptDtoCopyWith(ExamAttemptDto value, $Res Function(ExamAttemptDto) _then) = _$ExamAttemptDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'quiz_id') String examId,@JsonKey(name: 'attempt_number') int attemptNumber, String status,@JsonKey(name: 'started_at') DateTime startedAt,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'submit_before') DateTime? submitBefore, List<PublicQuestionDto> questions, double? percentage, bool? passed
});




}
/// @nodoc
class _$ExamAttemptDtoCopyWithImpl<$Res>
    implements $ExamAttemptDtoCopyWith<$Res> {
  _$ExamAttemptDtoCopyWithImpl(this._self, this._then);

  final ExamAttemptDto _self;
  final $Res Function(ExamAttemptDto) _then;

/// Create a copy of ExamAttemptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? examId = null,Object? attemptNumber = null,Object? status = null,Object? startedAt = null,Object? expiresAt = freezed,Object? submitBefore = freezed,Object? questions = null,Object? percentage = freezed,Object? passed = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,submitBefore: freezed == submitBefore ? _self.submitBefore : submitBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<PublicQuestionDto>,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamAttemptDto].
extension ExamAttemptDtoPatterns on ExamAttemptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamAttemptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamAttemptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamAttemptDto value)  $default,){
final _that = this;
switch (_that) {
case _ExamAttemptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamAttemptDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExamAttemptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'quiz_id')  String examId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'submit_before')  DateTime? submitBefore,  List<PublicQuestionDto> questions,  double? percentage,  bool? passed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamAttemptDto() when $default != null:
return $default(_that.id,_that.examId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.submitBefore,_that.questions,_that.percentage,_that.passed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'quiz_id')  String examId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'submit_before')  DateTime? submitBefore,  List<PublicQuestionDto> questions,  double? percentage,  bool? passed)  $default,) {final _that = this;
switch (_that) {
case _ExamAttemptDto():
return $default(_that.id,_that.examId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.submitBefore,_that.questions,_that.percentage,_that.passed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'quiz_id')  String examId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'submit_before')  DateTime? submitBefore,  List<PublicQuestionDto> questions,  double? percentage,  bool? passed)?  $default,) {final _that = this;
switch (_that) {
case _ExamAttemptDto() when $default != null:
return $default(_that.id,_that.examId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.submitBefore,_that.questions,_that.percentage,_that.passed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamAttemptDto implements ExamAttemptDto {
  const _ExamAttemptDto({required this.id, @JsonKey(name: 'quiz_id') required this.examId, @JsonKey(name: 'attempt_number') required this.attemptNumber, required this.status, @JsonKey(name: 'started_at') required this.startedAt, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'submit_before') this.submitBefore, final  List<PublicQuestionDto> questions = const <PublicQuestionDto>[], this.percentage, this.passed}): _questions = questions;
  factory _ExamAttemptDto.fromJson(Map<String, dynamic> json) => _$ExamAttemptDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'quiz_id') final  String examId;
@override@JsonKey(name: 'attempt_number') final  int attemptNumber;
@override final  String status;
@override@JsonKey(name: 'started_at') final  DateTime startedAt;
@override@JsonKey(name: 'expires_at') final  DateTime? expiresAt;
@override@JsonKey(name: 'submit_before') final  DateTime? submitBefore;
 final  List<PublicQuestionDto> _questions;
@override@JsonKey() List<PublicQuestionDto> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

@override final  double? percentage;
@override final  bool? passed;

/// Create a copy of ExamAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamAttemptDtoCopyWith<_ExamAttemptDto> get copyWith => __$ExamAttemptDtoCopyWithImpl<_ExamAttemptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamAttemptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.submitBefore, submitBefore) || other.submitBefore == submitBefore)&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examId,attemptNumber,status,startedAt,expiresAt,submitBefore,const DeepCollectionEquality().hash(_questions),percentage,passed);

@override
String toString() {
  return 'ExamAttemptDto(id: $id, examId: $examId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, submitBefore: $submitBefore, questions: $questions, percentage: $percentage, passed: $passed)';
}


}

/// @nodoc
abstract mixin class _$ExamAttemptDtoCopyWith<$Res> implements $ExamAttemptDtoCopyWith<$Res> {
  factory _$ExamAttemptDtoCopyWith(_ExamAttemptDto value, $Res Function(_ExamAttemptDto) _then) = __$ExamAttemptDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'quiz_id') String examId,@JsonKey(name: 'attempt_number') int attemptNumber, String status,@JsonKey(name: 'started_at') DateTime startedAt,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'submit_before') DateTime? submitBefore, List<PublicQuestionDto> questions, double? percentage, bool? passed
});




}
/// @nodoc
class __$ExamAttemptDtoCopyWithImpl<$Res>
    implements _$ExamAttemptDtoCopyWith<$Res> {
  __$ExamAttemptDtoCopyWithImpl(this._self, this._then);

  final _ExamAttemptDto _self;
  final $Res Function(_ExamAttemptDto) _then;

/// Create a copy of ExamAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? examId = null,Object? attemptNumber = null,Object? status = null,Object? startedAt = null,Object? expiresAt = freezed,Object? submitBefore = freezed,Object? questions = null,Object? percentage = freezed,Object? passed = freezed,}) {
  return _then(_ExamAttemptDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,submitBefore: freezed == submitBefore ? _self.submitBefore : submitBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<PublicQuestionDto>,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$LeaderboardEntryDto {

 int get position;@JsonKey(name: 'attempt_id') String get attemptId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'display_name') String get displayName;@JsonKey(name: 'score_points') double get scorePoints; double get percentage;@JsonKey(name: 'completion_duration_seconds') int get completionDurationSeconds;@JsonKey(name: 'submitted_at') DateTime get submittedAt;
/// Create a copy of LeaderboardEntryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardEntryDtoCopyWith<LeaderboardEntryDto> get copyWith => _$LeaderboardEntryDtoCopyWithImpl<LeaderboardEntryDto>(this as LeaderboardEntryDto, _$identity);

  /// Serializes this LeaderboardEntryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardEntryDto&&(identical(other.position, position) || other.position == position)&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.scorePoints, scorePoints) || other.scorePoints == scorePoints)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.completionDurationSeconds, completionDurationSeconds) || other.completionDurationSeconds == completionDurationSeconds)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,attemptId,studentId,displayName,scorePoints,percentage,completionDurationSeconds,submittedAt);

@override
String toString() {
  return 'LeaderboardEntryDto(position: $position, attemptId: $attemptId, studentId: $studentId, displayName: $displayName, scorePoints: $scorePoints, percentage: $percentage, completionDurationSeconds: $completionDurationSeconds, submittedAt: $submittedAt)';
}


}

/// @nodoc
abstract mixin class $LeaderboardEntryDtoCopyWith<$Res>  {
  factory $LeaderboardEntryDtoCopyWith(LeaderboardEntryDto value, $Res Function(LeaderboardEntryDto) _then) = _$LeaderboardEntryDtoCopyWithImpl;
@useResult
$Res call({
 int position,@JsonKey(name: 'attempt_id') String attemptId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'score_points') double scorePoints, double percentage,@JsonKey(name: 'completion_duration_seconds') int completionDurationSeconds,@JsonKey(name: 'submitted_at') DateTime submittedAt
});




}
/// @nodoc
class _$LeaderboardEntryDtoCopyWithImpl<$Res>
    implements $LeaderboardEntryDtoCopyWith<$Res> {
  _$LeaderboardEntryDtoCopyWithImpl(this._self, this._then);

  final LeaderboardEntryDto _self;
  final $Res Function(LeaderboardEntryDto) _then;

/// Create a copy of LeaderboardEntryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,Object? attemptId = null,Object? studentId = null,Object? displayName = null,Object? scorePoints = null,Object? percentage = null,Object? completionDurationSeconds = null,Object? submittedAt = null,}) {
  return _then(_self.copyWith(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,scorePoints: null == scorePoints ? _self.scorePoints : scorePoints // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,completionDurationSeconds: null == completionDurationSeconds ? _self.completionDurationSeconds : completionDurationSeconds // ignore: cast_nullable_to_non_nullable
as int,submittedAt: null == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardEntryDto].
extension LeaderboardEntryDtoPatterns on LeaderboardEntryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardEntryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardEntryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardEntryDto value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardEntryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardEntryDto value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardEntryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int position, @JsonKey(name: 'attempt_id')  String attemptId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'score_points')  double scorePoints,  double percentage, @JsonKey(name: 'completion_duration_seconds')  int completionDurationSeconds, @JsonKey(name: 'submitted_at')  DateTime submittedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardEntryDto() when $default != null:
return $default(_that.position,_that.attemptId,_that.studentId,_that.displayName,_that.scorePoints,_that.percentage,_that.completionDurationSeconds,_that.submittedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int position, @JsonKey(name: 'attempt_id')  String attemptId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'score_points')  double scorePoints,  double percentage, @JsonKey(name: 'completion_duration_seconds')  int completionDurationSeconds, @JsonKey(name: 'submitted_at')  DateTime submittedAt)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardEntryDto():
return $default(_that.position,_that.attemptId,_that.studentId,_that.displayName,_that.scorePoints,_that.percentage,_that.completionDurationSeconds,_that.submittedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int position, @JsonKey(name: 'attempt_id')  String attemptId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'score_points')  double scorePoints,  double percentage, @JsonKey(name: 'completion_duration_seconds')  int completionDurationSeconds, @JsonKey(name: 'submitted_at')  DateTime submittedAt)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardEntryDto() when $default != null:
return $default(_that.position,_that.attemptId,_that.studentId,_that.displayName,_that.scorePoints,_that.percentage,_that.completionDurationSeconds,_that.submittedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaderboardEntryDto implements LeaderboardEntryDto {
  const _LeaderboardEntryDto({required this.position, @JsonKey(name: 'attempt_id') required this.attemptId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'score_points') required this.scorePoints, required this.percentage, @JsonKey(name: 'completion_duration_seconds') required this.completionDurationSeconds, @JsonKey(name: 'submitted_at') required this.submittedAt});
  factory _LeaderboardEntryDto.fromJson(Map<String, dynamic> json) => _$LeaderboardEntryDtoFromJson(json);

@override final  int position;
@override@JsonKey(name: 'attempt_id') final  String attemptId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'display_name') final  String displayName;
@override@JsonKey(name: 'score_points') final  double scorePoints;
@override final  double percentage;
@override@JsonKey(name: 'completion_duration_seconds') final  int completionDurationSeconds;
@override@JsonKey(name: 'submitted_at') final  DateTime submittedAt;

/// Create a copy of LeaderboardEntryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardEntryDtoCopyWith<_LeaderboardEntryDto> get copyWith => __$LeaderboardEntryDtoCopyWithImpl<_LeaderboardEntryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaderboardEntryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardEntryDto&&(identical(other.position, position) || other.position == position)&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.scorePoints, scorePoints) || other.scorePoints == scorePoints)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.completionDurationSeconds, completionDurationSeconds) || other.completionDurationSeconds == completionDurationSeconds)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,attemptId,studentId,displayName,scorePoints,percentage,completionDurationSeconds,submittedAt);

@override
String toString() {
  return 'LeaderboardEntryDto(position: $position, attemptId: $attemptId, studentId: $studentId, displayName: $displayName, scorePoints: $scorePoints, percentage: $percentage, completionDurationSeconds: $completionDurationSeconds, submittedAt: $submittedAt)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardEntryDtoCopyWith<$Res> implements $LeaderboardEntryDtoCopyWith<$Res> {
  factory _$LeaderboardEntryDtoCopyWith(_LeaderboardEntryDto value, $Res Function(_LeaderboardEntryDto) _then) = __$LeaderboardEntryDtoCopyWithImpl;
@override @useResult
$Res call({
 int position,@JsonKey(name: 'attempt_id') String attemptId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'score_points') double scorePoints, double percentage,@JsonKey(name: 'completion_duration_seconds') int completionDurationSeconds,@JsonKey(name: 'submitted_at') DateTime submittedAt
});




}
/// @nodoc
class __$LeaderboardEntryDtoCopyWithImpl<$Res>
    implements _$LeaderboardEntryDtoCopyWith<$Res> {
  __$LeaderboardEntryDtoCopyWithImpl(this._self, this._then);

  final _LeaderboardEntryDto _self;
  final $Res Function(_LeaderboardEntryDto) _then;

/// Create a copy of LeaderboardEntryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,Object? attemptId = null,Object? studentId = null,Object? displayName = null,Object? scorePoints = null,Object? percentage = null,Object? completionDurationSeconds = null,Object? submittedAt = null,}) {
  return _then(_LeaderboardEntryDto(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,scorePoints: null == scorePoints ? _self.scorePoints : scorePoints // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,completionDurationSeconds: null == completionDurationSeconds ? _self.completionDurationSeconds : completionDurationSeconds // ignore: cast_nullable_to_non_nullable
as int,submittedAt: null == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ExamLeaderboardDto {

 String get scope; List<String> get order; List<LeaderboardEntryDto> get items;
/// Create a copy of ExamLeaderboardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamLeaderboardDtoCopyWith<ExamLeaderboardDto> get copyWith => _$ExamLeaderboardDtoCopyWithImpl<ExamLeaderboardDto>(this as ExamLeaderboardDto, _$identity);

  /// Serializes this ExamLeaderboardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamLeaderboardDto&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other.order, order)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scope,const DeepCollectionEquality().hash(order),const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ExamLeaderboardDto(scope: $scope, order: $order, items: $items)';
}


}

/// @nodoc
abstract mixin class $ExamLeaderboardDtoCopyWith<$Res>  {
  factory $ExamLeaderboardDtoCopyWith(ExamLeaderboardDto value, $Res Function(ExamLeaderboardDto) _then) = _$ExamLeaderboardDtoCopyWithImpl;
@useResult
$Res call({
 String scope, List<String> order, List<LeaderboardEntryDto> items
});




}
/// @nodoc
class _$ExamLeaderboardDtoCopyWithImpl<$Res>
    implements $ExamLeaderboardDtoCopyWith<$Res> {
  _$ExamLeaderboardDtoCopyWithImpl(this._self, this._then);

  final ExamLeaderboardDto _self;
  final $Res Function(ExamLeaderboardDto) _then;

/// Create a copy of ExamLeaderboardDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scope = null,Object? order = null,Object? items = null,}) {
  return _then(_self.copyWith(
scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LeaderboardEntryDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamLeaderboardDto].
extension ExamLeaderboardDtoPatterns on ExamLeaderboardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamLeaderboardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamLeaderboardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamLeaderboardDto value)  $default,){
final _that = this;
switch (_that) {
case _ExamLeaderboardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamLeaderboardDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExamLeaderboardDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scope,  List<String> order,  List<LeaderboardEntryDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamLeaderboardDto() when $default != null:
return $default(_that.scope,_that.order,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scope,  List<String> order,  List<LeaderboardEntryDto> items)  $default,) {final _that = this;
switch (_that) {
case _ExamLeaderboardDto():
return $default(_that.scope,_that.order,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scope,  List<String> order,  List<LeaderboardEntryDto> items)?  $default,) {final _that = this;
switch (_that) {
case _ExamLeaderboardDto() when $default != null:
return $default(_that.scope,_that.order,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamLeaderboardDto implements ExamLeaderboardDto {
  const _ExamLeaderboardDto({required this.scope, final  List<String> order = const <String>[], final  List<LeaderboardEntryDto> items = const <LeaderboardEntryDto>[]}): _order = order,_items = items;
  factory _ExamLeaderboardDto.fromJson(Map<String, dynamic> json) => _$ExamLeaderboardDtoFromJson(json);

@override final  String scope;
 final  List<String> _order;
@override@JsonKey() List<String> get order {
  if (_order is EqualUnmodifiableListView) return _order;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_order);
}

 final  List<LeaderboardEntryDto> _items;
@override@JsonKey() List<LeaderboardEntryDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ExamLeaderboardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamLeaderboardDtoCopyWith<_ExamLeaderboardDto> get copyWith => __$ExamLeaderboardDtoCopyWithImpl<_ExamLeaderboardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamLeaderboardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamLeaderboardDto&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other._order, _order)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scope,const DeepCollectionEquality().hash(_order),const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ExamLeaderboardDto(scope: $scope, order: $order, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ExamLeaderboardDtoCopyWith<$Res> implements $ExamLeaderboardDtoCopyWith<$Res> {
  factory _$ExamLeaderboardDtoCopyWith(_ExamLeaderboardDto value, $Res Function(_ExamLeaderboardDto) _then) = __$ExamLeaderboardDtoCopyWithImpl;
@override @useResult
$Res call({
 String scope, List<String> order, List<LeaderboardEntryDto> items
});




}
/// @nodoc
class __$ExamLeaderboardDtoCopyWithImpl<$Res>
    implements _$ExamLeaderboardDtoCopyWith<$Res> {
  __$ExamLeaderboardDtoCopyWithImpl(this._self, this._then);

  final _ExamLeaderboardDto _self;
  final $Res Function(_ExamLeaderboardDto) _then;

/// Create a copy of ExamLeaderboardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scope = null,Object? order = null,Object? items = null,}) {
  return _then(_ExamLeaderboardDto(
scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self._order : order // ignore: cast_nullable_to_non_nullable
as List<String>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<LeaderboardEntryDto>,
  ));
}


}

// dart format on
