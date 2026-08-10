// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expanded_api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcademicItemDto _$AcademicItemDtoFromJson(Map<String, dynamic> json) {
  return _AcademicItemDto.fromJson(json);
}

/// @nodoc
mixin _$AcademicItemDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String? get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name_bn')
  String? get displayNameBn => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'starts_on')
  String? get startsOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_on')
  String? get endsOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AcademicItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcademicItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicItemDtoCopyWith<AcademicItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicItemDtoCopyWith<$Res> {
  factory $AcademicItemDtoCopyWith(
          AcademicItemDto value, $Res Function(AcademicItemDto) then) =
      _$AcademicItemDtoCopyWithImpl<$Res, AcademicItemDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'parent_id') String? parentId,
      String slug,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'display_name_bn') String? displayNameBn,
      String status,
      int position,
      @JsonKey(name: 'starts_on') String? startsOn,
      @JsonKey(name: 'ends_on') String? endsOn,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AcademicItemDtoCopyWithImpl<$Res, $Val extends AcademicItemDto>
    implements $AcademicItemDtoCopyWith<$Res> {
  _$AcademicItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcademicItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? parentId = freezed,
    Object? slug = null,
    Object? displayName = null,
    Object? displayNameBn = freezed,
    Object? status = null,
    Object? position = null,
    Object? startsOn = freezed,
    Object? endsOn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayNameBn: freezed == displayNameBn
          ? _value.displayNameBn
          : displayNameBn // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      startsOn: freezed == startsOn
          ? _value.startsOn
          : startsOn // ignore: cast_nullable_to_non_nullable
              as String?,
      endsOn: freezed == endsOn
          ? _value.endsOn
          : endsOn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicItemDtoImplCopyWith<$Res>
    implements $AcademicItemDtoCopyWith<$Res> {
  factory _$$AcademicItemDtoImplCopyWith(_$AcademicItemDtoImpl value,
          $Res Function(_$AcademicItemDtoImpl) then) =
      __$$AcademicItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'parent_id') String? parentId,
      String slug,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'display_name_bn') String? displayNameBn,
      String status,
      int position,
      @JsonKey(name: 'starts_on') String? startsOn,
      @JsonKey(name: 'ends_on') String? endsOn,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$AcademicItemDtoImplCopyWithImpl<$Res>
    extends _$AcademicItemDtoCopyWithImpl<$Res, _$AcademicItemDtoImpl>
    implements _$$AcademicItemDtoImplCopyWith<$Res> {
  __$$AcademicItemDtoImplCopyWithImpl(
      _$AcademicItemDtoImpl _value, $Res Function(_$AcademicItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcademicItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? parentId = freezed,
    Object? slug = null,
    Object? displayName = null,
    Object? displayNameBn = freezed,
    Object? status = null,
    Object? position = null,
    Object? startsOn = freezed,
    Object? endsOn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AcademicItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayNameBn: freezed == displayNameBn
          ? _value.displayNameBn
          : displayNameBn // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      startsOn: freezed == startsOn
          ? _value.startsOn
          : startsOn // ignore: cast_nullable_to_non_nullable
              as String?,
      endsOn: freezed == endsOn
          ? _value.endsOn
          : endsOn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicItemDtoImpl implements _AcademicItemDto {
  const _$AcademicItemDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') this.organizationId,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.slug,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'display_name_bn') this.displayNameBn,
      required this.status,
      this.position = 0,
      @JsonKey(name: 'starts_on') this.startsOn,
      @JsonKey(name: 'ends_on') this.endsOn,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$AcademicItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcademicItemDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String? organizationId;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  final String slug;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'display_name_bn')
  final String? displayNameBn;
  @override
  final String status;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey(name: 'starts_on')
  final String? startsOn;
  @override
  @JsonKey(name: 'ends_on')
  final String? endsOn;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AcademicItemDto(id: $id, organizationId: $organizationId, parentId: $parentId, slug: $slug, displayName: $displayName, displayNameBn: $displayNameBn, status: $status, position: $position, startsOn: $startsOn, endsOn: $endsOn, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayNameBn, displayNameBn) ||
                other.displayNameBn == displayNameBn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.startsOn, startsOn) ||
                other.startsOn == startsOn) &&
            (identical(other.endsOn, endsOn) || other.endsOn == endsOn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      parentId,
      slug,
      displayName,
      displayNameBn,
      status,
      position,
      startsOn,
      endsOn,
      createdAt,
      updatedAt);

  /// Create a copy of AcademicItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicItemDtoImplCopyWith<_$AcademicItemDtoImpl> get copyWith =>
      __$$AcademicItemDtoImplCopyWithImpl<_$AcademicItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicItemDtoImplToJson(
      this,
    );
  }
}

abstract class _AcademicItemDto implements AcademicItemDto {
  const factory _AcademicItemDto(
          {required final String id,
          @JsonKey(name: 'organization_id') final String? organizationId,
          @JsonKey(name: 'parent_id') final String? parentId,
          required final String slug,
          @JsonKey(name: 'display_name') required final String displayName,
          @JsonKey(name: 'display_name_bn') final String? displayNameBn,
          required final String status,
          final int position,
          @JsonKey(name: 'starts_on') final String? startsOn,
          @JsonKey(name: 'ends_on') final String? endsOn,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$AcademicItemDtoImpl;

  factory _AcademicItemDto.fromJson(Map<String, dynamic> json) =
      _$AcademicItemDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String? get organizationId;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  String get slug;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'display_name_bn')
  String? get displayNameBn;
  @override
  String get status;
  @override
  int get position;
  @override
  @JsonKey(name: 'starts_on')
  String? get startsOn;
  @override
  @JsonKey(name: 'ends_on')
  String? get endsOn;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of AcademicItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicItemDtoImplCopyWith<_$AcademicItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AcademicPreferencesWriteRequest _$AcademicPreferencesWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _AcademicPreferencesWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$AcademicPreferencesWriteRequest {
  @JsonKey(name: 'program_id')
  String? get programId => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_id')
  String? get levelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_id')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_id')
  String? get boardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_ids')
  List<String> get subjectIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_target_ids')
  List<String> get examTargetIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_language')
  String get preferredLanguage => throw _privateConstructorUsedError;

  /// Serializes this AcademicPreferencesWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcademicPreferencesWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicPreferencesWriteRequestCopyWith<AcademicPreferencesWriteRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicPreferencesWriteRequestCopyWith<$Res> {
  factory $AcademicPreferencesWriteRequestCopyWith(
          AcademicPreferencesWriteRequest value,
          $Res Function(AcademicPreferencesWriteRequest) then) =
      _$AcademicPreferencesWriteRequestCopyWithImpl<$Res,
          AcademicPreferencesWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'program_id') String? programId,
      @JsonKey(name: 'level_id') String? levelId,
      @JsonKey(name: 'class_id') String? classId,
      @JsonKey(name: 'board_id') String? boardId,
      @JsonKey(name: 'group_id') String? groupId,
      @JsonKey(name: 'subject_ids') List<String> subjectIds,
      @JsonKey(name: 'exam_target_ids') List<String> examTargetIds,
      @JsonKey(name: 'preferred_language') String preferredLanguage});
}

/// @nodoc
class _$AcademicPreferencesWriteRequestCopyWithImpl<$Res,
        $Val extends AcademicPreferencesWriteRequest>
    implements $AcademicPreferencesWriteRequestCopyWith<$Res> {
  _$AcademicPreferencesWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcademicPreferencesWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? levelId = freezed,
    Object? classId = freezed,
    Object? boardId = freezed,
    Object? groupId = freezed,
    Object? subjectIds = null,
    Object? examTargetIds = null,
    Object? preferredLanguage = null,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectIds: null == subjectIds
          ? _value.subjectIds
          : subjectIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      examTargetIds: null == examTargetIds
          ? _value.examTargetIds
          : examTargetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredLanguage: null == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicPreferencesWriteRequestImplCopyWith<$Res>
    implements $AcademicPreferencesWriteRequestCopyWith<$Res> {
  factory _$$AcademicPreferencesWriteRequestImplCopyWith(
          _$AcademicPreferencesWriteRequestImpl value,
          $Res Function(_$AcademicPreferencesWriteRequestImpl) then) =
      __$$AcademicPreferencesWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'program_id') String? programId,
      @JsonKey(name: 'level_id') String? levelId,
      @JsonKey(name: 'class_id') String? classId,
      @JsonKey(name: 'board_id') String? boardId,
      @JsonKey(name: 'group_id') String? groupId,
      @JsonKey(name: 'subject_ids') List<String> subjectIds,
      @JsonKey(name: 'exam_target_ids') List<String> examTargetIds,
      @JsonKey(name: 'preferred_language') String preferredLanguage});
}

/// @nodoc
class __$$AcademicPreferencesWriteRequestImplCopyWithImpl<$Res>
    extends _$AcademicPreferencesWriteRequestCopyWithImpl<$Res,
        _$AcademicPreferencesWriteRequestImpl>
    implements _$$AcademicPreferencesWriteRequestImplCopyWith<$Res> {
  __$$AcademicPreferencesWriteRequestImplCopyWithImpl(
      _$AcademicPreferencesWriteRequestImpl _value,
      $Res Function(_$AcademicPreferencesWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcademicPreferencesWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? levelId = freezed,
    Object? classId = freezed,
    Object? boardId = freezed,
    Object? groupId = freezed,
    Object? subjectIds = null,
    Object? examTargetIds = null,
    Object? preferredLanguage = null,
  }) {
    return _then(_$AcademicPreferencesWriteRequestImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectIds: null == subjectIds
          ? _value._subjectIds
          : subjectIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      examTargetIds: null == examTargetIds
          ? _value._examTargetIds
          : examTargetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredLanguage: null == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicPreferencesWriteRequestImpl
    implements _AcademicPreferencesWriteRequest {
  const _$AcademicPreferencesWriteRequestImpl(
      {@JsonKey(name: 'program_id') this.programId,
      @JsonKey(name: 'level_id') this.levelId,
      @JsonKey(name: 'class_id') this.classId,
      @JsonKey(name: 'board_id') this.boardId,
      @JsonKey(name: 'group_id') this.groupId,
      @JsonKey(name: 'subject_ids') required final List<String> subjectIds,
      @JsonKey(name: 'exam_target_ids')
      required final List<String> examTargetIds,
      @JsonKey(name: 'preferred_language') required this.preferredLanguage})
      : _subjectIds = subjectIds,
        _examTargetIds = examTargetIds;

  factory _$AcademicPreferencesWriteRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcademicPreferencesWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'program_id')
  final String? programId;
  @override
  @JsonKey(name: 'level_id')
  final String? levelId;
  @override
  @JsonKey(name: 'class_id')
  final String? classId;
  @override
  @JsonKey(name: 'board_id')
  final String? boardId;
  @override
  @JsonKey(name: 'group_id')
  final String? groupId;
  final List<String> _subjectIds;
  @override
  @JsonKey(name: 'subject_ids')
  List<String> get subjectIds {
    if (_subjectIds is EqualUnmodifiableListView) return _subjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjectIds);
  }

  final List<String> _examTargetIds;
  @override
  @JsonKey(name: 'exam_target_ids')
  List<String> get examTargetIds {
    if (_examTargetIds is EqualUnmodifiableListView) return _examTargetIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examTargetIds);
  }

  @override
  @JsonKey(name: 'preferred_language')
  final String preferredLanguage;

  @override
  String toString() {
    return 'AcademicPreferencesWriteRequest(programId: $programId, levelId: $levelId, classId: $classId, boardId: $boardId, groupId: $groupId, subjectIds: $subjectIds, examTargetIds: $examTargetIds, preferredLanguage: $preferredLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicPreferencesWriteRequestImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality()
                .equals(other._subjectIds, _subjectIds) &&
            const DeepCollectionEquality()
                .equals(other._examTargetIds, _examTargetIds) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      programId,
      levelId,
      classId,
      boardId,
      groupId,
      const DeepCollectionEquality().hash(_subjectIds),
      const DeepCollectionEquality().hash(_examTargetIds),
      preferredLanguage);

  /// Create a copy of AcademicPreferencesWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicPreferencesWriteRequestImplCopyWith<
          _$AcademicPreferencesWriteRequestImpl>
      get copyWith => __$$AcademicPreferencesWriteRequestImplCopyWithImpl<
          _$AcademicPreferencesWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicPreferencesWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _AcademicPreferencesWriteRequest
    implements AcademicPreferencesWriteRequest {
  const factory _AcademicPreferencesWriteRequest(
          {@JsonKey(name: 'program_id') final String? programId,
          @JsonKey(name: 'level_id') final String? levelId,
          @JsonKey(name: 'class_id') final String? classId,
          @JsonKey(name: 'board_id') final String? boardId,
          @JsonKey(name: 'group_id') final String? groupId,
          @JsonKey(name: 'subject_ids') required final List<String> subjectIds,
          @JsonKey(name: 'exam_target_ids')
          required final List<String> examTargetIds,
          @JsonKey(name: 'preferred_language')
          required final String preferredLanguage}) =
      _$AcademicPreferencesWriteRequestImpl;

  factory _AcademicPreferencesWriteRequest.fromJson(Map<String, dynamic> json) =
      _$AcademicPreferencesWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'program_id')
  String? get programId;
  @override
  @JsonKey(name: 'level_id')
  String? get levelId;
  @override
  @JsonKey(name: 'class_id')
  String? get classId;
  @override
  @JsonKey(name: 'board_id')
  String? get boardId;
  @override
  @JsonKey(name: 'group_id')
  String? get groupId;
  @override
  @JsonKey(name: 'subject_ids')
  List<String> get subjectIds;
  @override
  @JsonKey(name: 'exam_target_ids')
  List<String> get examTargetIds;
  @override
  @JsonKey(name: 'preferred_language')
  String get preferredLanguage;

  /// Create a copy of AcademicPreferencesWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicPreferencesWriteRequestImplCopyWith<
          _$AcademicPreferencesWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlaybackTrackDto _$PlaybackTrackDtoFromJson(Map<String, dynamic> json) {
  return _PlaybackTrackDto.fromJson(json);
}

/// @nodoc
mixin _$PlaybackTrackDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PlaybackTrackDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaybackTrackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaybackTrackDtoCopyWith<PlaybackTrackDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackTrackDtoCopyWith<$Res> {
  factory $PlaybackTrackDtoCopyWith(
          PlaybackTrackDto value, $Res Function(PlaybackTrackDto) then) =
      _$PlaybackTrackDtoCopyWithImpl<$Res, PlaybackTrackDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String language,
      String label,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      String url});
}

/// @nodoc
class _$PlaybackTrackDtoCopyWithImpl<$Res, $Val extends PlaybackTrackDto>
    implements $PlaybackTrackDtoCopyWith<$Res> {
  _$PlaybackTrackDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaybackTrackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? language = null,
    Object? label = null,
    Object? isDefault = null,
    Object? contentType = null,
    Object? durationSeconds = freezed,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaybackTrackDtoImplCopyWith<$Res>
    implements $PlaybackTrackDtoCopyWith<$Res> {
  factory _$$PlaybackTrackDtoImplCopyWith(_$PlaybackTrackDtoImpl value,
          $Res Function(_$PlaybackTrackDtoImpl) then) =
      __$$PlaybackTrackDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String language,
      String label,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      String url});
}

/// @nodoc
class __$$PlaybackTrackDtoImplCopyWithImpl<$Res>
    extends _$PlaybackTrackDtoCopyWithImpl<$Res, _$PlaybackTrackDtoImpl>
    implements _$$PlaybackTrackDtoImplCopyWith<$Res> {
  __$$PlaybackTrackDtoImplCopyWithImpl(_$PlaybackTrackDtoImpl _value,
      $Res Function(_$PlaybackTrackDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaybackTrackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? language = null,
    Object? label = null,
    Object? isDefault = null,
    Object? contentType = null,
    Object? durationSeconds = freezed,
    Object? url = null,
  }) {
    return _then(_$PlaybackTrackDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackTrackDtoImpl implements _PlaybackTrackDto {
  const _$PlaybackTrackDtoImpl(
      {required this.id,
      required this.type,
      required this.language,
      required this.label,
      @JsonKey(name: 'is_default') required this.isDefault,
      @JsonKey(name: 'content_type') required this.contentType,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      required this.url});

  factory _$PlaybackTrackDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackTrackDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String language;
  @override
  final String label;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'content_type')
  final String contentType;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  final String url;

  @override
  String toString() {
    return 'PlaybackTrackDto(id: $id, type: $type, language: $language, label: $label, isDefault: $isDefault, contentType: $contentType, durationSeconds: $durationSeconds, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackTrackDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, language, label,
      isDefault, contentType, durationSeconds, url);

  /// Create a copy of PlaybackTrackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackTrackDtoImplCopyWith<_$PlaybackTrackDtoImpl> get copyWith =>
      __$$PlaybackTrackDtoImplCopyWithImpl<_$PlaybackTrackDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackTrackDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaybackTrackDto implements PlaybackTrackDto {
  const factory _PlaybackTrackDto(
      {required final String id,
      required final String type,
      required final String language,
      required final String label,
      @JsonKey(name: 'is_default') required final bool isDefault,
      @JsonKey(name: 'content_type') required final String contentType,
      @JsonKey(name: 'duration_seconds') final int? durationSeconds,
      required final String url}) = _$PlaybackTrackDtoImpl;

  factory _PlaybackTrackDto.fromJson(Map<String, dynamic> json) =
      _$PlaybackTrackDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get language;
  @override
  String get label;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'content_type')
  String get contentType;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  String get url;

  /// Create a copy of PlaybackTrackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaybackTrackDtoImplCopyWith<_$PlaybackTrackDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaybackMetadataDto _$PlaybackMetadataDtoFromJson(Map<String, dynamic> json) {
  return _PlaybackMetadataDto.fromJson(json);
}

/// @nodoc
mixin _$PlaybackMetadataDto {
  @JsonKey(name: 'media_asset_id')
  String get mediaAssetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<PlaybackTrackDto> get tracks => throw _privateConstructorUsedError;

  /// Serializes this PlaybackMetadataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaybackMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaybackMetadataDtoCopyWith<PlaybackMetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackMetadataDtoCopyWith<$Res> {
  factory $PlaybackMetadataDtoCopyWith(
          PlaybackMetadataDto value, $Res Function(PlaybackMetadataDto) then) =
      _$PlaybackMetadataDtoCopyWithImpl<$Res, PlaybackMetadataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'media_asset_id') String mediaAssetId,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      int? width,
      int? height,
      String url,
      List<PlaybackTrackDto> tracks});
}

/// @nodoc
class _$PlaybackMetadataDtoCopyWithImpl<$Res, $Val extends PlaybackMetadataDto>
    implements $PlaybackMetadataDtoCopyWith<$Res> {
  _$PlaybackMetadataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaybackMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaAssetId = null,
    Object? contentType = null,
    Object? durationSeconds = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = null,
    Object? tracks = null,
  }) {
    return _then(_value.copyWith(
      mediaAssetId: null == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<PlaybackTrackDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaybackMetadataDtoImplCopyWith<$Res>
    implements $PlaybackMetadataDtoCopyWith<$Res> {
  factory _$$PlaybackMetadataDtoImplCopyWith(_$PlaybackMetadataDtoImpl value,
          $Res Function(_$PlaybackMetadataDtoImpl) then) =
      __$$PlaybackMetadataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'media_asset_id') String mediaAssetId,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      int? width,
      int? height,
      String url,
      List<PlaybackTrackDto> tracks});
}

/// @nodoc
class __$$PlaybackMetadataDtoImplCopyWithImpl<$Res>
    extends _$PlaybackMetadataDtoCopyWithImpl<$Res, _$PlaybackMetadataDtoImpl>
    implements _$$PlaybackMetadataDtoImplCopyWith<$Res> {
  __$$PlaybackMetadataDtoImplCopyWithImpl(_$PlaybackMetadataDtoImpl _value,
      $Res Function(_$PlaybackMetadataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaybackMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaAssetId = null,
    Object? contentType = null,
    Object? durationSeconds = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = null,
    Object? tracks = null,
  }) {
    return _then(_$PlaybackMetadataDtoImpl(
      mediaAssetId: null == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<PlaybackTrackDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackMetadataDtoImpl implements _PlaybackMetadataDto {
  const _$PlaybackMetadataDtoImpl(
      {@JsonKey(name: 'media_asset_id') required this.mediaAssetId,
      @JsonKey(name: 'content_type') required this.contentType,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      this.width,
      this.height,
      required this.url,
      final List<PlaybackTrackDto> tracks = const <PlaybackTrackDto>[]})
      : _tracks = tracks;

  factory _$PlaybackMetadataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackMetadataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'media_asset_id')
  final String mediaAssetId;
  @override
  @JsonKey(name: 'content_type')
  final String contentType;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String url;
  final List<PlaybackTrackDto> _tracks;
  @override
  @JsonKey()
  List<PlaybackTrackDto> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString() {
    return 'PlaybackMetadataDto(mediaAssetId: $mediaAssetId, contentType: $contentType, durationSeconds: $durationSeconds, width: $width, height: $height, url: $url, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackMetadataDtoImpl &&
            (identical(other.mediaAssetId, mediaAssetId) ||
                other.mediaAssetId == mediaAssetId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mediaAssetId,
      contentType,
      durationSeconds,
      width,
      height,
      url,
      const DeepCollectionEquality().hash(_tracks));

  /// Create a copy of PlaybackMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackMetadataDtoImplCopyWith<_$PlaybackMetadataDtoImpl> get copyWith =>
      __$$PlaybackMetadataDtoImplCopyWithImpl<_$PlaybackMetadataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackMetadataDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaybackMetadataDto implements PlaybackMetadataDto {
  const factory _PlaybackMetadataDto(
      {@JsonKey(name: 'media_asset_id') required final String mediaAssetId,
      @JsonKey(name: 'content_type') required final String contentType,
      @JsonKey(name: 'duration_seconds') final int? durationSeconds,
      final int? width,
      final int? height,
      required final String url,
      final List<PlaybackTrackDto> tracks}) = _$PlaybackMetadataDtoImpl;

  factory _PlaybackMetadataDto.fromJson(Map<String, dynamic> json) =
      _$PlaybackMetadataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'media_asset_id')
  String get mediaAssetId;
  @override
  @JsonKey(name: 'content_type')
  String get contentType;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String get url;
  @override
  List<PlaybackTrackDto> get tracks;

  /// Create a copy of PlaybackMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaybackMetadataDtoImplCopyWith<_$PlaybackMetadataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaProcessingStatusDto _$MediaProcessingStatusDtoFromJson(
    Map<String, dynamic> json) {
  return _MediaProcessingStatusDto.fromJson(json);
}

/// @nodoc
mixin _$MediaProcessingStatusDto {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'processing_progress')
  int get processingProgress => throw _privateConstructorUsedError;
  @JsonKey(name: 'processing_attempts')
  int get processingAttempts => throw _privateConstructorUsedError;

  /// Serializes this MediaProcessingStatusDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaProcessingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaProcessingStatusDtoCopyWith<MediaProcessingStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaProcessingStatusDtoCopyWith<$Res> {
  factory $MediaProcessingStatusDtoCopyWith(MediaProcessingStatusDto value,
          $Res Function(MediaProcessingStatusDto) then) =
      _$MediaProcessingStatusDtoCopyWithImpl<$Res, MediaProcessingStatusDto>;
  @useResult
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'processing_progress') int processingProgress,
      @JsonKey(name: 'processing_attempts') int processingAttempts});
}

/// @nodoc
class _$MediaProcessingStatusDtoCopyWithImpl<$Res,
        $Val extends MediaProcessingStatusDto>
    implements $MediaProcessingStatusDtoCopyWith<$Res> {
  _$MediaProcessingStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaProcessingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? processingProgress = null,
    Object? processingAttempts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      processingProgress: null == processingProgress
          ? _value.processingProgress
          : processingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      processingAttempts: null == processingAttempts
          ? _value.processingAttempts
          : processingAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaProcessingStatusDtoImplCopyWith<$Res>
    implements $MediaProcessingStatusDtoCopyWith<$Res> {
  factory _$$MediaProcessingStatusDtoImplCopyWith(
          _$MediaProcessingStatusDtoImpl value,
          $Res Function(_$MediaProcessingStatusDtoImpl) then) =
      __$$MediaProcessingStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'processing_progress') int processingProgress,
      @JsonKey(name: 'processing_attempts') int processingAttempts});
}

/// @nodoc
class __$$MediaProcessingStatusDtoImplCopyWithImpl<$Res>
    extends _$MediaProcessingStatusDtoCopyWithImpl<$Res,
        _$MediaProcessingStatusDtoImpl>
    implements _$$MediaProcessingStatusDtoImplCopyWith<$Res> {
  __$$MediaProcessingStatusDtoImplCopyWithImpl(
      _$MediaProcessingStatusDtoImpl _value,
      $Res Function(_$MediaProcessingStatusDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaProcessingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? processingProgress = null,
    Object? processingAttempts = null,
  }) {
    return _then(_$MediaProcessingStatusDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      processingProgress: null == processingProgress
          ? _value.processingProgress
          : processingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      processingAttempts: null == processingAttempts
          ? _value.processingAttempts
          : processingAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaProcessingStatusDtoImpl implements _MediaProcessingStatusDto {
  const _$MediaProcessingStatusDtoImpl(
      {required this.id,
      required this.status,
      @JsonKey(name: 'processing_progress') required this.processingProgress,
      @JsonKey(name: 'processing_attempts') required this.processingAttempts});

  factory _$MediaProcessingStatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaProcessingStatusDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  @JsonKey(name: 'processing_progress')
  final int processingProgress;
  @override
  @JsonKey(name: 'processing_attempts')
  final int processingAttempts;

  @override
  String toString() {
    return 'MediaProcessingStatusDto(id: $id, status: $status, processingProgress: $processingProgress, processingAttempts: $processingAttempts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaProcessingStatusDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processingProgress, processingProgress) ||
                other.processingProgress == processingProgress) &&
            (identical(other.processingAttempts, processingAttempts) ||
                other.processingAttempts == processingAttempts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, status, processingProgress, processingAttempts);

  /// Create a copy of MediaProcessingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaProcessingStatusDtoImplCopyWith<_$MediaProcessingStatusDtoImpl>
      get copyWith => __$$MediaProcessingStatusDtoImplCopyWithImpl<
          _$MediaProcessingStatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaProcessingStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _MediaProcessingStatusDto implements MediaProcessingStatusDto {
  const factory _MediaProcessingStatusDto(
      {required final String id,
      required final String status,
      @JsonKey(name: 'processing_progress')
      required final int processingProgress,
      @JsonKey(name: 'processing_attempts')
      required final int processingAttempts}) = _$MediaProcessingStatusDtoImpl;

  factory _MediaProcessingStatusDto.fromJson(Map<String, dynamic> json) =
      _$MediaProcessingStatusDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'processing_progress')
  int get processingProgress;
  @override
  @JsonKey(name: 'processing_attempts')
  int get processingAttempts;

  /// Create a copy of MediaProcessingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaProcessingStatusDtoImplCopyWith<_$MediaProcessingStatusDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContinueLearningDto _$ContinueLearningDtoFromJson(Map<String, dynamic> json) {
  return _ContinueLearningDto.fromJson(json);
}

/// @nodoc
mixin _$ContinueLearningDto {
  @JsonKey(name: 'enrollment_id')
  String get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_slug')
  String get courseSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_percentage')
  double get completionPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_seconds')
  int get positionSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ContinueLearningDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContinueLearningDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContinueLearningDtoCopyWith<ContinueLearningDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinueLearningDtoCopyWith<$Res> {
  factory $ContinueLearningDtoCopyWith(
          ContinueLearningDto value, $Res Function(ContinueLearningDto) then) =
      _$ContinueLearningDtoCopyWithImpl<$Res, ContinueLearningDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'course_slug') String courseSlug,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      @JsonKey(name: 'completion_percentage') double completionPercentage,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$ContinueLearningDtoCopyWithImpl<$Res, $Val extends ContinueLearningDto>
    implements $ContinueLearningDtoCopyWith<$Res> {
  _$ContinueLearningDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContinueLearningDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? courseSlug = null,
    Object? thumbnailAssetId = freezed,
    Object? completionPercentage = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? positionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseSlug: null == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinueLearningDtoImplCopyWith<$Res>
    implements $ContinueLearningDtoCopyWith<$Res> {
  factory _$$ContinueLearningDtoImplCopyWith(_$ContinueLearningDtoImpl value,
          $Res Function(_$ContinueLearningDtoImpl) then) =
      __$$ContinueLearningDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'course_slug') String courseSlug,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      @JsonKey(name: 'completion_percentage') double completionPercentage,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$ContinueLearningDtoImplCopyWithImpl<$Res>
    extends _$ContinueLearningDtoCopyWithImpl<$Res, _$ContinueLearningDtoImpl>
    implements _$$ContinueLearningDtoImplCopyWith<$Res> {
  __$$ContinueLearningDtoImplCopyWithImpl(_$ContinueLearningDtoImpl _value,
      $Res Function(_$ContinueLearningDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContinueLearningDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? courseSlug = null,
    Object? thumbnailAssetId = freezed,
    Object? completionPercentage = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? positionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ContinueLearningDtoImpl(
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseSlug: null == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinueLearningDtoImpl implements _ContinueLearningDto {
  const _$ContinueLearningDtoImpl(
      {@JsonKey(name: 'enrollment_id') required this.enrollmentId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'course_slug') required this.courseSlug,
      @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId,
      @JsonKey(name: 'completion_percentage')
      required this.completionPercentage,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'position_seconds') required this.positionSeconds,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$ContinueLearningDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinueLearningDtoImplFromJson(json);

  @override
  @JsonKey(name: 'enrollment_id')
  final String enrollmentId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'course_slug')
  final String courseSlug;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  final String? thumbnailAssetId;
  @override
  @JsonKey(name: 'completion_percentage')
  final double completionPercentage;
  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'position_seconds')
  final int positionSeconds;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ContinueLearningDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, courseSlug: $courseSlug, thumbnailAssetId: $thumbnailAssetId, completionPercentage: $completionPercentage, lessonId: $lessonId, lessonTitle: $lessonTitle, positionSeconds: $positionSeconds, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueLearningDtoImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.courseSlug, courseSlug) ||
                other.courseSlug == courseSlug) &&
            (identical(other.thumbnailAssetId, thumbnailAssetId) ||
                other.thumbnailAssetId == thumbnailAssetId) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enrollmentId,
      courseId,
      courseTitle,
      courseSlug,
      thumbnailAssetId,
      completionPercentage,
      lessonId,
      lessonTitle,
      positionSeconds,
      updatedAt);

  /// Create a copy of ContinueLearningDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinueLearningDtoImplCopyWith<_$ContinueLearningDtoImpl> get copyWith =>
      __$$ContinueLearningDtoImplCopyWithImpl<_$ContinueLearningDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinueLearningDtoImplToJson(
      this,
    );
  }
}

abstract class _ContinueLearningDto implements ContinueLearningDto {
  const factory _ContinueLearningDto(
          {@JsonKey(name: 'enrollment_id') required final String enrollmentId,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'course_title') required final String courseTitle,
          @JsonKey(name: 'course_slug') required final String courseSlug,
          @JsonKey(name: 'thumbnail_asset_id') final String? thumbnailAssetId,
          @JsonKey(name: 'completion_percentage')
          required final double completionPercentage,
          @JsonKey(name: 'lesson_id') required final String lessonId,
          @JsonKey(name: 'lesson_title') required final String lessonTitle,
          @JsonKey(name: 'position_seconds') required final int positionSeconds,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$ContinueLearningDtoImpl;

  factory _ContinueLearningDto.fromJson(Map<String, dynamic> json) =
      _$ContinueLearningDtoImpl.fromJson;

  @override
  @JsonKey(name: 'enrollment_id')
  String get enrollmentId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'course_slug')
  String get courseSlug;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId;
  @override
  @JsonKey(name: 'completion_percentage')
  double get completionPercentage;
  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'position_seconds')
  int get positionSeconds;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of ContinueLearningDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinueLearningDtoImplCopyWith<_$ContinueLearningDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardLiveClassDto _$DashboardLiveClassDtoFromJson(
    Map<String, dynamic> json) {
  return _DashboardLiveClassDto.fromJson(json);
}

/// @nodoc
mixin _$DashboardLiveClassDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this DashboardLiveClassDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardLiveClassDtoCopyWith<DashboardLiveClassDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardLiveClassDtoCopyWith<$Res> {
  factory $DashboardLiveClassDtoCopyWith(DashboardLiveClassDto value,
          $Res Function(DashboardLiveClassDto) then) =
      _$DashboardLiveClassDtoCopyWithImpl<$Res, DashboardLiveClassDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      String status});
}

/// @nodoc
class _$DashboardLiveClassDtoCopyWithImpl<$Res,
        $Val extends DashboardLiveClassDto>
    implements $DashboardLiveClassDtoCopyWith<$Res> {
  _$DashboardLiveClassDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardLiveClassDtoImplCopyWith<$Res>
    implements $DashboardLiveClassDtoCopyWith<$Res> {
  factory _$$DashboardLiveClassDtoImplCopyWith(
          _$DashboardLiveClassDtoImpl value,
          $Res Function(_$DashboardLiveClassDtoImpl) then) =
      __$$DashboardLiveClassDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      String status});
}

/// @nodoc
class __$$DashboardLiveClassDtoImplCopyWithImpl<$Res>
    extends _$DashboardLiveClassDtoCopyWithImpl<$Res,
        _$DashboardLiveClassDtoImpl>
    implements _$$DashboardLiveClassDtoImplCopyWith<$Res> {
  __$$DashboardLiveClassDtoImplCopyWithImpl(_$DashboardLiveClassDtoImpl _value,
      $Res Function(_$DashboardLiveClassDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? status = null,
  }) {
    return _then(_$DashboardLiveClassDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardLiveClassDtoImpl implements _DashboardLiveClassDto {
  const _$DashboardLiveClassDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      required this.title,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt,
      required this.status});

  factory _$DashboardLiveClassDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardLiveClassDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  final String title;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'scheduled_start_at')
  final DateTime scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  final DateTime scheduledEndAt;
  @override
  final String status;

  @override
  String toString() {
    return 'DashboardLiveClassDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardLiveClassDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.scheduledStartAt, scheduledStartAt) ||
                other.scheduledStartAt == scheduledStartAt) &&
            (identical(other.scheduledEndAt, scheduledEndAt) ||
                other.scheduledEndAt == scheduledEndAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, batchId, title,
      courseTitle, scheduledStartAt, scheduledEndAt, status);

  /// Create a copy of DashboardLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardLiveClassDtoImplCopyWith<_$DashboardLiveClassDtoImpl>
      get copyWith => __$$DashboardLiveClassDtoImplCopyWithImpl<
          _$DashboardLiveClassDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardLiveClassDtoImplToJson(
      this,
    );
  }
}

abstract class _DashboardLiveClassDto implements DashboardLiveClassDto {
  const factory _DashboardLiveClassDto(
      {required final String id,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      required final String title,
      @JsonKey(name: 'course_title') required final String courseTitle,
      @JsonKey(name: 'scheduled_start_at')
      required final DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required final DateTime scheduledEndAt,
      required final String status}) = _$DashboardLiveClassDtoImpl;

  factory _DashboardLiveClassDto.fromJson(Map<String, dynamic> json) =
      _$DashboardLiveClassDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  String get title;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt;
  @override
  String get status;

  /// Create a copy of DashboardLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardLiveClassDtoImplCopyWith<_$DashboardLiveClassDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardQuizDto _$DashboardQuizDtoFromJson(Map<String, dynamic> json) {
  return _DashboardQuizDto.fromJson(json);
}

/// @nodoc
mixin _$DashboardQuizDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil => throw _privateConstructorUsedError;

  /// Serializes this DashboardQuizDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardQuizDtoCopyWith<DashboardQuizDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardQuizDtoCopyWith<$Res> {
  factory $DashboardQuizDtoCopyWith(
          DashboardQuizDto value, $Res Function(DashboardQuizDto) then) =
      _$DashboardQuizDtoCopyWithImpl<$Res, DashboardQuizDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'available_until') DateTime? availableUntil});
}

/// @nodoc
class _$DashboardQuizDtoCopyWithImpl<$Res, $Val extends DashboardQuizDto>
    implements $DashboardQuizDtoCopyWith<$Res> {
  _$DashboardQuizDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? availableUntil = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardQuizDtoImplCopyWith<$Res>
    implements $DashboardQuizDtoCopyWith<$Res> {
  factory _$$DashboardQuizDtoImplCopyWith(_$DashboardQuizDtoImpl value,
          $Res Function(_$DashboardQuizDtoImpl) then) =
      __$$DashboardQuizDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'available_until') DateTime? availableUntil});
}

/// @nodoc
class __$$DashboardQuizDtoImplCopyWithImpl<$Res>
    extends _$DashboardQuizDtoCopyWithImpl<$Res, _$DashboardQuizDtoImpl>
    implements _$$DashboardQuizDtoImplCopyWith<$Res> {
  __$$DashboardQuizDtoImplCopyWithImpl(_$DashboardQuizDtoImpl _value,
      $Res Function(_$DashboardQuizDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? availableUntil = freezed,
  }) {
    return _then(_$DashboardQuizDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardQuizDtoImpl implements _DashboardQuizDto {
  const _$DashboardQuizDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      required this.title,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'available_until') this.availableUntil});

  factory _$DashboardQuizDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardQuizDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  final String title;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'available_until')
  final DateTime? availableUntil;

  @override
  String toString() {
    return 'DashboardQuizDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, availableUntil: $availableUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardQuizDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.availableUntil, availableUntil) ||
                other.availableUntil == availableUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courseId, batchId, title, courseTitle, availableUntil);

  /// Create a copy of DashboardQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardQuizDtoImplCopyWith<_$DashboardQuizDtoImpl> get copyWith =>
      __$$DashboardQuizDtoImplCopyWithImpl<_$DashboardQuizDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardQuizDtoImplToJson(
      this,
    );
  }
}

abstract class _DashboardQuizDto implements DashboardQuizDto {
  const factory _DashboardQuizDto(
          {required final String id,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'batch_id') final String? batchId,
          required final String title,
          @JsonKey(name: 'course_title') required final String courseTitle,
          @JsonKey(name: 'available_until') final DateTime? availableUntil}) =
      _$DashboardQuizDtoImpl;

  factory _DashboardQuizDto.fromJson(Map<String, dynamic> json) =
      _$DashboardQuizDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  String get title;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil;

  /// Create a copy of DashboardQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardQuizDtoImplCopyWith<_$DashboardQuizDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardAssignmentDto _$DashboardAssignmentDtoFromJson(
    Map<String, dynamic> json) {
  return _DashboardAssignmentDto.fromJson(json);
}

/// @nodoc
mixin _$DashboardAssignmentDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_at')
  DateTime get dueAt => throw _privateConstructorUsedError;

  /// Serializes this DashboardAssignmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardAssignmentDtoCopyWith<DashboardAssignmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardAssignmentDtoCopyWith<$Res> {
  factory $DashboardAssignmentDtoCopyWith(DashboardAssignmentDto value,
          $Res Function(DashboardAssignmentDto) then) =
      _$DashboardAssignmentDtoCopyWithImpl<$Res, DashboardAssignmentDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'due_at') DateTime dueAt});
}

/// @nodoc
class _$DashboardAssignmentDtoCopyWithImpl<$Res,
        $Val extends DashboardAssignmentDto>
    implements $DashboardAssignmentDtoCopyWith<$Res> {
  _$DashboardAssignmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? dueAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardAssignmentDtoImplCopyWith<$Res>
    implements $DashboardAssignmentDtoCopyWith<$Res> {
  factory _$$DashboardAssignmentDtoImplCopyWith(
          _$DashboardAssignmentDtoImpl value,
          $Res Function(_$DashboardAssignmentDtoImpl) then) =
      __$$DashboardAssignmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'due_at') DateTime dueAt});
}

/// @nodoc
class __$$DashboardAssignmentDtoImplCopyWithImpl<$Res>
    extends _$DashboardAssignmentDtoCopyWithImpl<$Res,
        _$DashboardAssignmentDtoImpl>
    implements _$$DashboardAssignmentDtoImplCopyWith<$Res> {
  __$$DashboardAssignmentDtoImplCopyWithImpl(
      _$DashboardAssignmentDtoImpl _value,
      $Res Function(_$DashboardAssignmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? courseTitle = null,
    Object? dueAt = null,
  }) {
    return _then(_$DashboardAssignmentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardAssignmentDtoImpl implements _DashboardAssignmentDto {
  const _$DashboardAssignmentDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      required this.title,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'due_at') required this.dueAt});

  factory _$DashboardAssignmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardAssignmentDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  final String title;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'due_at')
  final DateTime dueAt;

  @override
  String toString() {
    return 'DashboardAssignmentDto(id: $id, courseId: $courseId, batchId: $batchId, title: $title, courseTitle: $courseTitle, dueAt: $dueAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardAssignmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courseId, batchId, title, courseTitle, dueAt);

  /// Create a copy of DashboardAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardAssignmentDtoImplCopyWith<_$DashboardAssignmentDtoImpl>
      get copyWith => __$$DashboardAssignmentDtoImplCopyWithImpl<
          _$DashboardAssignmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardAssignmentDtoImplToJson(
      this,
    );
  }
}

abstract class _DashboardAssignmentDto implements DashboardAssignmentDto {
  const factory _DashboardAssignmentDto(
          {required final String id,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'batch_id') final String? batchId,
          required final String title,
          @JsonKey(name: 'course_title') required final String courseTitle,
          @JsonKey(name: 'due_at') required final DateTime dueAt}) =
      _$DashboardAssignmentDtoImpl;

  factory _DashboardAssignmentDto.fromJson(Map<String, dynamic> json) =
      _$DashboardAssignmentDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  String get title;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'due_at')
  DateTime get dueAt;

  /// Create a copy of DashboardAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardAssignmentDtoImplCopyWith<_$DashboardAssignmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardResultDto _$DashboardResultDtoFromJson(Map<String, dynamic> json) {
  return _DashboardResultDto.fromJson(json);
}

/// @nodoc
mixin _$DashboardResultDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_percentage')
  double get finalPercentage => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculated_at')
  DateTime get calculatedAt => throw _privateConstructorUsedError;

  /// Serializes this DashboardResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardResultDtoCopyWith<DashboardResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResultDtoCopyWith<$Res> {
  factory $DashboardResultDtoCopyWith(
          DashboardResultDto value, $Res Function(DashboardResultDto) then) =
      _$DashboardResultDtoCopyWithImpl<$Res, DashboardResultDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'final_percentage') double finalPercentage,
      bool passed,
      @JsonKey(name: 'calculated_at') DateTime calculatedAt});
}

/// @nodoc
class _$DashboardResultDtoCopyWithImpl<$Res, $Val extends DashboardResultDto>
    implements $DashboardResultDtoCopyWith<$Res> {
  _$DashboardResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? finalPercentage = null,
    Object? passed = null,
    Object? calculatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      finalPercentage: null == finalPercentage
          ? _value.finalPercentage
          : finalPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardResultDtoImplCopyWith<$Res>
    implements $DashboardResultDtoCopyWith<$Res> {
  factory _$$DashboardResultDtoImplCopyWith(_$DashboardResultDtoImpl value,
          $Res Function(_$DashboardResultDtoImpl) then) =
      __$$DashboardResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'final_percentage') double finalPercentage,
      bool passed,
      @JsonKey(name: 'calculated_at') DateTime calculatedAt});
}

/// @nodoc
class __$$DashboardResultDtoImplCopyWithImpl<$Res>
    extends _$DashboardResultDtoCopyWithImpl<$Res, _$DashboardResultDtoImpl>
    implements _$$DashboardResultDtoImplCopyWith<$Res> {
  __$$DashboardResultDtoImplCopyWithImpl(_$DashboardResultDtoImpl _value,
      $Res Function(_$DashboardResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? finalPercentage = null,
    Object? passed = null,
    Object? calculatedAt = null,
  }) {
    return _then(_$DashboardResultDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      finalPercentage: null == finalPercentage
          ? _value.finalPercentage
          : finalPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardResultDtoImpl implements _DashboardResultDto {
  const _$DashboardResultDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'final_percentage') required this.finalPercentage,
      required this.passed,
      @JsonKey(name: 'calculated_at') required this.calculatedAt});

  factory _$DashboardResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardResultDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'final_percentage')
  final double finalPercentage;
  @override
  final bool passed;
  @override
  @JsonKey(name: 'calculated_at')
  final DateTime calculatedAt;

  @override
  String toString() {
    return 'DashboardResultDto(id: $id, courseId: $courseId, courseTitle: $courseTitle, finalPercentage: $finalPercentage, passed: $passed, calculatedAt: $calculatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardResultDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.finalPercentage, finalPercentage) ||
                other.finalPercentage == finalPercentage) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, courseTitle,
      finalPercentage, passed, calculatedAt);

  /// Create a copy of DashboardResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardResultDtoImplCopyWith<_$DashboardResultDtoImpl> get copyWith =>
      __$$DashboardResultDtoImplCopyWithImpl<_$DashboardResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardResultDtoImplToJson(
      this,
    );
  }
}

abstract class _DashboardResultDto implements DashboardResultDto {
  const factory _DashboardResultDto(
      {required final String id,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'course_title') required final String courseTitle,
      @JsonKey(name: 'final_percentage') required final double finalPercentage,
      required final bool passed,
      @JsonKey(name: 'calculated_at')
      required final DateTime calculatedAt}) = _$DashboardResultDtoImpl;

  factory _DashboardResultDto.fromJson(Map<String, dynamic> json) =
      _$DashboardResultDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'final_percentage')
  double get finalPercentage;
  @override
  bool get passed;
  @override
  @JsonKey(name: 'calculated_at')
  DateTime get calculatedAt;

  /// Create a copy of DashboardResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardResultDtoImplCopyWith<_$DashboardResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecommendedCourseDto _$RecommendedCourseDtoFromJson(Map<String, dynamic> json) {
  return _RecommendedCourseDto.fromJson(json);
}

/// @nodoc
mixin _$RecommendedCourseDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_minor')
  int get priceMinor => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'match_score')
  int get matchScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_on')
  List<String> get matchedOn => throw _privateConstructorUsedError;

  /// Serializes this RecommendedCourseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedCourseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedCourseDtoCopyWith<RecommendedCourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedCourseDtoCopyWith<$Res> {
  factory $RecommendedCourseDtoCopyWith(RecommendedCourseDto value,
          $Res Function(RecommendedCourseDto) then) =
      _$RecommendedCourseDtoCopyWithImpl<$Res, RecommendedCourseDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String slug,
      String description,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      String language,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      @JsonKey(name: 'published_at') DateTime? publishedAt,
      String reason,
      @JsonKey(name: 'match_score') int matchScore,
      @JsonKey(name: 'matched_on') List<String> matchedOn});
}

/// @nodoc
class _$RecommendedCourseDtoCopyWithImpl<$Res,
        $Val extends RecommendedCourseDto>
    implements $RecommendedCourseDtoCopyWith<$Res> {
  _$RecommendedCourseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedCourseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? thumbnailAssetId = freezed,
    Object? language = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? publishedAt = freezed,
    Object? reason = null,
    Object? matchScore = null,
    Object? matchedOn = null,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      priceMinor: null == priceMinor
          ? _value.priceMinor
          : priceMinor // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      matchScore: null == matchScore
          ? _value.matchScore
          : matchScore // ignore: cast_nullable_to_non_nullable
              as int,
      matchedOn: null == matchedOn
          ? _value.matchedOn
          : matchedOn // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendedCourseDtoImplCopyWith<$Res>
    implements $RecommendedCourseDtoCopyWith<$Res> {
  factory _$$RecommendedCourseDtoImplCopyWith(_$RecommendedCourseDtoImpl value,
          $Res Function(_$RecommendedCourseDtoImpl) then) =
      __$$RecommendedCourseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String slug,
      String description,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      String language,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      @JsonKey(name: 'published_at') DateTime? publishedAt,
      String reason,
      @JsonKey(name: 'match_score') int matchScore,
      @JsonKey(name: 'matched_on') List<String> matchedOn});
}

/// @nodoc
class __$$RecommendedCourseDtoImplCopyWithImpl<$Res>
    extends _$RecommendedCourseDtoCopyWithImpl<$Res, _$RecommendedCourseDtoImpl>
    implements _$$RecommendedCourseDtoImplCopyWith<$Res> {
  __$$RecommendedCourseDtoImplCopyWithImpl(_$RecommendedCourseDtoImpl _value,
      $Res Function(_$RecommendedCourseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedCourseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? thumbnailAssetId = freezed,
    Object? language = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? publishedAt = freezed,
    Object? reason = null,
    Object? matchScore = null,
    Object? matchedOn = null,
  }) {
    return _then(_$RecommendedCourseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      priceMinor: null == priceMinor
          ? _value.priceMinor
          : priceMinor // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      matchScore: null == matchScore
          ? _value.matchScore
          : matchScore // ignore: cast_nullable_to_non_nullable
              as int,
      matchedOn: null == matchedOn
          ? _value._matchedOn
          : matchedOn // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendedCourseDtoImpl implements _RecommendedCourseDto {
  const _$RecommendedCourseDtoImpl(
      {required this.id,
      required this.title,
      required this.slug,
      this.description = '',
      @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId,
      this.language = 'bn',
      @JsonKey(name: 'is_free') this.isFree = false,
      @JsonKey(name: 'price_minor') this.priceMinor = 0,
      this.currency = 'BDT',
      @JsonKey(name: 'published_at') this.publishedAt,
      this.reason = '',
      @JsonKey(name: 'match_score') this.matchScore = 0,
      @JsonKey(name: 'matched_on')
      final List<String> matchedOn = const <String>[]})
      : _matchedOn = matchedOn;

  factory _$RecommendedCourseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendedCourseDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String slug;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  final String? thumbnailAssetId;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  @JsonKey(name: 'price_minor')
  final int priceMinor;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey(name: 'match_score')
  final int matchScore;
  final List<String> _matchedOn;
  @override
  @JsonKey(name: 'matched_on')
  List<String> get matchedOn {
    if (_matchedOn is EqualUnmodifiableListView) return _matchedOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedOn);
  }

  @override
  String toString() {
    return 'RecommendedCourseDto(id: $id, title: $title, slug: $slug, description: $description, thumbnailAssetId: $thumbnailAssetId, language: $language, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, publishedAt: $publishedAt, reason: $reason, matchScore: $matchScore, matchedOn: $matchedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedCourseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailAssetId, thumbnailAssetId) ||
                other.thumbnailAssetId == thumbnailAssetId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.priceMinor, priceMinor) ||
                other.priceMinor == priceMinor) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.matchScore, matchScore) ||
                other.matchScore == matchScore) &&
            const DeepCollectionEquality()
                .equals(other._matchedOn, _matchedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      slug,
      description,
      thumbnailAssetId,
      language,
      isFree,
      priceMinor,
      currency,
      publishedAt,
      reason,
      matchScore,
      const DeepCollectionEquality().hash(_matchedOn));

  /// Create a copy of RecommendedCourseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedCourseDtoImplCopyWith<_$RecommendedCourseDtoImpl>
      get copyWith =>
          __$$RecommendedCourseDtoImplCopyWithImpl<_$RecommendedCourseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendedCourseDtoImplToJson(
      this,
    );
  }
}

abstract class _RecommendedCourseDto implements RecommendedCourseDto {
  const factory _RecommendedCourseDto(
          {required final String id,
          required final String title,
          required final String slug,
          final String description,
          @JsonKey(name: 'thumbnail_asset_id') final String? thumbnailAssetId,
          final String language,
          @JsonKey(name: 'is_free') final bool isFree,
          @JsonKey(name: 'price_minor') final int priceMinor,
          final String currency,
          @JsonKey(name: 'published_at') final DateTime? publishedAt,
          final String reason,
          @JsonKey(name: 'match_score') final int matchScore,
          @JsonKey(name: 'matched_on') final List<String> matchedOn}) =
      _$RecommendedCourseDtoImpl;

  factory _RecommendedCourseDto.fromJson(Map<String, dynamic> json) =
      _$RecommendedCourseDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId;
  @override
  String get language;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'price_minor')
  int get priceMinor;
  @override
  String get currency;
  @override
  @JsonKey(name: 'published_at')
  DateTime? get publishedAt;
  @override
  String get reason;
  @override
  @JsonKey(name: 'match_score')
  int get matchScore;
  @override
  @JsonKey(name: 'matched_on')
  List<String> get matchedOn;

  /// Create a copy of RecommendedCourseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedCourseDtoImplCopyWith<_$RecommendedCourseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentDashboardDto _$StudentDashboardDtoFromJson(Map<String, dynamic> json) {
  return _StudentDashboardDto.fromJson(json);
}

/// @nodoc
mixin _$StudentDashboardDto {
  @JsonKey(name: 'generated_at')
  DateTime get generatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'continue_learning')
  List<ContinueLearningDto> get continueLearning =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'upcoming_live_classes')
  List<DashboardLiveClassDto> get upcomingLiveClasses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'due_assignments')
  List<DashboardAssignmentDto> get dueAssignments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'available_quizzes')
  List<DashboardQuizDto> get availableQuizzes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'recent_results')
  List<DashboardResultDto> get recentResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_courses')
  List<RecommendedCourseDto> get recommendedCourses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_notification_count')
  int get unreadNotificationCount => throw _privateConstructorUsedError;

  /// Serializes this StudentDashboardDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentDashboardDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentDashboardDtoCopyWith<StudentDashboardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDashboardDtoCopyWith<$Res> {
  factory $StudentDashboardDtoCopyWith(
          StudentDashboardDto value, $Res Function(StudentDashboardDto) then) =
      _$StudentDashboardDtoCopyWithImpl<$Res, StudentDashboardDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'generated_at') DateTime generatedAt,
      @JsonKey(name: 'continue_learning')
      List<ContinueLearningDto> continueLearning,
      @JsonKey(name: 'upcoming_live_classes')
      List<DashboardLiveClassDto> upcomingLiveClasses,
      @JsonKey(name: 'due_assignments')
      List<DashboardAssignmentDto> dueAssignments,
      @JsonKey(name: 'available_quizzes')
      List<DashboardQuizDto> availableQuizzes,
      @JsonKey(name: 'recent_results') List<DashboardResultDto> recentResults,
      @JsonKey(name: 'recommended_courses')
      List<RecommendedCourseDto> recommendedCourses,
      @JsonKey(name: 'unread_notification_count') int unreadNotificationCount});
}

/// @nodoc
class _$StudentDashboardDtoCopyWithImpl<$Res, $Val extends StudentDashboardDto>
    implements $StudentDashboardDtoCopyWith<$Res> {
  _$StudentDashboardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentDashboardDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedAt = null,
    Object? continueLearning = null,
    Object? upcomingLiveClasses = null,
    Object? dueAssignments = null,
    Object? availableQuizzes = null,
    Object? recentResults = null,
    Object? recommendedCourses = null,
    Object? unreadNotificationCount = null,
  }) {
    return _then(_value.copyWith(
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      continueLearning: null == continueLearning
          ? _value.continueLearning
          : continueLearning // ignore: cast_nullable_to_non_nullable
              as List<ContinueLearningDto>,
      upcomingLiveClasses: null == upcomingLiveClasses
          ? _value.upcomingLiveClasses
          : upcomingLiveClasses // ignore: cast_nullable_to_non_nullable
              as List<DashboardLiveClassDto>,
      dueAssignments: null == dueAssignments
          ? _value.dueAssignments
          : dueAssignments // ignore: cast_nullable_to_non_nullable
              as List<DashboardAssignmentDto>,
      availableQuizzes: null == availableQuizzes
          ? _value.availableQuizzes
          : availableQuizzes // ignore: cast_nullable_to_non_nullable
              as List<DashboardQuizDto>,
      recentResults: null == recentResults
          ? _value.recentResults
          : recentResults // ignore: cast_nullable_to_non_nullable
              as List<DashboardResultDto>,
      recommendedCourses: null == recommendedCourses
          ? _value.recommendedCourses
          : recommendedCourses // ignore: cast_nullable_to_non_nullable
              as List<RecommendedCourseDto>,
      unreadNotificationCount: null == unreadNotificationCount
          ? _value.unreadNotificationCount
          : unreadNotificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDashboardDtoImplCopyWith<$Res>
    implements $StudentDashboardDtoCopyWith<$Res> {
  factory _$$StudentDashboardDtoImplCopyWith(_$StudentDashboardDtoImpl value,
          $Res Function(_$StudentDashboardDtoImpl) then) =
      __$$StudentDashboardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'generated_at') DateTime generatedAt,
      @JsonKey(name: 'continue_learning')
      List<ContinueLearningDto> continueLearning,
      @JsonKey(name: 'upcoming_live_classes')
      List<DashboardLiveClassDto> upcomingLiveClasses,
      @JsonKey(name: 'due_assignments')
      List<DashboardAssignmentDto> dueAssignments,
      @JsonKey(name: 'available_quizzes')
      List<DashboardQuizDto> availableQuizzes,
      @JsonKey(name: 'recent_results') List<DashboardResultDto> recentResults,
      @JsonKey(name: 'recommended_courses')
      List<RecommendedCourseDto> recommendedCourses,
      @JsonKey(name: 'unread_notification_count') int unreadNotificationCount});
}

/// @nodoc
class __$$StudentDashboardDtoImplCopyWithImpl<$Res>
    extends _$StudentDashboardDtoCopyWithImpl<$Res, _$StudentDashboardDtoImpl>
    implements _$$StudentDashboardDtoImplCopyWith<$Res> {
  __$$StudentDashboardDtoImplCopyWithImpl(_$StudentDashboardDtoImpl _value,
      $Res Function(_$StudentDashboardDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentDashboardDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedAt = null,
    Object? continueLearning = null,
    Object? upcomingLiveClasses = null,
    Object? dueAssignments = null,
    Object? availableQuizzes = null,
    Object? recentResults = null,
    Object? recommendedCourses = null,
    Object? unreadNotificationCount = null,
  }) {
    return _then(_$StudentDashboardDtoImpl(
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      continueLearning: null == continueLearning
          ? _value._continueLearning
          : continueLearning // ignore: cast_nullable_to_non_nullable
              as List<ContinueLearningDto>,
      upcomingLiveClasses: null == upcomingLiveClasses
          ? _value._upcomingLiveClasses
          : upcomingLiveClasses // ignore: cast_nullable_to_non_nullable
              as List<DashboardLiveClassDto>,
      dueAssignments: null == dueAssignments
          ? _value._dueAssignments
          : dueAssignments // ignore: cast_nullable_to_non_nullable
              as List<DashboardAssignmentDto>,
      availableQuizzes: null == availableQuizzes
          ? _value._availableQuizzes
          : availableQuizzes // ignore: cast_nullable_to_non_nullable
              as List<DashboardQuizDto>,
      recentResults: null == recentResults
          ? _value._recentResults
          : recentResults // ignore: cast_nullable_to_non_nullable
              as List<DashboardResultDto>,
      recommendedCourses: null == recommendedCourses
          ? _value._recommendedCourses
          : recommendedCourses // ignore: cast_nullable_to_non_nullable
              as List<RecommendedCourseDto>,
      unreadNotificationCount: null == unreadNotificationCount
          ? _value.unreadNotificationCount
          : unreadNotificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDashboardDtoImpl implements _StudentDashboardDto {
  const _$StudentDashboardDtoImpl(
      {@JsonKey(name: 'generated_at') required this.generatedAt,
      @JsonKey(name: 'continue_learning')
      final List<ContinueLearningDto> continueLearning =
          const <ContinueLearningDto>[],
      @JsonKey(name: 'upcoming_live_classes')
      final List<DashboardLiveClassDto> upcomingLiveClasses =
          const <DashboardLiveClassDto>[],
      @JsonKey(name: 'due_assignments')
      final List<DashboardAssignmentDto> dueAssignments =
          const <DashboardAssignmentDto>[],
      @JsonKey(name: 'available_quizzes')
      final List<DashboardQuizDto> availableQuizzes =
          const <DashboardQuizDto>[],
      @JsonKey(name: 'recent_results')
      final List<DashboardResultDto>
          recentResults = const <DashboardResultDto>[],
      @JsonKey(name: 'recommended_courses')
      final List<RecommendedCourseDto> recommendedCourses =
          const <RecommendedCourseDto>[],
      @JsonKey(name: 'unread_notification_count')
      this.unreadNotificationCount = 0})
      : _continueLearning = continueLearning,
        _upcomingLiveClasses = upcomingLiveClasses,
        _dueAssignments = dueAssignments,
        _availableQuizzes = availableQuizzes,
        _recentResults = recentResults,
        _recommendedCourses = recommendedCourses;

  factory _$StudentDashboardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDashboardDtoImplFromJson(json);

  @override
  @JsonKey(name: 'generated_at')
  final DateTime generatedAt;
  final List<ContinueLearningDto> _continueLearning;
  @override
  @JsonKey(name: 'continue_learning')
  List<ContinueLearningDto> get continueLearning {
    if (_continueLearning is EqualUnmodifiableListView)
      return _continueLearning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_continueLearning);
  }

  final List<DashboardLiveClassDto> _upcomingLiveClasses;
  @override
  @JsonKey(name: 'upcoming_live_classes')
  List<DashboardLiveClassDto> get upcomingLiveClasses {
    if (_upcomingLiveClasses is EqualUnmodifiableListView)
      return _upcomingLiveClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingLiveClasses);
  }

  final List<DashboardAssignmentDto> _dueAssignments;
  @override
  @JsonKey(name: 'due_assignments')
  List<DashboardAssignmentDto> get dueAssignments {
    if (_dueAssignments is EqualUnmodifiableListView) return _dueAssignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dueAssignments);
  }

  final List<DashboardQuizDto> _availableQuizzes;
  @override
  @JsonKey(name: 'available_quizzes')
  List<DashboardQuizDto> get availableQuizzes {
    if (_availableQuizzes is EqualUnmodifiableListView)
      return _availableQuizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableQuizzes);
  }

  final List<DashboardResultDto> _recentResults;
  @override
  @JsonKey(name: 'recent_results')
  List<DashboardResultDto> get recentResults {
    if (_recentResults is EqualUnmodifiableListView) return _recentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentResults);
  }

  final List<RecommendedCourseDto> _recommendedCourses;
  @override
  @JsonKey(name: 'recommended_courses')
  List<RecommendedCourseDto> get recommendedCourses {
    if (_recommendedCourses is EqualUnmodifiableListView)
      return _recommendedCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedCourses);
  }

  @override
  @JsonKey(name: 'unread_notification_count')
  final int unreadNotificationCount;

  @override
  String toString() {
    return 'StudentDashboardDto(generatedAt: $generatedAt, continueLearning: $continueLearning, upcomingLiveClasses: $upcomingLiveClasses, dueAssignments: $dueAssignments, availableQuizzes: $availableQuizzes, recentResults: $recentResults, recommendedCourses: $recommendedCourses, unreadNotificationCount: $unreadNotificationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDashboardDtoImpl &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            const DeepCollectionEquality()
                .equals(other._continueLearning, _continueLearning) &&
            const DeepCollectionEquality()
                .equals(other._upcomingLiveClasses, _upcomingLiveClasses) &&
            const DeepCollectionEquality()
                .equals(other._dueAssignments, _dueAssignments) &&
            const DeepCollectionEquality()
                .equals(other._availableQuizzes, _availableQuizzes) &&
            const DeepCollectionEquality()
                .equals(other._recentResults, _recentResults) &&
            const DeepCollectionEquality()
                .equals(other._recommendedCourses, _recommendedCourses) &&
            (identical(
                    other.unreadNotificationCount, unreadNotificationCount) ||
                other.unreadNotificationCount == unreadNotificationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      generatedAt,
      const DeepCollectionEquality().hash(_continueLearning),
      const DeepCollectionEquality().hash(_upcomingLiveClasses),
      const DeepCollectionEquality().hash(_dueAssignments),
      const DeepCollectionEquality().hash(_availableQuizzes),
      const DeepCollectionEquality().hash(_recentResults),
      const DeepCollectionEquality().hash(_recommendedCourses),
      unreadNotificationCount);

  /// Create a copy of StudentDashboardDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDashboardDtoImplCopyWith<_$StudentDashboardDtoImpl> get copyWith =>
      __$$StudentDashboardDtoImplCopyWithImpl<_$StudentDashboardDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDashboardDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentDashboardDto implements StudentDashboardDto {
  const factory _StudentDashboardDto(
      {@JsonKey(name: 'generated_at') required final DateTime generatedAt,
      @JsonKey(name: 'continue_learning')
      final List<ContinueLearningDto> continueLearning,
      @JsonKey(name: 'upcoming_live_classes')
      final List<DashboardLiveClassDto> upcomingLiveClasses,
      @JsonKey(name: 'due_assignments')
      final List<DashboardAssignmentDto> dueAssignments,
      @JsonKey(name: 'available_quizzes')
      final List<DashboardQuizDto> availableQuizzes,
      @JsonKey(name: 'recent_results')
      final List<DashboardResultDto> recentResults,
      @JsonKey(name: 'recommended_courses')
      final List<RecommendedCourseDto> recommendedCourses,
      @JsonKey(name: 'unread_notification_count')
      final int unreadNotificationCount}) = _$StudentDashboardDtoImpl;

  factory _StudentDashboardDto.fromJson(Map<String, dynamic> json) =
      _$StudentDashboardDtoImpl.fromJson;

  @override
  @JsonKey(name: 'generated_at')
  DateTime get generatedAt;
  @override
  @JsonKey(name: 'continue_learning')
  List<ContinueLearningDto> get continueLearning;
  @override
  @JsonKey(name: 'upcoming_live_classes')
  List<DashboardLiveClassDto> get upcomingLiveClasses;
  @override
  @JsonKey(name: 'due_assignments')
  List<DashboardAssignmentDto> get dueAssignments;
  @override
  @JsonKey(name: 'available_quizzes')
  List<DashboardQuizDto> get availableQuizzes;
  @override
  @JsonKey(name: 'recent_results')
  List<DashboardResultDto> get recentResults;
  @override
  @JsonKey(name: 'recommended_courses')
  List<RecommendedCourseDto> get recommendedCourses;
  @override
  @JsonKey(name: 'unread_notification_count')
  int get unreadNotificationCount;

  /// Create a copy of StudentDashboardDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDashboardDtoImplCopyWith<_$StudentDashboardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentLiveClassDto _$StudentLiveClassDtoFromJson(Map<String, dynamic> json) {
  return _StudentLiveClassDto.fromJson(json);
}

/// @nodoc
mixin _$StudentLiveClassDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;

  /// Serializes this StudentLiveClassDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentLiveClassDtoCopyWith<StudentLiveClassDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLiveClassDtoCopyWith<$Res> {
  factory $StudentLiveClassDtoCopyWith(
          StudentLiveClassDto value, $Res Function(StudentLiveClassDto) then) =
      _$StudentLiveClassDtoCopyWithImpl<$Res, StudentLiveClassDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      String description,
      String status,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'course_title') String courseTitle});
}

/// @nodoc
class _$StudentLiveClassDtoCopyWithImpl<$Res, $Val extends StudentLiveClassDto>
    implements $StudentLiveClassDtoCopyWith<$Res> {
  _$StudentLiveClassDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? courseTitle = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentLiveClassDtoImplCopyWith<$Res>
    implements $StudentLiveClassDtoCopyWith<$Res> {
  factory _$$StudentLiveClassDtoImplCopyWith(_$StudentLiveClassDtoImpl value,
          $Res Function(_$StudentLiveClassDtoImpl) then) =
      __$$StudentLiveClassDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      String description,
      String status,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'course_title') String courseTitle});
}

/// @nodoc
class __$$StudentLiveClassDtoImplCopyWithImpl<$Res>
    extends _$StudentLiveClassDtoCopyWithImpl<$Res, _$StudentLiveClassDtoImpl>
    implements _$$StudentLiveClassDtoImplCopyWith<$Res> {
  __$$StudentLiveClassDtoImplCopyWithImpl(_$StudentLiveClassDtoImpl _value,
      $Res Function(_$StudentLiveClassDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? courseTitle = null,
  }) {
    return _then(_$StudentLiveClassDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLiveClassDtoImpl implements _StudentLiveClassDto {
  const _$StudentLiveClassDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      required this.title,
      this.description = '',
      required this.status,
      @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'course_title') required this.courseTitle});

  factory _$StudentLiveClassDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentLiveClassDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final String status;
  @override
  @JsonKey(name: 'scheduled_start_at')
  final DateTime scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  final DateTime scheduledEndAt;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;

  @override
  String toString() {
    return 'StudentLiveClassDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, title: $title, description: $description, status: $status, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, startedAt: $startedAt, endedAt: $endedAt, courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLiveClassDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.scheduledStartAt, scheduledStartAt) ||
                other.scheduledStartAt == scheduledStartAt) &&
            (identical(other.scheduledEndAt, scheduledEndAt) ||
                other.scheduledEndAt == scheduledEndAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      courseId,
      batchId,
      title,
      description,
      status,
      scheduledStartAt,
      scheduledEndAt,
      startedAt,
      endedAt,
      courseTitle);

  /// Create a copy of StudentLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLiveClassDtoImplCopyWith<_$StudentLiveClassDtoImpl> get copyWith =>
      __$$StudentLiveClassDtoImplCopyWithImpl<_$StudentLiveClassDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLiveClassDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentLiveClassDto implements StudentLiveClassDto {
  const factory _StudentLiveClassDto(
      {required final String id,
      @JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      required final String title,
      final String description,
      required final String status,
      @JsonKey(name: 'scheduled_start_at')
      required final DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required final DateTime scheduledEndAt,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'course_title')
      required final String courseTitle}) = _$StudentLiveClassDtoImpl;

  factory _StudentLiveClassDto.fromJson(Map<String, dynamic> json) =
      _$StudentLiveClassDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get status;
  @override
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;

  /// Create a copy of StudentLiveClassDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentLiveClassDtoImplCopyWith<_$StudentLiveClassDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentQuizDto _$StudentQuizDtoFromJson(Map<String, dynamic> json) {
  return _StudentQuizDto.fromJson(json);
}

/// @nodoc
mixin _$StudentQuizDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String? get lessonId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempts_used')
  int get attemptsUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'pass_percentage')
  double get passPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_from')
  DateTime? get availableFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'results_visibility')
  String get resultsVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StudentQuizDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentQuizDtoCopyWith<StudentQuizDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentQuizDtoCopyWith<$Res> {
  factory $StudentQuizDtoCopyWith(
          StudentQuizDto value, $Res Function(StudentQuizDto) then) =
      _$StudentQuizDtoCopyWithImpl<$Res, StudentQuizDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String title,
      String instructions,
      @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'attempts_used') int attemptsUsed,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'available_from') DateTime? availableFrom,
      @JsonKey(name: 'available_until') DateTime? availableUntil,
      @JsonKey(name: 'results_visibility') String resultsVisibility,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StudentQuizDtoCopyWithImpl<$Res, $Val extends StudentQuizDto>
    implements $StudentQuizDtoCopyWith<$Res> {
  _$StudentQuizDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? lessonId = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? timeLimitSeconds = freezed,
    Object? attemptLimit = null,
    Object? attemptsUsed = null,
    Object? passPercentage = null,
    Object? availableFrom = freezed,
    Object? availableUntil = freezed,
    Object? resultsVisibility = null,
    Object? isRequired = null,
    Object? courseTitle = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: freezed == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      attemptsUsed: null == attemptsUsed
          ? _value.attemptsUsed
          : attemptsUsed // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultsVisibility: null == resultsVisibility
          ? _value.resultsVisibility
          : resultsVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentQuizDtoImplCopyWith<$Res>
    implements $StudentQuizDtoCopyWith<$Res> {
  factory _$$StudentQuizDtoImplCopyWith(_$StudentQuizDtoImpl value,
          $Res Function(_$StudentQuizDtoImpl) then) =
      __$$StudentQuizDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String title,
      String instructions,
      @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'attempts_used') int attemptsUsed,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'available_from') DateTime? availableFrom,
      @JsonKey(name: 'available_until') DateTime? availableUntil,
      @JsonKey(name: 'results_visibility') String resultsVisibility,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StudentQuizDtoImplCopyWithImpl<$Res>
    extends _$StudentQuizDtoCopyWithImpl<$Res, _$StudentQuizDtoImpl>
    implements _$$StudentQuizDtoImplCopyWith<$Res> {
  __$$StudentQuizDtoImplCopyWithImpl(
      _$StudentQuizDtoImpl _value, $Res Function(_$StudentQuizDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? lessonId = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? timeLimitSeconds = freezed,
    Object? attemptLimit = null,
    Object? attemptsUsed = null,
    Object? passPercentage = null,
    Object? availableFrom = freezed,
    Object? availableUntil = freezed,
    Object? resultsVisibility = null,
    Object? isRequired = null,
    Object? courseTitle = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentQuizDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: freezed == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      attemptsUsed: null == attemptsUsed
          ? _value.attemptsUsed
          : attemptsUsed // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultsVisibility: null == resultsVisibility
          ? _value.resultsVisibility
          : resultsVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentQuizDtoImpl implements _StudentQuizDto {
  const _$StudentQuizDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      @JsonKey(name: 'lesson_id') this.lessonId,
      required this.title,
      this.instructions = '',
      @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds,
      @JsonKey(name: 'attempt_limit') required this.attemptLimit,
      @JsonKey(name: 'attempts_used') this.attemptsUsed = 0,
      @JsonKey(name: 'pass_percentage') required this.passPercentage,
      @JsonKey(name: 'available_from') this.availableFrom,
      @JsonKey(name: 'available_until') this.availableUntil,
      @JsonKey(name: 'results_visibility') required this.resultsVisibility,
      @JsonKey(name: 'is_required') this.isRequired = false,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StudentQuizDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentQuizDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  @JsonKey(name: 'lesson_id')
  final String? lessonId;
  @override
  final String title;
  @override
  @JsonKey()
  final String instructions;
  @override
  @JsonKey(name: 'time_limit_seconds')
  final int? timeLimitSeconds;
  @override
  @JsonKey(name: 'attempt_limit')
  final int attemptLimit;
  @override
  @JsonKey(name: 'attempts_used')
  final int attemptsUsed;
  @override
  @JsonKey(name: 'pass_percentage')
  final double passPercentage;
  @override
  @JsonKey(name: 'available_from')
  final DateTime? availableFrom;
  @override
  @JsonKey(name: 'available_until')
  final DateTime? availableUntil;
  @override
  @JsonKey(name: 'results_visibility')
  final String resultsVisibility;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudentQuizDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired, courseTitle: $courseTitle, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentQuizDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            (identical(other.attemptLimit, attemptLimit) ||
                other.attemptLimit == attemptLimit) &&
            (identical(other.attemptsUsed, attemptsUsed) ||
                other.attemptsUsed == attemptsUsed) &&
            (identical(other.passPercentage, passPercentage) ||
                other.passPercentage == passPercentage) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableUntil, availableUntil) ||
                other.availableUntil == availableUntil) &&
            (identical(other.resultsVisibility, resultsVisibility) ||
                other.resultsVisibility == resultsVisibility) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      courseId,
      batchId,
      lessonId,
      title,
      instructions,
      timeLimitSeconds,
      attemptLimit,
      attemptsUsed,
      passPercentage,
      availableFrom,
      availableUntil,
      resultsVisibility,
      isRequired,
      courseTitle,
      createdAt,
      updatedAt);

  /// Create a copy of StudentQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentQuizDtoImplCopyWith<_$StudentQuizDtoImpl> get copyWith =>
      __$$StudentQuizDtoImplCopyWithImpl<_$StudentQuizDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentQuizDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentQuizDto implements StudentQuizDto {
  const factory _StudentQuizDto(
      {required final String id,
      @JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      @JsonKey(name: 'lesson_id') final String? lessonId,
      required final String title,
      final String instructions,
      @JsonKey(name: 'time_limit_seconds') final int? timeLimitSeconds,
      @JsonKey(name: 'attempt_limit') required final int attemptLimit,
      @JsonKey(name: 'attempts_used') final int attemptsUsed,
      @JsonKey(name: 'pass_percentage') required final double passPercentage,
      @JsonKey(name: 'available_from') final DateTime? availableFrom,
      @JsonKey(name: 'available_until') final DateTime? availableUntil,
      @JsonKey(name: 'results_visibility')
      required final String resultsVisibility,
      @JsonKey(name: 'is_required') final bool isRequired,
      @JsonKey(name: 'course_title') required final String courseTitle,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$StudentQuizDtoImpl;

  factory _StudentQuizDto.fromJson(Map<String, dynamic> json) =
      _$StudentQuizDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  @JsonKey(name: 'lesson_id')
  String? get lessonId;
  @override
  String get title;
  @override
  String get instructions;
  @override
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds;
  @override
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit;
  @override
  @JsonKey(name: 'attempts_used')
  int get attemptsUsed;
  @override
  @JsonKey(name: 'pass_percentage')
  double get passPercentage;
  @override
  @JsonKey(name: 'available_from')
  DateTime? get availableFrom;
  @override
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil;
  @override
  @JsonKey(name: 'results_visibility')
  String get resultsVisibility;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of StudentQuizDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentQuizDtoImplCopyWith<_$StudentQuizDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentAssignmentDto _$StudentAssignmentDtoFromJson(Map<String, dynamic> json) {
  return _StudentAssignmentDto.fromJson(json);
}

/// @nodoc
mixin _$StudentAssignmentDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String? get lessonId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_at')
  DateTime? get dueAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_score')
  double get maximumScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'passing_score')
  double get passingScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_file_types')
  List<String> get allowedFileTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_submissions')
  int get maximumSubmissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_id')
  String? get submissionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_status')
  String get submissionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_at')
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StudentAssignmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAssignmentDtoCopyWith<StudentAssignmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAssignmentDtoCopyWith<$Res> {
  factory $StudentAssignmentDtoCopyWith(StudentAssignmentDto value,
          $Res Function(StudentAssignmentDto) then) =
      _$StudentAssignmentDtoCopyWithImpl<$Res, StudentAssignmentDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String title,
      String instructions,
      @JsonKey(name: 'due_at') DateTime? dueAt,
      @JsonKey(name: 'maximum_score') double maximumScore,
      @JsonKey(name: 'passing_score') double passingScore,
      @JsonKey(name: 'allowed_file_types') List<String> allowedFileTypes,
      @JsonKey(name: 'maximum_submissions') int maximumSubmissions,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'submission_id') String? submissionId,
      @JsonKey(name: 'submission_status') String submissionStatus,
      @JsonKey(name: 'submitted_at') DateTime? submittedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StudentAssignmentDtoCopyWithImpl<$Res,
        $Val extends StudentAssignmentDto>
    implements $StudentAssignmentDtoCopyWith<$Res> {
  _$StudentAssignmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? lessonId = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? dueAt = freezed,
    Object? maximumScore = null,
    Object? passingScore = null,
    Object? allowedFileTypes = null,
    Object? maximumSubmissions = null,
    Object? isRequired = null,
    Object? courseTitle = null,
    Object? submissionId = freezed,
    Object? submissionStatus = null,
    Object? submittedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maximumScore: null == maximumScore
          ? _value.maximumScore
          : maximumScore // ignore: cast_nullable_to_non_nullable
              as double,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as double,
      allowedFileTypes: null == allowedFileTypes
          ? _value.allowedFileTypes
          : allowedFileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maximumSubmissions: null == maximumSubmissions
          ? _value.maximumSubmissions
          : maximumSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      submissionId: freezed == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentAssignmentDtoImplCopyWith<$Res>
    implements $StudentAssignmentDtoCopyWith<$Res> {
  factory _$$StudentAssignmentDtoImplCopyWith(_$StudentAssignmentDtoImpl value,
          $Res Function(_$StudentAssignmentDtoImpl) then) =
      __$$StudentAssignmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String title,
      String instructions,
      @JsonKey(name: 'due_at') DateTime? dueAt,
      @JsonKey(name: 'maximum_score') double maximumScore,
      @JsonKey(name: 'passing_score') double passingScore,
      @JsonKey(name: 'allowed_file_types') List<String> allowedFileTypes,
      @JsonKey(name: 'maximum_submissions') int maximumSubmissions,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'submission_id') String? submissionId,
      @JsonKey(name: 'submission_status') String submissionStatus,
      @JsonKey(name: 'submitted_at') DateTime? submittedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StudentAssignmentDtoImplCopyWithImpl<$Res>
    extends _$StudentAssignmentDtoCopyWithImpl<$Res, _$StudentAssignmentDtoImpl>
    implements _$$StudentAssignmentDtoImplCopyWith<$Res> {
  __$$StudentAssignmentDtoImplCopyWithImpl(_$StudentAssignmentDtoImpl _value,
      $Res Function(_$StudentAssignmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? lessonId = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? dueAt = freezed,
    Object? maximumScore = null,
    Object? passingScore = null,
    Object? allowedFileTypes = null,
    Object? maximumSubmissions = null,
    Object? isRequired = null,
    Object? courseTitle = null,
    Object? submissionId = freezed,
    Object? submissionStatus = null,
    Object? submittedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentAssignmentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maximumScore: null == maximumScore
          ? _value.maximumScore
          : maximumScore // ignore: cast_nullable_to_non_nullable
              as double,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as double,
      allowedFileTypes: null == allowedFileTypes
          ? _value._allowedFileTypes
          : allowedFileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maximumSubmissions: null == maximumSubmissions
          ? _value.maximumSubmissions
          : maximumSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      submissionId: freezed == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAssignmentDtoImpl implements _StudentAssignmentDto {
  const _$StudentAssignmentDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      @JsonKey(name: 'lesson_id') this.lessonId,
      required this.title,
      this.instructions = '',
      @JsonKey(name: 'due_at') this.dueAt,
      @JsonKey(name: 'maximum_score') required this.maximumScore,
      @JsonKey(name: 'passing_score') required this.passingScore,
      @JsonKey(name: 'allowed_file_types')
      final List<String> allowedFileTypes = const <String>[],
      @JsonKey(name: 'maximum_submissions') this.maximumSubmissions = 1,
      @JsonKey(name: 'is_required') this.isRequired = false,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'submission_id') this.submissionId,
      @JsonKey(name: 'submission_status') required this.submissionStatus,
      @JsonKey(name: 'submitted_at') this.submittedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _allowedFileTypes = allowedFileTypes;

  factory _$StudentAssignmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAssignmentDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  @JsonKey(name: 'lesson_id')
  final String? lessonId;
  @override
  final String title;
  @override
  @JsonKey()
  final String instructions;
  @override
  @JsonKey(name: 'due_at')
  final DateTime? dueAt;
  @override
  @JsonKey(name: 'maximum_score')
  final double maximumScore;
  @override
  @JsonKey(name: 'passing_score')
  final double passingScore;
  final List<String> _allowedFileTypes;
  @override
  @JsonKey(name: 'allowed_file_types')
  List<String> get allowedFileTypes {
    if (_allowedFileTypes is EqualUnmodifiableListView)
      return _allowedFileTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedFileTypes);
  }

  @override
  @JsonKey(name: 'maximum_submissions')
  final int maximumSubmissions;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'submission_id')
  final String? submissionId;
  @override
  @JsonKey(name: 'submission_status')
  final String submissionStatus;
  @override
  @JsonKey(name: 'submitted_at')
  final DateTime? submittedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudentAssignmentDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, lessonId: $lessonId, title: $title, instructions: $instructions, dueAt: $dueAt, maximumScore: $maximumScore, passingScore: $passingScore, allowedFileTypes: $allowedFileTypes, maximumSubmissions: $maximumSubmissions, isRequired: $isRequired, courseTitle: $courseTitle, submissionId: $submissionId, submissionStatus: $submissionStatus, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAssignmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.maximumScore, maximumScore) ||
                other.maximumScore == maximumScore) &&
            (identical(other.passingScore, passingScore) ||
                other.passingScore == passingScore) &&
            const DeepCollectionEquality()
                .equals(other._allowedFileTypes, _allowedFileTypes) &&
            (identical(other.maximumSubmissions, maximumSubmissions) ||
                other.maximumSubmissions == maximumSubmissions) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        courseId,
        batchId,
        lessonId,
        title,
        instructions,
        dueAt,
        maximumScore,
        passingScore,
        const DeepCollectionEquality().hash(_allowedFileTypes),
        maximumSubmissions,
        isRequired,
        courseTitle,
        submissionId,
        submissionStatus,
        submittedAt,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of StudentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAssignmentDtoImplCopyWith<_$StudentAssignmentDtoImpl>
      get copyWith =>
          __$$StudentAssignmentDtoImplCopyWithImpl<_$StudentAssignmentDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAssignmentDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentAssignmentDto implements StudentAssignmentDto {
  const factory _StudentAssignmentDto(
      {required final String id,
      @JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      @JsonKey(name: 'lesson_id') final String? lessonId,
      required final String title,
      final String instructions,
      @JsonKey(name: 'due_at') final DateTime? dueAt,
      @JsonKey(name: 'maximum_score') required final double maximumScore,
      @JsonKey(name: 'passing_score') required final double passingScore,
      @JsonKey(name: 'allowed_file_types') final List<String> allowedFileTypes,
      @JsonKey(name: 'maximum_submissions') final int maximumSubmissions,
      @JsonKey(name: 'is_required') final bool isRequired,
      @JsonKey(name: 'course_title') required final String courseTitle,
      @JsonKey(name: 'submission_id') final String? submissionId,
      @JsonKey(name: 'submission_status')
      required final String submissionStatus,
      @JsonKey(name: 'submitted_at') final DateTime? submittedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$StudentAssignmentDtoImpl;

  factory _StudentAssignmentDto.fromJson(Map<String, dynamic> json) =
      _$StudentAssignmentDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  @JsonKey(name: 'lesson_id')
  String? get lessonId;
  @override
  String get title;
  @override
  String get instructions;
  @override
  @JsonKey(name: 'due_at')
  DateTime? get dueAt;
  @override
  @JsonKey(name: 'maximum_score')
  double get maximumScore;
  @override
  @JsonKey(name: 'passing_score')
  double get passingScore;
  @override
  @JsonKey(name: 'allowed_file_types')
  List<String> get allowedFileTypes;
  @override
  @JsonKey(name: 'maximum_submissions')
  int get maximumSubmissions;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'submission_id')
  String? get submissionId;
  @override
  @JsonKey(name: 'submission_status')
  String get submissionStatus;
  @override
  @JsonKey(name: 'submitted_at')
  DateTime? get submittedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of StudentAssignmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAssignmentDtoImplCopyWith<_$StudentAssignmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentSubmissionDto _$StudentSubmissionDtoFromJson(Map<String, dynamic> json) {
  return _StudentSubmissionDto.fromJson(json);
}

/// @nodoc
mixin _$StudentSubmissionDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignment_id')
  String get assignmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollment_id')
  String get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_number')
  int get submissionNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_content')
  String get textContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_at')
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignment_title')
  String get assignmentTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  double? get points => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StudentSubmissionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSubmissionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSubmissionDtoCopyWith<StudentSubmissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSubmissionDtoCopyWith<$Res> {
  factory $StudentSubmissionDtoCopyWith(StudentSubmissionDto value,
          $Res Function(StudentSubmissionDto) then) =
      _$StudentSubmissionDtoCopyWithImpl<$Res, StudentSubmissionDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'assignment_id') String assignmentId,
      @JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'submission_number') int submissionNumber,
      String status,
      @JsonKey(name: 'text_content') String textContent,
      @JsonKey(name: 'submitted_at') DateTime? submittedAt,
      @JsonKey(name: 'assignment_title') String assignmentTitle,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'course_title') String courseTitle,
      double? points,
      double? percentage,
      String? feedback,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StudentSubmissionDtoCopyWithImpl<$Res,
        $Val extends StudentSubmissionDto>
    implements $StudentSubmissionDtoCopyWith<$Res> {
  _$StudentSubmissionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSubmissionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assignmentId = null,
    Object? enrollmentId = null,
    Object? submissionNumber = null,
    Object? status = null,
    Object? textContent = null,
    Object? submittedAt = freezed,
    Object? assignmentTitle = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? courseTitle = null,
    Object? points = freezed,
    Object? percentage = freezed,
    Object? feedback = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentId: null == assignmentId
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as String,
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      submissionNumber: null == submissionNumber
          ? _value.submissionNumber
          : submissionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      textContent: null == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assignmentTitle: null == assignmentTitle
          ? _value.assignmentTitle
          : assignmentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentSubmissionDtoImplCopyWith<$Res>
    implements $StudentSubmissionDtoCopyWith<$Res> {
  factory _$$StudentSubmissionDtoImplCopyWith(_$StudentSubmissionDtoImpl value,
          $Res Function(_$StudentSubmissionDtoImpl) then) =
      __$$StudentSubmissionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'assignment_id') String assignmentId,
      @JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'submission_number') int submissionNumber,
      String status,
      @JsonKey(name: 'text_content') String textContent,
      @JsonKey(name: 'submitted_at') DateTime? submittedAt,
      @JsonKey(name: 'assignment_title') String assignmentTitle,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'course_title') String courseTitle,
      double? points,
      double? percentage,
      String? feedback,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StudentSubmissionDtoImplCopyWithImpl<$Res>
    extends _$StudentSubmissionDtoCopyWithImpl<$Res, _$StudentSubmissionDtoImpl>
    implements _$$StudentSubmissionDtoImplCopyWith<$Res> {
  __$$StudentSubmissionDtoImplCopyWithImpl(_$StudentSubmissionDtoImpl _value,
      $Res Function(_$StudentSubmissionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSubmissionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assignmentId = null,
    Object? enrollmentId = null,
    Object? submissionNumber = null,
    Object? status = null,
    Object? textContent = null,
    Object? submittedAt = freezed,
    Object? assignmentTitle = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? courseTitle = null,
    Object? points = freezed,
    Object? percentage = freezed,
    Object? feedback = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentSubmissionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentId: null == assignmentId
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as String,
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      submissionNumber: null == submissionNumber
          ? _value.submissionNumber
          : submissionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      textContent: null == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assignmentTitle: null == assignmentTitle
          ? _value.assignmentTitle
          : assignmentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentSubmissionDtoImpl implements _StudentSubmissionDto {
  const _$StudentSubmissionDtoImpl(
      {required this.id,
      @JsonKey(name: 'assignment_id') required this.assignmentId,
      @JsonKey(name: 'enrollment_id') required this.enrollmentId,
      @JsonKey(name: 'submission_number') required this.submissionNumber,
      required this.status,
      @JsonKey(name: 'text_content') this.textContent = '',
      @JsonKey(name: 'submitted_at') this.submittedAt,
      @JsonKey(name: 'assignment_title') required this.assignmentTitle,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      @JsonKey(name: 'course_title') required this.courseTitle,
      this.points,
      this.percentage,
      this.feedback,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StudentSubmissionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSubmissionDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'assignment_id')
  final String assignmentId;
  @override
  @JsonKey(name: 'enrollment_id')
  final String enrollmentId;
  @override
  @JsonKey(name: 'submission_number')
  final int submissionNumber;
  @override
  final String status;
  @override
  @JsonKey(name: 'text_content')
  final String textContent;
  @override
  @JsonKey(name: 'submitted_at')
  final DateTime? submittedAt;
  @override
  @JsonKey(name: 'assignment_title')
  final String assignmentTitle;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  final double? points;
  @override
  final double? percentage;
  @override
  final String? feedback;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudentSubmissionDto(id: $id, assignmentId: $assignmentId, enrollmentId: $enrollmentId, submissionNumber: $submissionNumber, status: $status, textContent: $textContent, submittedAt: $submittedAt, assignmentTitle: $assignmentTitle, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, points: $points, percentage: $percentage, feedback: $feedback, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSubmissionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assignmentId, assignmentId) ||
                other.assignmentId == assignmentId) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.submissionNumber, submissionNumber) ||
                other.submissionNumber == submissionNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.textContent, textContent) ||
                other.textContent == textContent) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.assignmentTitle, assignmentTitle) ||
                other.assignmentTitle == assignmentTitle) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      assignmentId,
      enrollmentId,
      submissionNumber,
      status,
      textContent,
      submittedAt,
      assignmentTitle,
      courseId,
      batchId,
      courseTitle,
      points,
      percentage,
      feedback,
      createdAt,
      updatedAt);

  /// Create a copy of StudentSubmissionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSubmissionDtoImplCopyWith<_$StudentSubmissionDtoImpl>
      get copyWith =>
          __$$StudentSubmissionDtoImplCopyWithImpl<_$StudentSubmissionDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSubmissionDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentSubmissionDto implements StudentSubmissionDto {
  const factory _StudentSubmissionDto(
      {required final String id,
      @JsonKey(name: 'assignment_id') required final String assignmentId,
      @JsonKey(name: 'enrollment_id') required final String enrollmentId,
      @JsonKey(name: 'submission_number') required final int submissionNumber,
      required final String status,
      @JsonKey(name: 'text_content') final String textContent,
      @JsonKey(name: 'submitted_at') final DateTime? submittedAt,
      @JsonKey(name: 'assignment_title') required final String assignmentTitle,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      @JsonKey(name: 'course_title') required final String courseTitle,
      final double? points,
      final double? percentage,
      final String? feedback,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$StudentSubmissionDtoImpl;

  factory _StudentSubmissionDto.fromJson(Map<String, dynamic> json) =
      _$StudentSubmissionDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'assignment_id')
  String get assignmentId;
  @override
  @JsonKey(name: 'enrollment_id')
  String get enrollmentId;
  @override
  @JsonKey(name: 'submission_number')
  int get submissionNumber;
  @override
  String get status;
  @override
  @JsonKey(name: 'text_content')
  String get textContent;
  @override
  @JsonKey(name: 'submitted_at')
  DateTime? get submittedAt;
  @override
  @JsonKey(name: 'assignment_title')
  String get assignmentTitle;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  double? get points;
  @override
  double? get percentage;
  @override
  String? get feedback;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of StudentSubmissionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSubmissionDtoImplCopyWith<_$StudentSubmissionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentCalendarItemDto _$StudentCalendarItemDtoFromJson(
    Map<String, dynamic> json) {
  return _StudentCalendarItemDto.fromJson(json);
}

/// @nodoc
mixin _$StudentCalendarItemDto {
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_id')
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'starts_at')
  DateTime get startsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this StudentCalendarItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentCalendarItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCalendarItemDtoCopyWith<StudentCalendarItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCalendarItemDtoCopyWith<$Res> {
  factory $StudentCalendarItemDtoCopyWith(StudentCalendarItemDto value,
          $Res Function(StudentCalendarItemDto) then) =
      _$StudentCalendarItemDtoCopyWithImpl<$Res, StudentCalendarItemDto>;
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'entity_id') String entityId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'starts_at') DateTime startsAt,
      @JsonKey(name: 'ends_at') DateTime? endsAt,
      String status});
}

/// @nodoc
class _$StudentCalendarItemDtoCopyWithImpl<$Res,
        $Val extends StudentCalendarItemDto>
    implements $StudentCalendarItemDtoCopyWith<$Res> {
  _$StudentCalendarItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentCalendarItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? entityId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? startsAt = null,
    Object? endsAt = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCalendarItemDtoImplCopyWith<$Res>
    implements $StudentCalendarItemDtoCopyWith<$Res> {
  factory _$$StudentCalendarItemDtoImplCopyWith(
          _$StudentCalendarItemDtoImpl value,
          $Res Function(_$StudentCalendarItemDtoImpl) then) =
      __$$StudentCalendarItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'entity_id') String entityId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      String title,
      @JsonKey(name: 'starts_at') DateTime startsAt,
      @JsonKey(name: 'ends_at') DateTime? endsAt,
      String status});
}

/// @nodoc
class __$$StudentCalendarItemDtoImplCopyWithImpl<$Res>
    extends _$StudentCalendarItemDtoCopyWithImpl<$Res,
        _$StudentCalendarItemDtoImpl>
    implements _$$StudentCalendarItemDtoImplCopyWith<$Res> {
  __$$StudentCalendarItemDtoImplCopyWithImpl(
      _$StudentCalendarItemDtoImpl _value,
      $Res Function(_$StudentCalendarItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentCalendarItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? entityId = null,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? title = null,
    Object? startsAt = null,
    Object? endsAt = freezed,
    Object? status = null,
  }) {
    return _then(_$StudentCalendarItemDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentCalendarItemDtoImpl implements _StudentCalendarItemDto {
  const _$StudentCalendarItemDtoImpl(
      {required this.type,
      @JsonKey(name: 'entity_id') required this.entityId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      required this.title,
      @JsonKey(name: 'starts_at') required this.startsAt,
      @JsonKey(name: 'ends_at') this.endsAt,
      required this.status});

  factory _$StudentCalendarItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCalendarItemDtoImplFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: 'entity_id')
  final String entityId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  final String title;
  @override
  @JsonKey(name: 'starts_at')
  final DateTime startsAt;
  @override
  @JsonKey(name: 'ends_at')
  final DateTime? endsAt;
  @override
  final String status;

  @override
  String toString() {
    return 'StudentCalendarItemDto(type: $type, entityId: $entityId, courseId: $courseId, batchId: $batchId, title: $title, startsAt: $startsAt, endsAt: $endsAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCalendarItemDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, entityId, courseId,
      batchId, title, startsAt, endsAt, status);

  /// Create a copy of StudentCalendarItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCalendarItemDtoImplCopyWith<_$StudentCalendarItemDtoImpl>
      get copyWith => __$$StudentCalendarItemDtoImplCopyWithImpl<
          _$StudentCalendarItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCalendarItemDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentCalendarItemDto implements StudentCalendarItemDto {
  const factory _StudentCalendarItemDto(
      {required final String type,
      @JsonKey(name: 'entity_id') required final String entityId,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      required final String title,
      @JsonKey(name: 'starts_at') required final DateTime startsAt,
      @JsonKey(name: 'ends_at') final DateTime? endsAt,
      required final String status}) = _$StudentCalendarItemDtoImpl;

  factory _StudentCalendarItemDto.fromJson(Map<String, dynamic> json) =
      _$StudentCalendarItemDtoImpl.fromJson;

  @override
  String get type;
  @override
  @JsonKey(name: 'entity_id')
  String get entityId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  String get title;
  @override
  @JsonKey(name: 'starts_at')
  DateTime get startsAt;
  @override
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt;
  @override
  String get status;

  /// Create a copy of StudentCalendarItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentCalendarItemDtoImplCopyWith<_$StudentCalendarItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentCalendarDto _$StudentCalendarDtoFromJson(Map<String, dynamic> json) {
  return _StudentCalendarDto.fromJson(json);
}

/// @nodoc
mixin _$StudentCalendarDto {
  List<StudentCalendarItemDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  DateTime get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  DateTime get toDate => throw _privateConstructorUsedError;

  /// Serializes this StudentCalendarDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCalendarDtoCopyWith<StudentCalendarDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCalendarDtoCopyWith<$Res> {
  factory $StudentCalendarDtoCopyWith(
          StudentCalendarDto value, $Res Function(StudentCalendarDto) then) =
      _$StudentCalendarDtoCopyWithImpl<$Res, StudentCalendarDto>;
  @useResult
  $Res call(
      {List<StudentCalendarItemDto> items,
      @JsonKey(name: 'from') DateTime fromDate,
      @JsonKey(name: 'to') DateTime toDate});
}

/// @nodoc
class _$StudentCalendarDtoCopyWithImpl<$Res, $Val extends StudentCalendarDto>
    implements $StudentCalendarDtoCopyWith<$Res> {
  _$StudentCalendarDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StudentCalendarItemDto>,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCalendarDtoImplCopyWith<$Res>
    implements $StudentCalendarDtoCopyWith<$Res> {
  factory _$$StudentCalendarDtoImplCopyWith(_$StudentCalendarDtoImpl value,
          $Res Function(_$StudentCalendarDtoImpl) then) =
      __$$StudentCalendarDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StudentCalendarItemDto> items,
      @JsonKey(name: 'from') DateTime fromDate,
      @JsonKey(name: 'to') DateTime toDate});
}

/// @nodoc
class __$$StudentCalendarDtoImplCopyWithImpl<$Res>
    extends _$StudentCalendarDtoCopyWithImpl<$Res, _$StudentCalendarDtoImpl>
    implements _$$StudentCalendarDtoImplCopyWith<$Res> {
  __$$StudentCalendarDtoImplCopyWithImpl(_$StudentCalendarDtoImpl _value,
      $Res Function(_$StudentCalendarDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$StudentCalendarDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StudentCalendarItemDto>,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentCalendarDtoImpl implements _StudentCalendarDto {
  const _$StudentCalendarDtoImpl(
      {final List<StudentCalendarItemDto> items =
          const <StudentCalendarItemDto>[],
      @JsonKey(name: 'from') required this.fromDate,
      @JsonKey(name: 'to') required this.toDate})
      : _items = items;

  factory _$StudentCalendarDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCalendarDtoImplFromJson(json);

  final List<StudentCalendarItemDto> _items;
  @override
  @JsonKey()
  List<StudentCalendarItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'from')
  final DateTime fromDate;
  @override
  @JsonKey(name: 'to')
  final DateTime toDate;

  @override
  String toString() {
    return 'StudentCalendarDto(items: $items, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCalendarDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), fromDate, toDate);

  /// Create a copy of StudentCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCalendarDtoImplCopyWith<_$StudentCalendarDtoImpl> get copyWith =>
      __$$StudentCalendarDtoImplCopyWithImpl<_$StudentCalendarDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCalendarDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentCalendarDto implements StudentCalendarDto {
  const factory _StudentCalendarDto(
          {final List<StudentCalendarItemDto> items,
          @JsonKey(name: 'from') required final DateTime fromDate,
          @JsonKey(name: 'to') required final DateTime toDate}) =
      _$StudentCalendarDtoImpl;

  factory _StudentCalendarDto.fromJson(Map<String, dynamic> json) =
      _$StudentCalendarDtoImpl.fromJson;

  @override
  List<StudentCalendarItemDto> get items;
  @override
  @JsonKey(name: 'from')
  DateTime get fromDate;
  @override
  @JsonKey(name: 'to')
  DateTime get toDate;

  /// Create a copy of StudentCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentCalendarDtoImplCopyWith<_$StudentCalendarDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PublicOptionDto _$PublicOptionDtoFromJson(Map<String, dynamic> json) {
  return _PublicOptionDto.fromJson(json);
}

/// @nodoc
mixin _$PublicOptionDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;

  /// Serializes this PublicOptionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicOptionDtoCopyWith<PublicOptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicOptionDtoCopyWith<$Res> {
  factory $PublicOptionDtoCopyWith(
          PublicOptionDto value, $Res Function(PublicOptionDto) then) =
      _$PublicOptionDtoCopyWithImpl<$Res, PublicOptionDto>;
  @useResult
  $Res call({String id, String text, bool? correct});
}

/// @nodoc
class _$PublicOptionDtoCopyWithImpl<$Res, $Val extends PublicOptionDto>
    implements $PublicOptionDtoCopyWith<$Res> {
  _$PublicOptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? correct = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicOptionDtoImplCopyWith<$Res>
    implements $PublicOptionDtoCopyWith<$Res> {
  factory _$$PublicOptionDtoImplCopyWith(_$PublicOptionDtoImpl value,
          $Res Function(_$PublicOptionDtoImpl) then) =
      __$$PublicOptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, bool? correct});
}

/// @nodoc
class __$$PublicOptionDtoImplCopyWithImpl<$Res>
    extends _$PublicOptionDtoCopyWithImpl<$Res, _$PublicOptionDtoImpl>
    implements _$$PublicOptionDtoImplCopyWith<$Res> {
  __$$PublicOptionDtoImplCopyWithImpl(
      _$PublicOptionDtoImpl _value, $Res Function(_$PublicOptionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? correct = freezed,
  }) {
    return _then(_$PublicOptionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicOptionDtoImpl implements _PublicOptionDto {
  const _$PublicOptionDtoImpl(
      {required this.id, required this.text, this.correct});

  factory _$PublicOptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicOptionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final bool? correct;

  @override
  String toString() {
    return 'PublicOptionDto(id: $id, text: $text, correct: $correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicOptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, correct);

  /// Create a copy of PublicOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicOptionDtoImplCopyWith<_$PublicOptionDtoImpl> get copyWith =>
      __$$PublicOptionDtoImplCopyWithImpl<_$PublicOptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicOptionDtoImplToJson(
      this,
    );
  }
}

abstract class _PublicOptionDto implements PublicOptionDto {
  const factory _PublicOptionDto(
      {required final String id,
      required final String text,
      final bool? correct}) = _$PublicOptionDtoImpl;

  factory _PublicOptionDto.fromJson(Map<String, dynamic> json) =
      _$PublicOptionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  bool? get correct;

  /// Create a copy of PublicOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicOptionDtoImplCopyWith<_$PublicOptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PublicQuestionDto _$PublicQuestionDtoFromJson(Map<String, dynamic> json) {
  return _PublicQuestionDto.fromJson(json);
}

/// @nodoc
mixin _$PublicQuestionDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_id')
  String? get sectionId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  double get points => throw _privateConstructorUsedError;
  List<PublicOptionDto> get options => throw _privateConstructorUsedError;

  /// Serializes this PublicQuestionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicQuestionDtoCopyWith<PublicQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicQuestionDtoCopyWith<$Res> {
  factory $PublicQuestionDtoCopyWith(
          PublicQuestionDto value, $Res Function(PublicQuestionDto) then) =
      _$PublicQuestionDtoCopyWithImpl<$Res, PublicQuestionDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'section_id') String? sectionId,
      String type,
      String? difficulty,
      String prompt,
      double points,
      List<PublicOptionDto> options});
}

/// @nodoc
class _$PublicQuestionDtoCopyWithImpl<$Res, $Val extends PublicQuestionDto>
    implements $PublicQuestionDtoCopyWith<$Res> {
  _$PublicQuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = freezed,
    Object? type = null,
    Object? difficulty = freezed,
    Object? prompt = null,
    Object? points = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PublicOptionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicQuestionDtoImplCopyWith<$Res>
    implements $PublicQuestionDtoCopyWith<$Res> {
  factory _$$PublicQuestionDtoImplCopyWith(_$PublicQuestionDtoImpl value,
          $Res Function(_$PublicQuestionDtoImpl) then) =
      __$$PublicQuestionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'section_id') String? sectionId,
      String type,
      String? difficulty,
      String prompt,
      double points,
      List<PublicOptionDto> options});
}

/// @nodoc
class __$$PublicQuestionDtoImplCopyWithImpl<$Res>
    extends _$PublicQuestionDtoCopyWithImpl<$Res, _$PublicQuestionDtoImpl>
    implements _$$PublicQuestionDtoImplCopyWith<$Res> {
  __$$PublicQuestionDtoImplCopyWithImpl(_$PublicQuestionDtoImpl _value,
      $Res Function(_$PublicQuestionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = freezed,
    Object? type = null,
    Object? difficulty = freezed,
    Object? prompt = null,
    Object? points = null,
    Object? options = null,
  }) {
    return _then(_$PublicQuestionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PublicOptionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicQuestionDtoImpl implements _PublicQuestionDto {
  const _$PublicQuestionDtoImpl(
      {required this.id,
      @JsonKey(name: 'section_id') this.sectionId,
      required this.type,
      this.difficulty,
      required this.prompt,
      required this.points,
      final List<PublicOptionDto> options = const <PublicOptionDto>[]})
      : _options = options;

  factory _$PublicQuestionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicQuestionDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'section_id')
  final String? sectionId;
  @override
  final String type;
  @override
  final String? difficulty;
  @override
  final String prompt;
  @override
  final double points;
  final List<PublicOptionDto> _options;
  @override
  @JsonKey()
  List<PublicOptionDto> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'PublicQuestionDto(id: $id, sectionId: $sectionId, type: $type, difficulty: $difficulty, prompt: $prompt, points: $points, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicQuestionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sectionId, type, difficulty,
      prompt, points, const DeepCollectionEquality().hash(_options));

  /// Create a copy of PublicQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicQuestionDtoImplCopyWith<_$PublicQuestionDtoImpl> get copyWith =>
      __$$PublicQuestionDtoImplCopyWithImpl<_$PublicQuestionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicQuestionDtoImplToJson(
      this,
    );
  }
}

abstract class _PublicQuestionDto implements PublicQuestionDto {
  const factory _PublicQuestionDto(
      {required final String id,
      @JsonKey(name: 'section_id') final String? sectionId,
      required final String type,
      final String? difficulty,
      required final String prompt,
      required final double points,
      final List<PublicOptionDto> options}) = _$PublicQuestionDtoImpl;

  factory _PublicQuestionDto.fromJson(Map<String, dynamic> json) =
      _$PublicQuestionDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'section_id')
  String? get sectionId;
  @override
  String get type;
  @override
  String? get difficulty;
  @override
  String get prompt;
  @override
  double get points;
  @override
  List<PublicOptionDto> get options;

  /// Create a copy of PublicQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicQuestionDtoImplCopyWith<_$PublicQuestionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamDto _$ExamDtoFromJson(Map<String, dynamic> json) {
  return _ExamDto.fromJson(json);
}

/// @nodoc
mixin _$ExamDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String? get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_id')
  String? get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String? get courseTitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempts_used')
  int get attemptsUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'pass_percentage')
  double get passPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'assessment_mode')
  String get assessmentMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'negative_mark_per_wrong')
  double get negativeMarkPerWrong => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_score')
  double get minimumScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'starts_at')
  DateTime get startsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_at')
  DateTime get endsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_submit')
  bool get autoSubmit => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank_enabled')
  bool get rankEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_review_at')
  DateTime? get answerReviewAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_selection_strategy')
  String? get selectionStrategy => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;

  /// Serializes this ExamDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamDtoCopyWith<ExamDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamDtoCopyWith<$Res> {
  factory $ExamDtoCopyWith(ExamDto value, $Res Function(ExamDto) then) =
      _$ExamDtoCopyWithImpl<$Res, ExamDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'course_title') String? courseTitle,
      String title,
      String instructions,
      String status,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'attempts_used') int attemptsUsed,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'assessment_mode') String assessmentMode,
      @JsonKey(name: 'negative_mark_per_wrong') double negativeMarkPerWrong,
      @JsonKey(name: 'minimum_score') double minimumScore,
      @JsonKey(name: 'duration_seconds') int durationSeconds,
      @JsonKey(name: 'starts_at') DateTime startsAt,
      @JsonKey(name: 'ends_at') DateTime endsAt,
      @JsonKey(name: 'auto_submit') bool autoSubmit,
      @JsonKey(name: 'rank_enabled') bool rankEnabled,
      @JsonKey(name: 'answer_review_at') DateTime? answerReviewAt,
      @JsonKey(name: 'question_selection_strategy') String? selectionStrategy,
      int? version});
}

/// @nodoc
class _$ExamDtoCopyWithImpl<$Res, $Val extends ExamDto>
    implements $ExamDtoCopyWith<$Res> {
  _$ExamDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? courseTitle = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? status = null,
    Object? attemptLimit = null,
    Object? attemptsUsed = null,
    Object? passPercentage = null,
    Object? assessmentMode = null,
    Object? negativeMarkPerWrong = null,
    Object? minimumScore = null,
    Object? durationSeconds = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? autoSubmit = null,
    Object? rankEnabled = null,
    Object? answerReviewAt = freezed,
    Object? selectionStrategy = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      attemptsUsed: null == attemptsUsed
          ? _value.attemptsUsed
          : attemptsUsed // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      assessmentMode: null == assessmentMode
          ? _value.assessmentMode
          : assessmentMode // ignore: cast_nullable_to_non_nullable
              as String,
      negativeMarkPerWrong: null == negativeMarkPerWrong
          ? _value.negativeMarkPerWrong
          : negativeMarkPerWrong // ignore: cast_nullable_to_non_nullable
              as double,
      minimumScore: null == minimumScore
          ? _value.minimumScore
          : minimumScore // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      autoSubmit: null == autoSubmit
          ? _value.autoSubmit
          : autoSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      rankEnabled: null == rankEnabled
          ? _value.rankEnabled
          : rankEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      answerReviewAt: freezed == answerReviewAt
          ? _value.answerReviewAt
          : answerReviewAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectionStrategy: freezed == selectionStrategy
          ? _value.selectionStrategy
          : selectionStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamDtoImplCopyWith<$Res> implements $ExamDtoCopyWith<$Res> {
  factory _$$ExamDtoImplCopyWith(
          _$ExamDtoImpl value, $Res Function(_$ExamDtoImpl) then) =
      __$$ExamDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String? organizationId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'batch_id') String? batchId,
      @JsonKey(name: 'course_title') String? courseTitle,
      String title,
      String instructions,
      String status,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'attempts_used') int attemptsUsed,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'assessment_mode') String assessmentMode,
      @JsonKey(name: 'negative_mark_per_wrong') double negativeMarkPerWrong,
      @JsonKey(name: 'minimum_score') double minimumScore,
      @JsonKey(name: 'duration_seconds') int durationSeconds,
      @JsonKey(name: 'starts_at') DateTime startsAt,
      @JsonKey(name: 'ends_at') DateTime endsAt,
      @JsonKey(name: 'auto_submit') bool autoSubmit,
      @JsonKey(name: 'rank_enabled') bool rankEnabled,
      @JsonKey(name: 'answer_review_at') DateTime? answerReviewAt,
      @JsonKey(name: 'question_selection_strategy') String? selectionStrategy,
      int? version});
}

/// @nodoc
class __$$ExamDtoImplCopyWithImpl<$Res>
    extends _$ExamDtoCopyWithImpl<$Res, _$ExamDtoImpl>
    implements _$$ExamDtoImplCopyWith<$Res> {
  __$$ExamDtoImplCopyWithImpl(
      _$ExamDtoImpl _value, $Res Function(_$ExamDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = freezed,
    Object? courseId = null,
    Object? batchId = freezed,
    Object? courseTitle = freezed,
    Object? title = null,
    Object? instructions = null,
    Object? status = null,
    Object? attemptLimit = null,
    Object? attemptsUsed = null,
    Object? passPercentage = null,
    Object? assessmentMode = null,
    Object? negativeMarkPerWrong = null,
    Object? minimumScore = null,
    Object? durationSeconds = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? autoSubmit = null,
    Object? rankEnabled = null,
    Object? answerReviewAt = freezed,
    Object? selectionStrategy = freezed,
    Object? version = freezed,
  }) {
    return _then(_$ExamDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      attemptsUsed: null == attemptsUsed
          ? _value.attemptsUsed
          : attemptsUsed // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      assessmentMode: null == assessmentMode
          ? _value.assessmentMode
          : assessmentMode // ignore: cast_nullable_to_non_nullable
              as String,
      negativeMarkPerWrong: null == negativeMarkPerWrong
          ? _value.negativeMarkPerWrong
          : negativeMarkPerWrong // ignore: cast_nullable_to_non_nullable
              as double,
      minimumScore: null == minimumScore
          ? _value.minimumScore
          : minimumScore // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      autoSubmit: null == autoSubmit
          ? _value.autoSubmit
          : autoSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      rankEnabled: null == rankEnabled
          ? _value.rankEnabled
          : rankEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      answerReviewAt: freezed == answerReviewAt
          ? _value.answerReviewAt
          : answerReviewAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectionStrategy: freezed == selectionStrategy
          ? _value.selectionStrategy
          : selectionStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamDtoImpl implements _ExamDto {
  const _$ExamDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') this.organizationId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'batch_id') this.batchId,
      @JsonKey(name: 'course_title') this.courseTitle,
      required this.title,
      this.instructions = '',
      required this.status,
      @JsonKey(name: 'attempt_limit') required this.attemptLimit,
      @JsonKey(name: 'attempts_used') this.attemptsUsed = 0,
      @JsonKey(name: 'pass_percentage') required this.passPercentage,
      @JsonKey(name: 'assessment_mode') required this.assessmentMode,
      @JsonKey(name: 'negative_mark_per_wrong')
      required this.negativeMarkPerWrong,
      @JsonKey(name: 'minimum_score') required this.minimumScore,
      @JsonKey(name: 'duration_seconds') required this.durationSeconds,
      @JsonKey(name: 'starts_at') required this.startsAt,
      @JsonKey(name: 'ends_at') required this.endsAt,
      @JsonKey(name: 'auto_submit') required this.autoSubmit,
      @JsonKey(name: 'rank_enabled') required this.rankEnabled,
      @JsonKey(name: 'answer_review_at') this.answerReviewAt,
      @JsonKey(name: 'question_selection_strategy') this.selectionStrategy,
      this.version});

  factory _$ExamDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String? organizationId;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'batch_id')
  final String? batchId;
  @override
  @JsonKey(name: 'course_title')
  final String? courseTitle;
  @override
  final String title;
  @override
  @JsonKey()
  final String instructions;
  @override
  final String status;
  @override
  @JsonKey(name: 'attempt_limit')
  final int attemptLimit;
  @override
  @JsonKey(name: 'attempts_used')
  final int attemptsUsed;
  @override
  @JsonKey(name: 'pass_percentage')
  final double passPercentage;
  @override
  @JsonKey(name: 'assessment_mode')
  final String assessmentMode;
  @override
  @JsonKey(name: 'negative_mark_per_wrong')
  final double negativeMarkPerWrong;
  @override
  @JsonKey(name: 'minimum_score')
  final double minimumScore;
  @override
  @JsonKey(name: 'duration_seconds')
  final int durationSeconds;
  @override
  @JsonKey(name: 'starts_at')
  final DateTime startsAt;
  @override
  @JsonKey(name: 'ends_at')
  final DateTime endsAt;
  @override
  @JsonKey(name: 'auto_submit')
  final bool autoSubmit;
  @override
  @JsonKey(name: 'rank_enabled')
  final bool rankEnabled;
  @override
  @JsonKey(name: 'answer_review_at')
  final DateTime? answerReviewAt;
  @override
  @JsonKey(name: 'question_selection_strategy')
  final String? selectionStrategy;
  @override
  final int? version;

  @override
  String toString() {
    return 'ExamDto(id: $id, organizationId: $organizationId, courseId: $courseId, batchId: $batchId, courseTitle: $courseTitle, title: $title, instructions: $instructions, status: $status, attemptLimit: $attemptLimit, attemptsUsed: $attemptsUsed, passPercentage: $passPercentage, assessmentMode: $assessmentMode, negativeMarkPerWrong: $negativeMarkPerWrong, minimumScore: $minimumScore, durationSeconds: $durationSeconds, startsAt: $startsAt, endsAt: $endsAt, autoSubmit: $autoSubmit, rankEnabled: $rankEnabled, answerReviewAt: $answerReviewAt, selectionStrategy: $selectionStrategy, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.attemptLimit, attemptLimit) ||
                other.attemptLimit == attemptLimit) &&
            (identical(other.attemptsUsed, attemptsUsed) ||
                other.attemptsUsed == attemptsUsed) &&
            (identical(other.passPercentage, passPercentage) ||
                other.passPercentage == passPercentage) &&
            (identical(other.assessmentMode, assessmentMode) ||
                other.assessmentMode == assessmentMode) &&
            (identical(other.negativeMarkPerWrong, negativeMarkPerWrong) ||
                other.negativeMarkPerWrong == negativeMarkPerWrong) &&
            (identical(other.minimumScore, minimumScore) ||
                other.minimumScore == minimumScore) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.autoSubmit, autoSubmit) ||
                other.autoSubmit == autoSubmit) &&
            (identical(other.rankEnabled, rankEnabled) ||
                other.rankEnabled == rankEnabled) &&
            (identical(other.answerReviewAt, answerReviewAt) ||
                other.answerReviewAt == answerReviewAt) &&
            (identical(other.selectionStrategy, selectionStrategy) ||
                other.selectionStrategy == selectionStrategy) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        courseId,
        batchId,
        courseTitle,
        title,
        instructions,
        status,
        attemptLimit,
        attemptsUsed,
        passPercentage,
        assessmentMode,
        negativeMarkPerWrong,
        minimumScore,
        durationSeconds,
        startsAt,
        endsAt,
        autoSubmit,
        rankEnabled,
        answerReviewAt,
        selectionStrategy,
        version
      ]);

  /// Create a copy of ExamDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamDtoImplCopyWith<_$ExamDtoImpl> get copyWith =>
      __$$ExamDtoImplCopyWithImpl<_$ExamDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamDtoImplToJson(
      this,
    );
  }
}

abstract class _ExamDto implements ExamDto {
  const factory _ExamDto(
      {required final String id,
      @JsonKey(name: 'organization_id') final String? organizationId,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'batch_id') final String? batchId,
      @JsonKey(name: 'course_title') final String? courseTitle,
      required final String title,
      final String instructions,
      required final String status,
      @JsonKey(name: 'attempt_limit') required final int attemptLimit,
      @JsonKey(name: 'attempts_used') final int attemptsUsed,
      @JsonKey(name: 'pass_percentage') required final double passPercentage,
      @JsonKey(name: 'assessment_mode') required final String assessmentMode,
      @JsonKey(name: 'negative_mark_per_wrong')
      required final double negativeMarkPerWrong,
      @JsonKey(name: 'minimum_score') required final double minimumScore,
      @JsonKey(name: 'duration_seconds') required final int durationSeconds,
      @JsonKey(name: 'starts_at') required final DateTime startsAt,
      @JsonKey(name: 'ends_at') required final DateTime endsAt,
      @JsonKey(name: 'auto_submit') required final bool autoSubmit,
      @JsonKey(name: 'rank_enabled') required final bool rankEnabled,
      @JsonKey(name: 'answer_review_at') final DateTime? answerReviewAt,
      @JsonKey(name: 'question_selection_strategy')
      final String? selectionStrategy,
      final int? version}) = _$ExamDtoImpl;

  factory _ExamDto.fromJson(Map<String, dynamic> json) = _$ExamDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String? get organizationId;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'batch_id')
  String? get batchId;
  @override
  @JsonKey(name: 'course_title')
  String? get courseTitle;
  @override
  String get title;
  @override
  String get instructions;
  @override
  String get status;
  @override
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit;
  @override
  @JsonKey(name: 'attempts_used')
  int get attemptsUsed;
  @override
  @JsonKey(name: 'pass_percentage')
  double get passPercentage;
  @override
  @JsonKey(name: 'assessment_mode')
  String get assessmentMode;
  @override
  @JsonKey(name: 'negative_mark_per_wrong')
  double get negativeMarkPerWrong;
  @override
  @JsonKey(name: 'minimum_score')
  double get minimumScore;
  @override
  @JsonKey(name: 'duration_seconds')
  int get durationSeconds;
  @override
  @JsonKey(name: 'starts_at')
  DateTime get startsAt;
  @override
  @JsonKey(name: 'ends_at')
  DateTime get endsAt;
  @override
  @JsonKey(name: 'auto_submit')
  bool get autoSubmit;
  @override
  @JsonKey(name: 'rank_enabled')
  bool get rankEnabled;
  @override
  @JsonKey(name: 'answer_review_at')
  DateTime? get answerReviewAt;
  @override
  @JsonKey(name: 'question_selection_strategy')
  String? get selectionStrategy;
  @override
  int? get version;

  /// Create a copy of ExamDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamDtoImplCopyWith<_$ExamDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamAttemptDto _$ExamAttemptDtoFromJson(Map<String, dynamic> json) {
  return _ExamAttemptDto.fromJson(json);
}

/// @nodoc
mixin _$ExamAttemptDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_id')
  String get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_number')
  int get attemptNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'submit_before')
  DateTime? get submitBefore => throw _privateConstructorUsedError;
  List<PublicQuestionDto> get questions => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;
  bool? get passed => throw _privateConstructorUsedError;

  /// Serializes this ExamAttemptDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamAttemptDtoCopyWith<ExamAttemptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamAttemptDtoCopyWith<$Res> {
  factory $ExamAttemptDtoCopyWith(
          ExamAttemptDto value, $Res Function(ExamAttemptDto) then) =
      _$ExamAttemptDtoCopyWithImpl<$Res, ExamAttemptDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'quiz_id') String examId,
      @JsonKey(name: 'attempt_number') int attemptNumber,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'submit_before') DateTime? submitBefore,
      List<PublicQuestionDto> questions,
      double? percentage,
      bool? passed});
}

/// @nodoc
class _$ExamAttemptDtoCopyWithImpl<$Res, $Val extends ExamAttemptDto>
    implements $ExamAttemptDtoCopyWith<$Res> {
  _$ExamAttemptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? attemptNumber = null,
    Object? status = null,
    Object? startedAt = null,
    Object? expiresAt = freezed,
    Object? submitBefore = freezed,
    Object? questions = null,
    Object? percentage = freezed,
    Object? passed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitBefore: freezed == submitBefore
          ? _value.submitBefore
          : submitBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PublicQuestionDto>,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamAttemptDtoImplCopyWith<$Res>
    implements $ExamAttemptDtoCopyWith<$Res> {
  factory _$$ExamAttemptDtoImplCopyWith(_$ExamAttemptDtoImpl value,
          $Res Function(_$ExamAttemptDtoImpl) then) =
      __$$ExamAttemptDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'quiz_id') String examId,
      @JsonKey(name: 'attempt_number') int attemptNumber,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'submit_before') DateTime? submitBefore,
      List<PublicQuestionDto> questions,
      double? percentage,
      bool? passed});
}

/// @nodoc
class __$$ExamAttemptDtoImplCopyWithImpl<$Res>
    extends _$ExamAttemptDtoCopyWithImpl<$Res, _$ExamAttemptDtoImpl>
    implements _$$ExamAttemptDtoImplCopyWith<$Res> {
  __$$ExamAttemptDtoImplCopyWithImpl(
      _$ExamAttemptDtoImpl _value, $Res Function(_$ExamAttemptDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? attemptNumber = null,
    Object? status = null,
    Object? startedAt = null,
    Object? expiresAt = freezed,
    Object? submitBefore = freezed,
    Object? questions = null,
    Object? percentage = freezed,
    Object? passed = freezed,
  }) {
    return _then(_$ExamAttemptDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitBefore: freezed == submitBefore
          ? _value.submitBefore
          : submitBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PublicQuestionDto>,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamAttemptDtoImpl implements _ExamAttemptDto {
  const _$ExamAttemptDtoImpl(
      {required this.id,
      @JsonKey(name: 'quiz_id') required this.examId,
      @JsonKey(name: 'attempt_number') required this.attemptNumber,
      required this.status,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'expires_at') this.expiresAt,
      @JsonKey(name: 'submit_before') this.submitBefore,
      final List<PublicQuestionDto> questions = const <PublicQuestionDto>[],
      this.percentage,
      this.passed})
      : _questions = questions;

  factory _$ExamAttemptDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamAttemptDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'quiz_id')
  final String examId;
  @override
  @JsonKey(name: 'attempt_number')
  final int attemptNumber;
  @override
  final String status;
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;
  @override
  @JsonKey(name: 'submit_before')
  final DateTime? submitBefore;
  final List<PublicQuestionDto> _questions;
  @override
  @JsonKey()
  List<PublicQuestionDto> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final double? percentage;
  @override
  final bool? passed;

  @override
  String toString() {
    return 'ExamAttemptDto(id: $id, examId: $examId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, submitBefore: $submitBefore, questions: $questions, percentage: $percentage, passed: $passed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamAttemptDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.attemptNumber, attemptNumber) ||
                other.attemptNumber == attemptNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.submitBefore, submitBefore) ||
                other.submitBefore == submitBefore) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.passed, passed) || other.passed == passed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      examId,
      attemptNumber,
      status,
      startedAt,
      expiresAt,
      submitBefore,
      const DeepCollectionEquality().hash(_questions),
      percentage,
      passed);

  /// Create a copy of ExamAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamAttemptDtoImplCopyWith<_$ExamAttemptDtoImpl> get copyWith =>
      __$$ExamAttemptDtoImplCopyWithImpl<_$ExamAttemptDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamAttemptDtoImplToJson(
      this,
    );
  }
}

abstract class _ExamAttemptDto implements ExamAttemptDto {
  const factory _ExamAttemptDto(
      {required final String id,
      @JsonKey(name: 'quiz_id') required final String examId,
      @JsonKey(name: 'attempt_number') required final int attemptNumber,
      required final String status,
      @JsonKey(name: 'started_at') required final DateTime startedAt,
      @JsonKey(name: 'expires_at') final DateTime? expiresAt,
      @JsonKey(name: 'submit_before') final DateTime? submitBefore,
      final List<PublicQuestionDto> questions,
      final double? percentage,
      final bool? passed}) = _$ExamAttemptDtoImpl;

  factory _ExamAttemptDto.fromJson(Map<String, dynamic> json) =
      _$ExamAttemptDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'quiz_id')
  String get examId;
  @override
  @JsonKey(name: 'attempt_number')
  int get attemptNumber;
  @override
  String get status;
  @override
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt;
  @override
  @JsonKey(name: 'submit_before')
  DateTime? get submitBefore;
  @override
  List<PublicQuestionDto> get questions;
  @override
  double? get percentage;
  @override
  bool? get passed;

  /// Create a copy of ExamAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamAttemptDtoImplCopyWith<_$ExamAttemptDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardEntryDto _$LeaderboardEntryDtoFromJson(Map<String, dynamic> json) {
  return _LeaderboardEntryDto.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntryDto {
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_id')
  String get attemptId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_points')
  double get scorePoints => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_duration_seconds')
  int get completionDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_at')
  DateTime get submittedAt => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardEntryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardEntryDtoCopyWith<LeaderboardEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryDtoCopyWith<$Res> {
  factory $LeaderboardEntryDtoCopyWith(
          LeaderboardEntryDto value, $Res Function(LeaderboardEntryDto) then) =
      _$LeaderboardEntryDtoCopyWithImpl<$Res, LeaderboardEntryDto>;
  @useResult
  $Res call(
      {int position,
      @JsonKey(name: 'attempt_id') String attemptId,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'score_points') double scorePoints,
      double percentage,
      @JsonKey(name: 'completion_duration_seconds')
      int completionDurationSeconds,
      @JsonKey(name: 'submitted_at') DateTime submittedAt});
}

/// @nodoc
class _$LeaderboardEntryDtoCopyWithImpl<$Res, $Val extends LeaderboardEntryDto>
    implements $LeaderboardEntryDtoCopyWith<$Res> {
  _$LeaderboardEntryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? attemptId = null,
    Object? studentId = null,
    Object? displayName = null,
    Object? scorePoints = null,
    Object? percentage = null,
    Object? completionDurationSeconds = null,
    Object? submittedAt = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      scorePoints: null == scorePoints
          ? _value.scorePoints
          : scorePoints // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      completionDurationSeconds: null == completionDurationSeconds
          ? _value.completionDurationSeconds
          : completionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryDtoImplCopyWith<$Res>
    implements $LeaderboardEntryDtoCopyWith<$Res> {
  factory _$$LeaderboardEntryDtoImplCopyWith(_$LeaderboardEntryDtoImpl value,
          $Res Function(_$LeaderboardEntryDtoImpl) then) =
      __$$LeaderboardEntryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      @JsonKey(name: 'attempt_id') String attemptId,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'score_points') double scorePoints,
      double percentage,
      @JsonKey(name: 'completion_duration_seconds')
      int completionDurationSeconds,
      @JsonKey(name: 'submitted_at') DateTime submittedAt});
}

/// @nodoc
class __$$LeaderboardEntryDtoImplCopyWithImpl<$Res>
    extends _$LeaderboardEntryDtoCopyWithImpl<$Res, _$LeaderboardEntryDtoImpl>
    implements _$$LeaderboardEntryDtoImplCopyWith<$Res> {
  __$$LeaderboardEntryDtoImplCopyWithImpl(_$LeaderboardEntryDtoImpl _value,
      $Res Function(_$LeaderboardEntryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? attemptId = null,
    Object? studentId = null,
    Object? displayName = null,
    Object? scorePoints = null,
    Object? percentage = null,
    Object? completionDurationSeconds = null,
    Object? submittedAt = null,
  }) {
    return _then(_$LeaderboardEntryDtoImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      scorePoints: null == scorePoints
          ? _value.scorePoints
          : scorePoints // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      completionDurationSeconds: null == completionDurationSeconds
          ? _value.completionDurationSeconds
          : completionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntryDtoImpl implements _LeaderboardEntryDto {
  const _$LeaderboardEntryDtoImpl(
      {required this.position,
      @JsonKey(name: 'attempt_id') required this.attemptId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'score_points') required this.scorePoints,
      required this.percentage,
      @JsonKey(name: 'completion_duration_seconds')
      required this.completionDurationSeconds,
      @JsonKey(name: 'submitted_at') required this.submittedAt});

  factory _$LeaderboardEntryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntryDtoImplFromJson(json);

  @override
  final int position;
  @override
  @JsonKey(name: 'attempt_id')
  final String attemptId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'score_points')
  final double scorePoints;
  @override
  final double percentage;
  @override
  @JsonKey(name: 'completion_duration_seconds')
  final int completionDurationSeconds;
  @override
  @JsonKey(name: 'submitted_at')
  final DateTime submittedAt;

  @override
  String toString() {
    return 'LeaderboardEntryDto(position: $position, attemptId: $attemptId, studentId: $studentId, displayName: $displayName, scorePoints: $scorePoints, percentage: $percentage, completionDurationSeconds: $completionDurationSeconds, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryDtoImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.scorePoints, scorePoints) ||
                other.scorePoints == scorePoints) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.completionDurationSeconds,
                    completionDurationSeconds) ||
                other.completionDurationSeconds == completionDurationSeconds) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      attemptId,
      studentId,
      displayName,
      scorePoints,
      percentage,
      completionDurationSeconds,
      submittedAt);

  /// Create a copy of LeaderboardEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryDtoImplCopyWith<_$LeaderboardEntryDtoImpl> get copyWith =>
      __$$LeaderboardEntryDtoImplCopyWithImpl<_$LeaderboardEntryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntryDtoImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardEntryDto implements LeaderboardEntryDto {
  const factory _LeaderboardEntryDto(
          {required final int position,
          @JsonKey(name: 'attempt_id') required final String attemptId,
          @JsonKey(name: 'student_id') required final String studentId,
          @JsonKey(name: 'display_name') required final String displayName,
          @JsonKey(name: 'score_points') required final double scorePoints,
          required final double percentage,
          @JsonKey(name: 'completion_duration_seconds')
          required final int completionDurationSeconds,
          @JsonKey(name: 'submitted_at') required final DateTime submittedAt}) =
      _$LeaderboardEntryDtoImpl;

  factory _LeaderboardEntryDto.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntryDtoImpl.fromJson;

  @override
  int get position;
  @override
  @JsonKey(name: 'attempt_id')
  String get attemptId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'score_points')
  double get scorePoints;
  @override
  double get percentage;
  @override
  @JsonKey(name: 'completion_duration_seconds')
  int get completionDurationSeconds;
  @override
  @JsonKey(name: 'submitted_at')
  DateTime get submittedAt;

  /// Create a copy of LeaderboardEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardEntryDtoImplCopyWith<_$LeaderboardEntryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamLeaderboardDto _$ExamLeaderboardDtoFromJson(Map<String, dynamic> json) {
  return _ExamLeaderboardDto.fromJson(json);
}

/// @nodoc
mixin _$ExamLeaderboardDto {
  String get scope => throw _privateConstructorUsedError;
  List<String> get order => throw _privateConstructorUsedError;
  List<LeaderboardEntryDto> get items => throw _privateConstructorUsedError;

  /// Serializes this ExamLeaderboardDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamLeaderboardDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamLeaderboardDtoCopyWith<ExamLeaderboardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamLeaderboardDtoCopyWith<$Res> {
  factory $ExamLeaderboardDtoCopyWith(
          ExamLeaderboardDto value, $Res Function(ExamLeaderboardDto) then) =
      _$ExamLeaderboardDtoCopyWithImpl<$Res, ExamLeaderboardDto>;
  @useResult
  $Res call(
      {String scope, List<String> order, List<LeaderboardEntryDto> items});
}

/// @nodoc
class _$ExamLeaderboardDtoCopyWithImpl<$Res, $Val extends ExamLeaderboardDto>
    implements $ExamLeaderboardDtoCopyWith<$Res> {
  _$ExamLeaderboardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamLeaderboardDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? order = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamLeaderboardDtoImplCopyWith<$Res>
    implements $ExamLeaderboardDtoCopyWith<$Res> {
  factory _$$ExamLeaderboardDtoImplCopyWith(_$ExamLeaderboardDtoImpl value,
          $Res Function(_$ExamLeaderboardDtoImpl) then) =
      __$$ExamLeaderboardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String scope, List<String> order, List<LeaderboardEntryDto> items});
}

/// @nodoc
class __$$ExamLeaderboardDtoImplCopyWithImpl<$Res>
    extends _$ExamLeaderboardDtoCopyWithImpl<$Res, _$ExamLeaderboardDtoImpl>
    implements _$$ExamLeaderboardDtoImplCopyWith<$Res> {
  __$$ExamLeaderboardDtoImplCopyWithImpl(_$ExamLeaderboardDtoImpl _value,
      $Res Function(_$ExamLeaderboardDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamLeaderboardDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? order = null,
    Object? items = null,
  }) {
    return _then(_$ExamLeaderboardDtoImpl(
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamLeaderboardDtoImpl implements _ExamLeaderboardDto {
  const _$ExamLeaderboardDtoImpl(
      {required this.scope,
      final List<String> order = const <String>[],
      final List<LeaderboardEntryDto> items = const <LeaderboardEntryDto>[]})
      : _order = order,
        _items = items;

  factory _$ExamLeaderboardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamLeaderboardDtoImplFromJson(json);

  @override
  final String scope;
  final List<String> _order;
  @override
  @JsonKey()
  List<String> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  final List<LeaderboardEntryDto> _items;
  @override
  @JsonKey()
  List<LeaderboardEntryDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ExamLeaderboardDto(scope: $scope, order: $order, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamLeaderboardDtoImpl &&
            (identical(other.scope, scope) || other.scope == scope) &&
            const DeepCollectionEquality().equals(other._order, _order) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scope,
      const DeepCollectionEquality().hash(_order),
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of ExamLeaderboardDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamLeaderboardDtoImplCopyWith<_$ExamLeaderboardDtoImpl> get copyWith =>
      __$$ExamLeaderboardDtoImplCopyWithImpl<_$ExamLeaderboardDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamLeaderboardDtoImplToJson(
      this,
    );
  }
}

abstract class _ExamLeaderboardDto implements ExamLeaderboardDto {
  const factory _ExamLeaderboardDto(
      {required final String scope,
      final List<String> order,
      final List<LeaderboardEntryDto> items}) = _$ExamLeaderboardDtoImpl;

  factory _ExamLeaderboardDto.fromJson(Map<String, dynamic> json) =
      _$ExamLeaderboardDtoImpl.fromJson;

  @override
  String get scope;
  @override
  List<String> get order;
  @override
  List<LeaderboardEntryDto> get items;

  /// Create a copy of ExamLeaderboardDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamLeaderboardDtoImplCopyWith<_$ExamLeaderboardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
