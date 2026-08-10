// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phase_one_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStatusWriteRequest _$UserStatusWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _UserStatusWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$UserStatusWriteRequest {
  String get status => throw _privateConstructorUsedError;

  /// Serializes this UserStatusWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatusWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatusWriteRequestCopyWith<UserStatusWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusWriteRequestCopyWith<$Res> {
  factory $UserStatusWriteRequestCopyWith(UserStatusWriteRequest value,
          $Res Function(UserStatusWriteRequest) then) =
      _$UserStatusWriteRequestCopyWithImpl<$Res, UserStatusWriteRequest>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$UserStatusWriteRequestCopyWithImpl<$Res,
        $Val extends UserStatusWriteRequest>
    implements $UserStatusWriteRequestCopyWith<$Res> {
  _$UserStatusWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatusWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatusWriteRequestImplCopyWith<$Res>
    implements $UserStatusWriteRequestCopyWith<$Res> {
  factory _$$UserStatusWriteRequestImplCopyWith(
          _$UserStatusWriteRequestImpl value,
          $Res Function(_$UserStatusWriteRequestImpl) then) =
      __$$UserStatusWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$UserStatusWriteRequestImplCopyWithImpl<$Res>
    extends _$UserStatusWriteRequestCopyWithImpl<$Res,
        _$UserStatusWriteRequestImpl>
    implements _$$UserStatusWriteRequestImplCopyWith<$Res> {
  __$$UserStatusWriteRequestImplCopyWithImpl(
      _$UserStatusWriteRequestImpl _value,
      $Res Function(_$UserStatusWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatusWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UserStatusWriteRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatusWriteRequestImpl implements _UserStatusWriteRequest {
  const _$UserStatusWriteRequestImpl({required this.status});

  factory _$UserStatusWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusWriteRequestImplFromJson(json);

  @override
  final String status;

  @override
  String toString() {
    return 'UserStatusWriteRequest(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatusWriteRequestImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of UserStatusWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatusWriteRequestImplCopyWith<_$UserStatusWriteRequestImpl>
      get copyWith => __$$UserStatusWriteRequestImplCopyWithImpl<
          _$UserStatusWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _UserStatusWriteRequest implements UserStatusWriteRequest {
  const factory _UserStatusWriteRequest({required final String status}) =
      _$UserStatusWriteRequestImpl;

  factory _UserStatusWriteRequest.fromJson(Map<String, dynamic> json) =
      _$UserStatusWriteRequestImpl.fromJson;

  @override
  String get status;

  /// Create a copy of UserStatusWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatusWriteRequestImplCopyWith<_$UserStatusWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoleWriteRequest _$RoleWriteRequestFromJson(Map<String, dynamic> json) {
  return _RoleWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$RoleWriteRequest {
  List<String> get roles => throw _privateConstructorUsedError;

  /// Serializes this RoleWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleWriteRequestCopyWith<RoleWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleWriteRequestCopyWith<$Res> {
  factory $RoleWriteRequestCopyWith(
          RoleWriteRequest value, $Res Function(RoleWriteRequest) then) =
      _$RoleWriteRequestCopyWithImpl<$Res, RoleWriteRequest>;
  @useResult
  $Res call({List<String> roles});
}

/// @nodoc
class _$RoleWriteRequestCopyWithImpl<$Res, $Val extends RoleWriteRequest>
    implements $RoleWriteRequestCopyWith<$Res> {
  _$RoleWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleWriteRequestImplCopyWith<$Res>
    implements $RoleWriteRequestCopyWith<$Res> {
  factory _$$RoleWriteRequestImplCopyWith(_$RoleWriteRequestImpl value,
          $Res Function(_$RoleWriteRequestImpl) then) =
      __$$RoleWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> roles});
}

/// @nodoc
class __$$RoleWriteRequestImplCopyWithImpl<$Res>
    extends _$RoleWriteRequestCopyWithImpl<$Res, _$RoleWriteRequestImpl>
    implements _$$RoleWriteRequestImplCopyWith<$Res> {
  __$$RoleWriteRequestImplCopyWithImpl(_$RoleWriteRequestImpl _value,
      $Res Function(_$RoleWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = null,
  }) {
    return _then(_$RoleWriteRequestImpl(
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleWriteRequestImpl implements _RoleWriteRequest {
  const _$RoleWriteRequestImpl({required final List<String> roles})
      : _roles = roles;

  factory _$RoleWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleWriteRequestImplFromJson(json);

  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'RoleWriteRequest(roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleWriteRequestImpl &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roles));

  /// Create a copy of RoleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleWriteRequestImplCopyWith<_$RoleWriteRequestImpl> get copyWith =>
      __$$RoleWriteRequestImplCopyWithImpl<_$RoleWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _RoleWriteRequest implements RoleWriteRequest {
  const factory _RoleWriteRequest({required final List<String> roles}) =
      _$RoleWriteRequestImpl;

  factory _RoleWriteRequest.fromJson(Map<String, dynamic> json) =
      _$RoleWriteRequestImpl.fromJson;

  @override
  List<String> get roles;

  /// Create a copy of RoleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleWriteRequestImplCopyWith<_$RoleWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileWriteRequest _$ProfileWriteRequestFromJson(Map<String, dynamic> json) {
  return _ProfileWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileWriteRequest {
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get biography => throw _privateConstructorUsedError;
  List<String>? get expertise => throw _privateConstructorUsedError;

  /// Serializes this ProfileWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWriteRequestCopyWith<ProfileWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWriteRequestCopyWith<$Res> {
  factory $ProfileWriteRequestCopyWith(
          ProfileWriteRequest value, $Res Function(ProfileWriteRequest) then) =
      _$ProfileWriteRequestCopyWithImpl<$Res, ProfileWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? phone,
      String? timezone,
      String? locale,
      String? biography,
      List<String>? expertise});
}

/// @nodoc
class _$ProfileWriteRequestCopyWithImpl<$Res, $Val extends ProfileWriteRequest>
    implements $ProfileWriteRequestCopyWith<$Res> {
  _$ProfileWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? timezone = freezed,
    Object? locale = freezed,
    Object? biography = freezed,
    Object? expertise = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileWriteRequestImplCopyWith<$Res>
    implements $ProfileWriteRequestCopyWith<$Res> {
  factory _$$ProfileWriteRequestImplCopyWith(_$ProfileWriteRequestImpl value,
          $Res Function(_$ProfileWriteRequestImpl) then) =
      __$$ProfileWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? phone,
      String? timezone,
      String? locale,
      String? biography,
      List<String>? expertise});
}

/// @nodoc
class __$$ProfileWriteRequestImplCopyWithImpl<$Res>
    extends _$ProfileWriteRequestCopyWithImpl<$Res, _$ProfileWriteRequestImpl>
    implements _$$ProfileWriteRequestImplCopyWith<$Res> {
  __$$ProfileWriteRequestImplCopyWithImpl(_$ProfileWriteRequestImpl _value,
      $Res Function(_$ProfileWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? timezone = freezed,
    Object? locale = freezed,
    Object? biography = freezed,
    Object? expertise = freezed,
  }) {
    return _then(_$ProfileWriteRequestImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value._expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWriteRequestImpl implements _ProfileWriteRequest {
  const _$ProfileWriteRequestImpl(
      {@JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.phone,
      this.timezone,
      this.locale,
      this.biography,
      final List<String>? expertise})
      : _expertise = expertise;

  factory _$ProfileWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? timezone;
  @override
  final String? locale;
  @override
  final String? biography;
  final List<String>? _expertise;
  @override
  List<String>? get expertise {
    final value = _expertise;
    if (value == null) return null;
    if (_expertise is EqualUnmodifiableListView) return _expertise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileWriteRequest(displayName: $displayName, firstName: $firstName, lastName: $lastName, phone: $phone, timezone: $timezone, locale: $locale, biography: $biography, expertise: $expertise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWriteRequestImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            const DeepCollectionEquality()
                .equals(other._expertise, _expertise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      firstName,
      lastName,
      phone,
      timezone,
      locale,
      biography,
      const DeepCollectionEquality().hash(_expertise));

  /// Create a copy of ProfileWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWriteRequestImplCopyWith<_$ProfileWriteRequestImpl> get copyWith =>
      __$$ProfileWriteRequestImplCopyWithImpl<_$ProfileWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _ProfileWriteRequest implements ProfileWriteRequest {
  const factory _ProfileWriteRequest(
      {@JsonKey(name: 'display_name') required final String displayName,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? phone,
      final String? timezone,
      final String? locale,
      final String? biography,
      final List<String>? expertise}) = _$ProfileWriteRequestImpl;

  factory _ProfileWriteRequest.fromJson(Map<String, dynamic> json) =
      _$ProfileWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get phone;
  @override
  String? get timezone;
  @override
  String? get locale;
  @override
  String? get biography;
  @override
  List<String>? get expertise;

  /// Create a copy of ProfileWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWriteRequestImplCopyWith<_$ProfileWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) {
  return _CourseDto.fromJson(json);
}

/// @nodoc
mixin _$CourseDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_minor')
  int get priceMinor => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;

  /// Serializes this CourseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDtoCopyWith<CourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDtoCopyWith<$Res> {
  factory $CourseDtoCopyWith(CourseDto value, $Res Function(CourseDto) then) =
      _$CourseDtoCopyWithImpl<$Res, CourseDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      String title,
      String slug,
      String description,
      String language,
      String level,
      String status,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      int version,
      @JsonKey(name: 'category_name') String? categoryName});
}

/// @nodoc
class _$CourseDtoCopyWithImpl<$Res, $Val extends CourseDto>
    implements $CourseDtoCopyWith<$Res> {
  _$CourseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? thumbnailAssetId = freezed,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? language = null,
    Object? level = null,
    Object? status = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? version = null,
    Object? categoryName = freezed,
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
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseDtoImplCopyWith<$Res>
    implements $CourseDtoCopyWith<$Res> {
  factory _$$CourseDtoImplCopyWith(
          _$CourseDtoImpl value, $Res Function(_$CourseDtoImpl) then) =
      __$$CourseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId,
      String title,
      String slug,
      String description,
      String language,
      String level,
      String status,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      int version,
      @JsonKey(name: 'category_name') String? categoryName});
}

/// @nodoc
class __$$CourseDtoImplCopyWithImpl<$Res>
    extends _$CourseDtoCopyWithImpl<$Res, _$CourseDtoImpl>
    implements _$$CourseDtoImplCopyWith<$Res> {
  __$$CourseDtoImplCopyWithImpl(
      _$CourseDtoImpl _value, $Res Function(_$CourseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? thumbnailAssetId = freezed,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? language = null,
    Object? level = null,
    Object? status = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? version = null,
    Object? categoryName = freezed,
  }) {
    return _then(_$CourseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseDtoImpl implements _CourseDto {
  const _$CourseDtoImpl(
      {required this.id,
      @JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId,
      required this.title,
      required this.slug,
      this.description = '',
      this.language = 'bn',
      this.level = 'all',
      this.status = 'published',
      @JsonKey(name: 'is_free') this.isFree = false,
      @JsonKey(name: 'price_minor') this.priceMinor = 0,
      this.currency = 'BDT',
      this.version = 0,
      @JsonKey(name: 'category_name') this.categoryName});

  factory _$CourseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  final String? thumbnailAssetId;
  @override
  final String title;
  @override
  final String slug;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final String status;
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
  @JsonKey()
  final int version;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;

  @override
  String toString() {
    return 'CourseDto(id: $id, organizationId: $organizationId, thumbnailAssetId: $thumbnailAssetId, title: $title, slug: $slug, description: $description, language: $language, level: $level, status: $status, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.thumbnailAssetId, thumbnailAssetId) ||
                other.thumbnailAssetId == thumbnailAssetId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.priceMinor, priceMinor) ||
                other.priceMinor == priceMinor) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organizationId,
      thumbnailAssetId,
      title,
      slug,
      description,
      language,
      level,
      status,
      isFree,
      priceMinor,
      currency,
      version,
      categoryName);

  /// Create a copy of CourseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDtoImplCopyWith<_$CourseDtoImpl> get copyWith =>
      __$$CourseDtoImplCopyWithImpl<_$CourseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDtoImplToJson(
      this,
    );
  }
}

abstract class _CourseDto implements CourseDto {
  const factory _CourseDto(
      {required final String id,
      @JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'thumbnail_asset_id') final String? thumbnailAssetId,
      required final String title,
      required final String slug,
      final String description,
      final String language,
      final String level,
      final String status,
      @JsonKey(name: 'is_free') final bool isFree,
      @JsonKey(name: 'price_minor') final int priceMinor,
      final String currency,
      final int version,
      @JsonKey(name: 'category_name')
      final String? categoryName}) = _$CourseDtoImpl;

  factory _CourseDto.fromJson(Map<String, dynamic> json) =
      _$CourseDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  String get language;
  @override
  String get level;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'price_minor')
  int get priceMinor;
  @override
  String get currency;
  @override
  int get version;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;

  /// Create a copy of CourseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDtoImplCopyWith<_$CourseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseWriteRequest _$CourseWriteRequestFromJson(Map<String, dynamic> json) {
  return _CourseWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$CourseWriteRequest {
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_minor')
  int get priceMinor => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId => throw _privateConstructorUsedError;

  /// Serializes this CourseWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseWriteRequestCopyWith<CourseWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseWriteRequestCopyWith<$Res> {
  factory $CourseWriteRequestCopyWith(
          CourseWriteRequest value, $Res Function(CourseWriteRequest) then) =
      _$CourseWriteRequestCopyWithImpl<$Res, CourseWriteRequest>;
  @useResult
  $Res call(
      {String title,
      String slug,
      String description,
      String language,
      String level,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      int version,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId});
}

/// @nodoc
class _$CourseWriteRequestCopyWithImpl<$Res, $Val extends CourseWriteRequest>
    implements $CourseWriteRequestCopyWith<$Res> {
  _$CourseWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? language = null,
    Object? level = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? version = null,
    Object? categoryId = freezed,
    Object? thumbnailAssetId = freezed,
  }) {
    return _then(_value.copyWith(
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
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
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseWriteRequestImplCopyWith<$Res>
    implements $CourseWriteRequestCopyWith<$Res> {
  factory _$$CourseWriteRequestImplCopyWith(_$CourseWriteRequestImpl value,
          $Res Function(_$CourseWriteRequestImpl) then) =
      __$$CourseWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String slug,
      String description,
      String language,
      String level,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'price_minor') int priceMinor,
      String currency,
      int version,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId});
}

/// @nodoc
class __$$CourseWriteRequestImplCopyWithImpl<$Res>
    extends _$CourseWriteRequestCopyWithImpl<$Res, _$CourseWriteRequestImpl>
    implements _$$CourseWriteRequestImplCopyWith<$Res> {
  __$$CourseWriteRequestImplCopyWithImpl(_$CourseWriteRequestImpl _value,
      $Res Function(_$CourseWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? language = null,
    Object? level = null,
    Object? isFree = null,
    Object? priceMinor = null,
    Object? currency = null,
    Object? version = null,
    Object? categoryId = freezed,
    Object? thumbnailAssetId = freezed,
  }) {
    return _then(_$CourseWriteRequestImpl(
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
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
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailAssetId: freezed == thumbnailAssetId
          ? _value.thumbnailAssetId
          : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseWriteRequestImpl implements _CourseWriteRequest {
  const _$CourseWriteRequestImpl(
      {required this.title,
      required this.slug,
      required this.description,
      required this.language,
      required this.level,
      @JsonKey(name: 'is_free') required this.isFree,
      @JsonKey(name: 'price_minor') required this.priceMinor,
      required this.currency,
      required this.version,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId});

  factory _$CourseWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseWriteRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String language;
  @override
  final String level;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  @JsonKey(name: 'price_minor')
  final int priceMinor;
  @override
  final String currency;
  @override
  final int version;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  final String? thumbnailAssetId;

  @override
  String toString() {
    return 'CourseWriteRequest(title: $title, slug: $slug, description: $description, language: $language, level: $level, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryId: $categoryId, thumbnailAssetId: $thumbnailAssetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseWriteRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.priceMinor, priceMinor) ||
                other.priceMinor == priceMinor) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.thumbnailAssetId, thumbnailAssetId) ||
                other.thumbnailAssetId == thumbnailAssetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      slug,
      description,
      language,
      level,
      isFree,
      priceMinor,
      currency,
      version,
      categoryId,
      thumbnailAssetId);

  /// Create a copy of CourseWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseWriteRequestImplCopyWith<_$CourseWriteRequestImpl> get copyWith =>
      __$$CourseWriteRequestImplCopyWithImpl<_$CourseWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _CourseWriteRequest implements CourseWriteRequest {
  const factory _CourseWriteRequest(
      {required final String title,
      required final String slug,
      required final String description,
      required final String language,
      required final String level,
      @JsonKey(name: 'is_free') required final bool isFree,
      @JsonKey(name: 'price_minor') required final int priceMinor,
      required final String currency,
      required final int version,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'thumbnail_asset_id')
      final String? thumbnailAssetId}) = _$CourseWriteRequestImpl;

  factory _CourseWriteRequest.fromJson(Map<String, dynamic> json) =
      _$CourseWriteRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  String get language;
  @override
  String get level;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'price_minor')
  int get priceMinor;
  @override
  String get currency;
  @override
  int get version;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'thumbnail_asset_id')
  String? get thumbnailAssetId;

  /// Create a copy of CourseWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseWriteRequestImplCopyWith<_$CourseWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModuleWriteRequest _$ModuleWriteRequestFromJson(Map<String, dynamic> json) {
  return _ModuleWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$ModuleWriteRequest {
  String get title => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ModuleWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModuleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleWriteRequestCopyWith<ModuleWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleWriteRequestCopyWith<$Res> {
  factory $ModuleWriteRequestCopyWith(
          ModuleWriteRequest value, $Res Function(ModuleWriteRequest) then) =
      _$ModuleWriteRequestCopyWithImpl<$Res, ModuleWriteRequest>;
  @useResult
  $Res call({String title, int position, String? description});
}

/// @nodoc
class _$ModuleWriteRequestCopyWithImpl<$Res, $Val extends ModuleWriteRequest>
    implements $ModuleWriteRequestCopyWith<$Res> {
  _$ModuleWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? position = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleWriteRequestImplCopyWith<$Res>
    implements $ModuleWriteRequestCopyWith<$Res> {
  factory _$$ModuleWriteRequestImplCopyWith(_$ModuleWriteRequestImpl value,
          $Res Function(_$ModuleWriteRequestImpl) then) =
      __$$ModuleWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int position, String? description});
}

/// @nodoc
class __$$ModuleWriteRequestImplCopyWithImpl<$Res>
    extends _$ModuleWriteRequestCopyWithImpl<$Res, _$ModuleWriteRequestImpl>
    implements _$$ModuleWriteRequestImplCopyWith<$Res> {
  __$$ModuleWriteRequestImplCopyWithImpl(_$ModuleWriteRequestImpl _value,
      $Res Function(_$ModuleWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? position = null,
    Object? description = freezed,
  }) {
    return _then(_$ModuleWriteRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleWriteRequestImpl implements _ModuleWriteRequest {
  const _$ModuleWriteRequestImpl(
      {required this.title, required this.position, this.description});

  factory _$ModuleWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleWriteRequestImplFromJson(json);

  @override
  final String title;
  @override
  final int position;
  @override
  final String? description;

  @override
  String toString() {
    return 'ModuleWriteRequest(title: $title, position: $position, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleWriteRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, position, description);

  /// Create a copy of ModuleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleWriteRequestImplCopyWith<_$ModuleWriteRequestImpl> get copyWith =>
      __$$ModuleWriteRequestImplCopyWithImpl<_$ModuleWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _ModuleWriteRequest implements ModuleWriteRequest {
  const factory _ModuleWriteRequest(
      {required final String title,
      required final int position,
      final String? description}) = _$ModuleWriteRequestImpl;

  factory _ModuleWriteRequest.fromJson(Map<String, dynamic> json) =
      _$ModuleWriteRequestImpl.fromJson;

  @override
  String get title;
  @override
  int get position;
  @override
  String? get description;

  /// Create a copy of ModuleWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleWriteRequestImplCopyWith<_$ModuleWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonWriteRequest _$LessonWriteRequestFromJson(Map<String, dynamic> json) {
  return _LessonWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$LessonWriteRequest {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_type')
  String get lessonType => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview')
  bool get isPreview => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool get isPublished => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_asset_id')
  String? get mediaAssetId => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;

  /// Serializes this LessonWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonWriteRequestCopyWith<LessonWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonWriteRequestCopyWith<$Res> {
  factory $LessonWriteRequestCopyWith(
          LessonWriteRequest value, $Res Function(LessonWriteRequest) then) =
      _$LessonWriteRequestCopyWithImpl<$Res, LessonWriteRequest>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'lesson_type') String lessonType,
      int position,
      @JsonKey(name: 'is_preview') bool isPreview,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'is_published') bool isPublished,
      String? description,
      @JsonKey(name: 'media_asset_id') String? mediaAssetId,
      String? body,
      @JsonKey(name: 'duration_seconds') int? durationSeconds});
}

/// @nodoc
class _$LessonWriteRequestCopyWithImpl<$Res, $Val extends LessonWriteRequest>
    implements $LessonWriteRequestCopyWith<$Res> {
  _$LessonWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lessonType = null,
    Object? position = null,
    Object? isPreview = null,
    Object? isRequired = null,
    Object? isPublished = null,
    Object? description = freezed,
    Object? mediaAssetId = freezed,
    Object? body = freezed,
    Object? durationSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lessonType: null == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaAssetId: freezed == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonWriteRequestImplCopyWith<$Res>
    implements $LessonWriteRequestCopyWith<$Res> {
  factory _$$LessonWriteRequestImplCopyWith(_$LessonWriteRequestImpl value,
          $Res Function(_$LessonWriteRequestImpl) then) =
      __$$LessonWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'lesson_type') String lessonType,
      int position,
      @JsonKey(name: 'is_preview') bool isPreview,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'is_published') bool isPublished,
      String? description,
      @JsonKey(name: 'media_asset_id') String? mediaAssetId,
      String? body,
      @JsonKey(name: 'duration_seconds') int? durationSeconds});
}

/// @nodoc
class __$$LessonWriteRequestImplCopyWithImpl<$Res>
    extends _$LessonWriteRequestCopyWithImpl<$Res, _$LessonWriteRequestImpl>
    implements _$$LessonWriteRequestImplCopyWith<$Res> {
  __$$LessonWriteRequestImplCopyWithImpl(_$LessonWriteRequestImpl _value,
      $Res Function(_$LessonWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lessonType = null,
    Object? position = null,
    Object? isPreview = null,
    Object? isRequired = null,
    Object? isPublished = null,
    Object? description = freezed,
    Object? mediaAssetId = freezed,
    Object? body = freezed,
    Object? durationSeconds = freezed,
  }) {
    return _then(_$LessonWriteRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lessonType: null == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaAssetId: freezed == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonWriteRequestImpl implements _LessonWriteRequest {
  const _$LessonWriteRequestImpl(
      {required this.title,
      @JsonKey(name: 'lesson_type') required this.lessonType,
      required this.position,
      @JsonKey(name: 'is_preview') required this.isPreview,
      @JsonKey(name: 'is_required') required this.isRequired,
      @JsonKey(name: 'is_published') required this.isPublished,
      this.description,
      @JsonKey(name: 'media_asset_id') this.mediaAssetId,
      this.body,
      @JsonKey(name: 'duration_seconds') this.durationSeconds});

  factory _$LessonWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonWriteRequestImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'lesson_type')
  final String lessonType;
  @override
  final int position;
  @override
  @JsonKey(name: 'is_preview')
  final bool isPreview;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  @JsonKey(name: 'is_published')
  final bool isPublished;
  @override
  final String? description;
  @override
  @JsonKey(name: 'media_asset_id')
  final String? mediaAssetId;
  @override
  final String? body;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;

  @override
  String toString() {
    return 'LessonWriteRequest(title: $title, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, description: $description, mediaAssetId: $mediaAssetId, body: $body, durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonWriteRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaAssetId, mediaAssetId) ||
                other.mediaAssetId == mediaAssetId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      lessonType,
      position,
      isPreview,
      isRequired,
      isPublished,
      description,
      mediaAssetId,
      body,
      durationSeconds);

  /// Create a copy of LessonWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonWriteRequestImplCopyWith<_$LessonWriteRequestImpl> get copyWith =>
      __$$LessonWriteRequestImplCopyWithImpl<_$LessonWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _LessonWriteRequest implements LessonWriteRequest {
  const factory _LessonWriteRequest(
          {required final String title,
          @JsonKey(name: 'lesson_type') required final String lessonType,
          required final int position,
          @JsonKey(name: 'is_preview') required final bool isPreview,
          @JsonKey(name: 'is_required') required final bool isRequired,
          @JsonKey(name: 'is_published') required final bool isPublished,
          final String? description,
          @JsonKey(name: 'media_asset_id') final String? mediaAssetId,
          final String? body,
          @JsonKey(name: 'duration_seconds') final int? durationSeconds}) =
      _$LessonWriteRequestImpl;

  factory _LessonWriteRequest.fromJson(Map<String, dynamic> json) =
      _$LessonWriteRequestImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'lesson_type')
  String get lessonType;
  @override
  int get position;
  @override
  @JsonKey(name: 'is_preview')
  bool get isPreview;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  @JsonKey(name: 'is_published')
  bool get isPublished;
  @override
  String? get description;
  @override
  @JsonKey(name: 'media_asset_id')
  String? get mediaAssetId;
  @override
  String? get body;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;

  /// Create a copy of LessonWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonWriteRequestImplCopyWith<_$LessonWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseDetailDto _$CourseDetailDtoFromJson(Map<String, dynamic> json) {
  return _CourseDetailDto.fromJson(json);
}

/// @nodoc
mixin _$CourseDetailDto {
  CourseDto get course => throw _privateConstructorUsedError;
  List<CourseModuleDto> get modules => throw _privateConstructorUsedError;

  /// Serializes this CourseDetailDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDetailDtoCopyWith<CourseDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailDtoCopyWith<$Res> {
  factory $CourseDetailDtoCopyWith(
          CourseDetailDto value, $Res Function(CourseDetailDto) then) =
      _$CourseDetailDtoCopyWithImpl<$Res, CourseDetailDto>;
  @useResult
  $Res call({CourseDto course, List<CourseModuleDto> modules});

  $CourseDtoCopyWith<$Res> get course;
}

/// @nodoc
class _$CourseDetailDtoCopyWithImpl<$Res, $Val extends CourseDetailDto>
    implements $CourseDetailDtoCopyWith<$Res> {
  _$CourseDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseDto,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseModuleDto>,
    ) as $Val);
  }

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseDtoCopyWith<$Res> get course {
    return $CourseDtoCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDetailDtoImplCopyWith<$Res>
    implements $CourseDetailDtoCopyWith<$Res> {
  factory _$$CourseDetailDtoImplCopyWith(_$CourseDetailDtoImpl value,
          $Res Function(_$CourseDetailDtoImpl) then) =
      __$$CourseDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseDto course, List<CourseModuleDto> modules});

  @override
  $CourseDtoCopyWith<$Res> get course;
}

/// @nodoc
class __$$CourseDetailDtoImplCopyWithImpl<$Res>
    extends _$CourseDetailDtoCopyWithImpl<$Res, _$CourseDetailDtoImpl>
    implements _$$CourseDetailDtoImplCopyWith<$Res> {
  __$$CourseDetailDtoImplCopyWithImpl(
      _$CourseDetailDtoImpl _value, $Res Function(_$CourseDetailDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? modules = null,
  }) {
    return _then(_$CourseDetailDtoImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseDto,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseModuleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseDetailDtoImpl implements _CourseDetailDto {
  const _$CourseDetailDtoImpl(
      {required this.course,
      final List<CourseModuleDto> modules = const <CourseModuleDto>[]})
      : _modules = modules;

  factory _$CourseDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDetailDtoImplFromJson(json);

  @override
  final CourseDto course;
  final List<CourseModuleDto> _modules;
  @override
  @JsonKey()
  List<CourseModuleDto> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'CourseDetailDto(course: $course, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDetailDtoImpl &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, course, const DeepCollectionEquality().hash(_modules));

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDetailDtoImplCopyWith<_$CourseDetailDtoImpl> get copyWith =>
      __$$CourseDetailDtoImplCopyWithImpl<_$CourseDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _CourseDetailDto implements CourseDetailDto {
  const factory _CourseDetailDto(
      {required final CourseDto course,
      final List<CourseModuleDto> modules}) = _$CourseDetailDtoImpl;

  factory _CourseDetailDto.fromJson(Map<String, dynamic> json) =
      _$CourseDetailDtoImpl.fromJson;

  @override
  CourseDto get course;
  @override
  List<CourseModuleDto> get modules;

  /// Create a copy of CourseDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDetailDtoImplCopyWith<_$CourseDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseModuleDto _$CourseModuleDtoFromJson(Map<String, dynamic> json) {
  return _CourseModuleDto.fromJson(json);
}

/// @nodoc
mixin _$CourseModuleDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<LessonDto> get lessons => throw _privateConstructorUsedError;

  /// Serializes this CourseModuleDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseModuleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseModuleDtoCopyWith<CourseModuleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModuleDtoCopyWith<$Res> {
  factory $CourseModuleDtoCopyWith(
          CourseModuleDto value, $Res Function(CourseModuleDto) then) =
      _$CourseModuleDtoCopyWithImpl<$Res, CourseModuleDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int position,
      List<LessonDto> lessons});
}

/// @nodoc
class _$CourseModuleDtoCopyWithImpl<$Res, $Val extends CourseModuleDto>
    implements $CourseModuleDtoCopyWith<$Res> {
  _$CourseModuleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseModuleDto
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
              as List<LessonDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseModuleDtoImplCopyWith<$Res>
    implements $CourseModuleDtoCopyWith<$Res> {
  factory _$$CourseModuleDtoImplCopyWith(_$CourseModuleDtoImpl value,
          $Res Function(_$CourseModuleDtoImpl) then) =
      __$$CourseModuleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int position,
      List<LessonDto> lessons});
}

/// @nodoc
class __$$CourseModuleDtoImplCopyWithImpl<$Res>
    extends _$CourseModuleDtoCopyWithImpl<$Res, _$CourseModuleDtoImpl>
    implements _$$CourseModuleDtoImplCopyWith<$Res> {
  __$$CourseModuleDtoImplCopyWithImpl(
      _$CourseModuleDtoImpl _value, $Res Function(_$CourseModuleDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseModuleDto
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
    return _then(_$CourseModuleDtoImpl(
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
              as List<LessonDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModuleDtoImpl implements _CourseModuleDto {
  const _$CourseModuleDtoImpl(
      {required this.id,
      required this.title,
      this.description = '',
      this.position = 0,
      final List<LessonDto> lessons = const <LessonDto>[]})
      : _lessons = lessons;

  factory _$CourseModuleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModuleDtoImplFromJson(json);

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
  final List<LessonDto> _lessons;
  @override
  @JsonKey()
  List<LessonDto> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'CourseModuleDto(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModuleDtoImpl &&
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

  /// Create a copy of CourseModuleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModuleDtoImplCopyWith<_$CourseModuleDtoImpl> get copyWith =>
      __$$CourseModuleDtoImplCopyWithImpl<_$CourseModuleDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModuleDtoImplToJson(
      this,
    );
  }
}

abstract class _CourseModuleDto implements CourseModuleDto {
  const factory _CourseModuleDto(
      {required final String id,
      required final String title,
      final String description,
      final int position,
      final List<LessonDto> lessons}) = _$CourseModuleDtoImpl;

  factory _CourseModuleDto.fromJson(Map<String, dynamic> json) =
      _$CourseModuleDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get position;
  @override
  List<LessonDto> get lessons;

  /// Create a copy of CourseModuleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseModuleDtoImplCopyWith<_$CourseModuleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) {
  return _LessonDto.fromJson(json);
}

/// @nodoc
mixin _$LessonDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_type')
  String? get lessonType => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview')
  bool get isPreview => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_asset_id')
  String? get mediaAssetId => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this LessonDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonDtoCopyWith<LessonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDtoCopyWith<$Res> {
  factory $LessonDtoCopyWith(LessonDto value, $Res Function(LessonDto) then) =
      _$LessonDtoCopyWithImpl<$Res, LessonDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      @JsonKey(name: 'lesson_type') String? lessonType,
      int position,
      @JsonKey(name: 'is_preview') bool isPreview,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'media_asset_id') String? mediaAssetId,
      String? body});
}

/// @nodoc
class _$LessonDtoCopyWithImpl<$Res, $Val extends LessonDto>
    implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? lessonType = freezed,
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
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$LessonDtoImplCopyWith<$Res>
    implements $LessonDtoCopyWith<$Res> {
  factory _$$LessonDtoImplCopyWith(
          _$LessonDtoImpl value, $Res Function(_$LessonDtoImpl) then) =
      __$$LessonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      @JsonKey(name: 'lesson_type') String? lessonType,
      int position,
      @JsonKey(name: 'is_preview') bool isPreview,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'media_asset_id') String? mediaAssetId,
      String? body});
}

/// @nodoc
class __$$LessonDtoImplCopyWithImpl<$Res>
    extends _$LessonDtoCopyWithImpl<$Res, _$LessonDtoImpl>
    implements _$$LessonDtoImplCopyWith<$Res> {
  __$$LessonDtoImplCopyWithImpl(
      _$LessonDtoImpl _value, $Res Function(_$LessonDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? lessonType = freezed,
    Object? position = null,
    Object? isPreview = null,
    Object? isRequired = null,
    Object? isPublished = null,
    Object? durationSeconds = freezed,
    Object? mediaAssetId = freezed,
    Object? body = freezed,
  }) {
    return _then(_$LessonDtoImpl(
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
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$LessonDtoImpl implements _LessonDto {
  const _$LessonDtoImpl(
      {required this.id,
      required this.title,
      this.description = '',
      this.type = 'text',
      @JsonKey(name: 'lesson_type') this.lessonType,
      this.position = 0,
      @JsonKey(name: 'is_preview') this.isPreview = false,
      @JsonKey(name: 'is_required') this.isRequired = false,
      @JsonKey(name: 'is_published') this.isPublished = true,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      @JsonKey(name: 'media_asset_id') this.mediaAssetId,
      this.body});

  factory _$LessonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonDtoImplFromJson(json);

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
  @JsonKey(name: 'lesson_type')
  final String? lessonType;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey(name: 'is_preview')
  final bool isPreview;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  @JsonKey(name: 'is_published')
  final bool isPublished;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  @JsonKey(name: 'media_asset_id')
  final String? mediaAssetId;
  @override
  final String? body;

  @override
  String toString() {
    return 'LessonDto(id: $id, title: $title, description: $description, type: $type, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
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
      lessonType,
      position,
      isPreview,
      isRequired,
      isPublished,
      durationSeconds,
      mediaAssetId,
      body);

  /// Create a copy of LessonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonDtoImplCopyWith<_$LessonDtoImpl> get copyWith =>
      __$$LessonDtoImplCopyWithImpl<_$LessonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonDtoImplToJson(
      this,
    );
  }
}

abstract class _LessonDto implements LessonDto {
  const factory _LessonDto(
      {required final String id,
      required final String title,
      final String description,
      final String type,
      @JsonKey(name: 'lesson_type') final String? lessonType,
      final int position,
      @JsonKey(name: 'is_preview') final bool isPreview,
      @JsonKey(name: 'is_required') final bool isRequired,
      @JsonKey(name: 'is_published') final bool isPublished,
      @JsonKey(name: 'duration_seconds') final int? durationSeconds,
      @JsonKey(name: 'media_asset_id') final String? mediaAssetId,
      final String? body}) = _$LessonDtoImpl;

  factory _LessonDto.fromJson(Map<String, dynamic> json) =
      _$LessonDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  @JsonKey(name: 'lesson_type')
  String? get lessonType;
  @override
  int get position;
  @override
  @JsonKey(name: 'is_preview')
  bool get isPreview;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  @JsonKey(name: 'is_published')
  bool get isPublished;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  @JsonKey(name: 'media_asset_id')
  String? get mediaAssetId;
  @override
  String? get body;

  /// Create a copy of LessonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonDtoImplCopyWith<_$LessonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnrollmentDto _$EnrollmentDtoFromJson(Map<String, dynamic> json) {
  return _EnrollmentDto.fromJson(json);
}

/// @nodoc
mixin _$EnrollmentDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_percentage')
  double get completionPercentage => throw _privateConstructorUsedError;

  /// Serializes this EnrollmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnrollmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnrollmentDtoCopyWith<EnrollmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollmentDtoCopyWith<$Res> {
  factory $EnrollmentDtoCopyWith(
          EnrollmentDto value, $Res Function(EnrollmentDto) then) =
      _$EnrollmentDtoCopyWithImpl<$Res, EnrollmentDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'student_id') String studentId,
      String status,
      @JsonKey(name: 'completion_percentage') double completionPercentage});
}

/// @nodoc
class _$EnrollmentDtoCopyWithImpl<$Res, $Val extends EnrollmentDto>
    implements $EnrollmentDtoCopyWith<$Res> {
  _$EnrollmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnrollmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? status = null,
    Object? completionPercentage = null,
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
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrollmentDtoImplCopyWith<$Res>
    implements $EnrollmentDtoCopyWith<$Res> {
  factory _$$EnrollmentDtoImplCopyWith(
          _$EnrollmentDtoImpl value, $Res Function(_$EnrollmentDtoImpl) then) =
      __$$EnrollmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'student_id') String studentId,
      String status,
      @JsonKey(name: 'completion_percentage') double completionPercentage});
}

/// @nodoc
class __$$EnrollmentDtoImplCopyWithImpl<$Res>
    extends _$EnrollmentDtoCopyWithImpl<$Res, _$EnrollmentDtoImpl>
    implements _$$EnrollmentDtoImplCopyWith<$Res> {
  __$$EnrollmentDtoImplCopyWithImpl(
      _$EnrollmentDtoImpl _value, $Res Function(_$EnrollmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnrollmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? status = null,
    Object? completionPercentage = null,
  }) {
    return _then(_$EnrollmentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollmentDtoImpl implements _EnrollmentDto {
  const _$EnrollmentDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'student_id') required this.studentId,
      required this.status,
      @JsonKey(name: 'completion_percentage') this.completionPercentage = 0});

  factory _$EnrollmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollmentDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  final String status;
  @override
  @JsonKey(name: 'completion_percentage')
  final double completionPercentage;

  @override
  String toString() {
    return 'EnrollmentDto(id: $id, courseId: $courseId, studentId: $studentId, status: $status, completionPercentage: $completionPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courseId, studentId, status, completionPercentage);

  /// Create a copy of EnrollmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollmentDtoImplCopyWith<_$EnrollmentDtoImpl> get copyWith =>
      __$$EnrollmentDtoImplCopyWithImpl<_$EnrollmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollmentDtoImplToJson(
      this,
    );
  }
}

abstract class _EnrollmentDto implements EnrollmentDto {
  const factory _EnrollmentDto(
      {required final String id,
      @JsonKey(name: 'course_id') required final String courseId,
      @JsonKey(name: 'student_id') required final String studentId,
      required final String status,
      @JsonKey(name: 'completion_percentage')
      final double completionPercentage}) = _$EnrollmentDtoImpl;

  factory _EnrollmentDto.fromJson(Map<String, dynamic> json) =
      _$EnrollmentDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  String get status;
  @override
  @JsonKey(name: 'completion_percentage')
  double get completionPercentage;

  /// Create a copy of EnrollmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnrollmentDtoImplCopyWith<_$EnrollmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressWriteRequest _$ProgressWriteRequestFromJson(Map<String, dynamic> json) {
  return _ProgressWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$ProgressWriteRequest {
  @JsonKey(name: 'position_seconds')
  int get positionSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'watched_seconds_delta')
  int get watchedSecondsDelta => throw _privateConstructorUsedError;
  @JsonKey(name: 'manual_complete')
  bool get manualComplete => throw _privateConstructorUsedError;

  /// Serializes this ProgressWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressWriteRequestCopyWith<ProgressWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressWriteRequestCopyWith<$Res> {
  factory $ProgressWriteRequestCopyWith(ProgressWriteRequest value,
          $Res Function(ProgressWriteRequest) then) =
      _$ProgressWriteRequestCopyWithImpl<$Res, ProgressWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'watched_seconds_delta') int watchedSecondsDelta,
      @JsonKey(name: 'manual_complete') bool manualComplete});
}

/// @nodoc
class _$ProgressWriteRequestCopyWithImpl<$Res,
        $Val extends ProgressWriteRequest>
    implements $ProgressWriteRequestCopyWith<$Res> {
  _$ProgressWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionSeconds = null,
    Object? watchedSecondsDelta = null,
    Object? manualComplete = null,
  }) {
    return _then(_value.copyWith(
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      watchedSecondsDelta: null == watchedSecondsDelta
          ? _value.watchedSecondsDelta
          : watchedSecondsDelta // ignore: cast_nullable_to_non_nullable
              as int,
      manualComplete: null == manualComplete
          ? _value.manualComplete
          : manualComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressWriteRequestImplCopyWith<$Res>
    implements $ProgressWriteRequestCopyWith<$Res> {
  factory _$$ProgressWriteRequestImplCopyWith(_$ProgressWriteRequestImpl value,
          $Res Function(_$ProgressWriteRequestImpl) then) =
      __$$ProgressWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'watched_seconds_delta') int watchedSecondsDelta,
      @JsonKey(name: 'manual_complete') bool manualComplete});
}

/// @nodoc
class __$$ProgressWriteRequestImplCopyWithImpl<$Res>
    extends _$ProgressWriteRequestCopyWithImpl<$Res, _$ProgressWriteRequestImpl>
    implements _$$ProgressWriteRequestImplCopyWith<$Res> {
  __$$ProgressWriteRequestImplCopyWithImpl(_$ProgressWriteRequestImpl _value,
      $Res Function(_$ProgressWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionSeconds = null,
    Object? watchedSecondsDelta = null,
    Object? manualComplete = null,
  }) {
    return _then(_$ProgressWriteRequestImpl(
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      watchedSecondsDelta: null == watchedSecondsDelta
          ? _value.watchedSecondsDelta
          : watchedSecondsDelta // ignore: cast_nullable_to_non_nullable
              as int,
      manualComplete: null == manualComplete
          ? _value.manualComplete
          : manualComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressWriteRequestImpl implements _ProgressWriteRequest {
  const _$ProgressWriteRequestImpl(
      {@JsonKey(name: 'position_seconds') required this.positionSeconds,
      @JsonKey(name: 'watched_seconds_delta') required this.watchedSecondsDelta,
      @JsonKey(name: 'manual_complete') this.manualComplete = false});

  factory _$ProgressWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'position_seconds')
  final int positionSeconds;
  @override
  @JsonKey(name: 'watched_seconds_delta')
  final int watchedSecondsDelta;
  @override
  @JsonKey(name: 'manual_complete')
  final bool manualComplete;

  @override
  String toString() {
    return 'ProgressWriteRequest(positionSeconds: $positionSeconds, watchedSecondsDelta: $watchedSecondsDelta, manualComplete: $manualComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressWriteRequestImpl &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.watchedSecondsDelta, watchedSecondsDelta) ||
                other.watchedSecondsDelta == watchedSecondsDelta) &&
            (identical(other.manualComplete, manualComplete) ||
                other.manualComplete == manualComplete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, positionSeconds, watchedSecondsDelta, manualComplete);

  /// Create a copy of ProgressWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressWriteRequestImplCopyWith<_$ProgressWriteRequestImpl>
      get copyWith =>
          __$$ProgressWriteRequestImplCopyWithImpl<_$ProgressWriteRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _ProgressWriteRequest implements ProgressWriteRequest {
  const factory _ProgressWriteRequest(
      {@JsonKey(name: 'position_seconds') required final int positionSeconds,
      @JsonKey(name: 'watched_seconds_delta')
      required final int watchedSecondsDelta,
      @JsonKey(name: 'manual_complete')
      final bool manualComplete}) = _$ProgressWriteRequestImpl;

  factory _ProgressWriteRequest.fromJson(Map<String, dynamic> json) =
      _$ProgressWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'position_seconds')
  int get positionSeconds;
  @override
  @JsonKey(name: 'watched_seconds_delta')
  int get watchedSecondsDelta;
  @override
  @JsonKey(name: 'manual_complete')
  bool get manualComplete;

  /// Create a copy of ProgressWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressWriteRequestImplCopyWith<_$ProgressWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgressDto _$ProgressDtoFromJson(Map<String, dynamic> json) {
  return _ProgressDto.fromJson(json);
}

/// @nodoc
mixin _$ProgressDto {
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_seconds')
  int get positionSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_watched_seconds')
  int get totalWatchedSeconds => throw _privateConstructorUsedError;

  /// Serializes this ProgressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressDtoCopyWith<ProgressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressDtoCopyWith<$Res> {
  factory $ProgressDtoCopyWith(
          ProgressDto value, $Res Function(ProgressDto) then) =
      _$ProgressDtoCopyWithImpl<$Res, ProgressDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') String lessonId,
      String state,
      @JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'total_watched_seconds') int totalWatchedSeconds});
}

/// @nodoc
class _$ProgressDtoCopyWithImpl<$Res, $Val extends ProgressDto>
    implements $ProgressDtoCopyWith<$Res> {
  _$ProgressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? state = null,
    Object? positionSeconds = null,
    Object? totalWatchedSeconds = null,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalWatchedSeconds: null == totalWatchedSeconds
          ? _value.totalWatchedSeconds
          : totalWatchedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressDtoImplCopyWith<$Res>
    implements $ProgressDtoCopyWith<$Res> {
  factory _$$ProgressDtoImplCopyWith(
          _$ProgressDtoImpl value, $Res Function(_$ProgressDtoImpl) then) =
      __$$ProgressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') String lessonId,
      String state,
      @JsonKey(name: 'position_seconds') int positionSeconds,
      @JsonKey(name: 'total_watched_seconds') int totalWatchedSeconds});
}

/// @nodoc
class __$$ProgressDtoImplCopyWithImpl<$Res>
    extends _$ProgressDtoCopyWithImpl<$Res, _$ProgressDtoImpl>
    implements _$$ProgressDtoImplCopyWith<$Res> {
  __$$ProgressDtoImplCopyWithImpl(
      _$ProgressDtoImpl _value, $Res Function(_$ProgressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? state = null,
    Object? positionSeconds = null,
    Object? totalWatchedSeconds = null,
  }) {
    return _then(_$ProgressDtoImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      positionSeconds: null == positionSeconds
          ? _value.positionSeconds
          : positionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalWatchedSeconds: null == totalWatchedSeconds
          ? _value.totalWatchedSeconds
          : totalWatchedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressDtoImpl implements _ProgressDto {
  const _$ProgressDtoImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      required this.state,
      @JsonKey(name: 'position_seconds') required this.positionSeconds,
      @JsonKey(name: 'total_watched_seconds')
      required this.totalWatchedSeconds});

  factory _$ProgressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressDtoImplFromJson(json);

  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  final String state;
  @override
  @JsonKey(name: 'position_seconds')
  final int positionSeconds;
  @override
  @JsonKey(name: 'total_watched_seconds')
  final int totalWatchedSeconds;

  @override
  String toString() {
    return 'ProgressDto(lessonId: $lessonId, state: $state, positionSeconds: $positionSeconds, totalWatchedSeconds: $totalWatchedSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressDtoImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.totalWatchedSeconds, totalWatchedSeconds) ||
                other.totalWatchedSeconds == totalWatchedSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, lessonId, state, positionSeconds, totalWatchedSeconds);

  /// Create a copy of ProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressDtoImplCopyWith<_$ProgressDtoImpl> get copyWith =>
      __$$ProgressDtoImplCopyWithImpl<_$ProgressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressDtoImplToJson(
      this,
    );
  }
}

abstract class _ProgressDto implements ProgressDto {
  const factory _ProgressDto(
      {@JsonKey(name: 'lesson_id') required final String lessonId,
      required final String state,
      @JsonKey(name: 'position_seconds') required final int positionSeconds,
      @JsonKey(name: 'total_watched_seconds')
      required final int totalWatchedSeconds}) = _$ProgressDtoImpl;

  factory _ProgressDto.fromJson(Map<String, dynamic> json) =
      _$ProgressDtoImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  String get state;
  @override
  @JsonKey(name: 'position_seconds')
  int get positionSeconds;
  @override
  @JsonKey(name: 'total_watched_seconds')
  int get totalWatchedSeconds;

  /// Create a copy of ProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressDtoImplCopyWith<_$ProgressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizOptionDto _$QuizOptionDtoFromJson(Map<String, dynamic> json) {
  return _QuizOptionDto.fromJson(json);
}

/// @nodoc
mixin _$QuizOptionDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;

  /// Serializes this QuizOptionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizOptionDtoCopyWith<QuizOptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizOptionDtoCopyWith<$Res> {
  factory $QuizOptionDtoCopyWith(
          QuizOptionDto value, $Res Function(QuizOptionDto) then) =
      _$QuizOptionDtoCopyWithImpl<$Res, QuizOptionDto>;
  @useResult
  $Res call({String id, String text, bool? correct});
}

/// @nodoc
class _$QuizOptionDtoCopyWithImpl<$Res, $Val extends QuizOptionDto>
    implements $QuizOptionDtoCopyWith<$Res> {
  _$QuizOptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizOptionDto
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
abstract class _$$QuizOptionDtoImplCopyWith<$Res>
    implements $QuizOptionDtoCopyWith<$Res> {
  factory _$$QuizOptionDtoImplCopyWith(
          _$QuizOptionDtoImpl value, $Res Function(_$QuizOptionDtoImpl) then) =
      __$$QuizOptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, bool? correct});
}

/// @nodoc
class __$$QuizOptionDtoImplCopyWithImpl<$Res>
    extends _$QuizOptionDtoCopyWithImpl<$Res, _$QuizOptionDtoImpl>
    implements _$$QuizOptionDtoImplCopyWith<$Res> {
  __$$QuizOptionDtoImplCopyWithImpl(
      _$QuizOptionDtoImpl _value, $Res Function(_$QuizOptionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? correct = freezed,
  }) {
    return _then(_$QuizOptionDtoImpl(
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
class _$QuizOptionDtoImpl implements _QuizOptionDto {
  const _$QuizOptionDtoImpl(
      {required this.id, required this.text, this.correct});

  factory _$QuizOptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizOptionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final bool? correct;

  @override
  String toString() {
    return 'QuizOptionDto(id: $id, text: $text, correct: $correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizOptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, correct);

  /// Create a copy of QuizOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizOptionDtoImplCopyWith<_$QuizOptionDtoImpl> get copyWith =>
      __$$QuizOptionDtoImplCopyWithImpl<_$QuizOptionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizOptionDtoImplToJson(
      this,
    );
  }
}

abstract class _QuizOptionDto implements QuizOptionDto {
  const factory _QuizOptionDto(
      {required final String id,
      required final String text,
      final bool? correct}) = _$QuizOptionDtoImpl;

  factory _QuizOptionDto.fromJson(Map<String, dynamic> json) =
      _$QuizOptionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  bool? get correct;

  /// Create a copy of QuizOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizOptionDtoImplCopyWith<_$QuizOptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionWriteRequest _$OptionWriteRequestFromJson(Map<String, dynamic> json) {
  return _OptionWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$OptionWriteRequest {
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool get isCorrect => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this OptionWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionWriteRequestCopyWith<OptionWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionWriteRequestCopyWith<$Res> {
  factory $OptionWriteRequestCopyWith(
          OptionWriteRequest value, $Res Function(OptionWriteRequest) then) =
      _$OptionWriteRequestCopyWithImpl<$Res, OptionWriteRequest>;
  @useResult
  $Res call(
      {String text, @JsonKey(name: 'is_correct') bool isCorrect, int position});
}

/// @nodoc
class _$OptionWriteRequestCopyWithImpl<$Res, $Val extends OptionWriteRequest>
    implements $OptionWriteRequestCopyWith<$Res> {
  _$OptionWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionWriteRequestImplCopyWith<$Res>
    implements $OptionWriteRequestCopyWith<$Res> {
  factory _$$OptionWriteRequestImplCopyWith(_$OptionWriteRequestImpl value,
          $Res Function(_$OptionWriteRequestImpl) then) =
      __$$OptionWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text, @JsonKey(name: 'is_correct') bool isCorrect, int position});
}

/// @nodoc
class __$$OptionWriteRequestImplCopyWithImpl<$Res>
    extends _$OptionWriteRequestCopyWithImpl<$Res, _$OptionWriteRequestImpl>
    implements _$$OptionWriteRequestImplCopyWith<$Res> {
  __$$OptionWriteRequestImplCopyWithImpl(_$OptionWriteRequestImpl _value,
      $Res Function(_$OptionWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
    Object? position = null,
  }) {
    return _then(_$OptionWriteRequestImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionWriteRequestImpl implements _OptionWriteRequest {
  const _$OptionWriteRequestImpl(
      {required this.text,
      @JsonKey(name: 'is_correct') required this.isCorrect,
      required this.position});

  factory _$OptionWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionWriteRequestImplFromJson(json);

  @override
  final String text;
  @override
  @JsonKey(name: 'is_correct')
  final bool isCorrect;
  @override
  final int position;

  @override
  String toString() {
    return 'OptionWriteRequest(text: $text, isCorrect: $isCorrect, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionWriteRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect, position);

  /// Create a copy of OptionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionWriteRequestImplCopyWith<_$OptionWriteRequestImpl> get copyWith =>
      __$$OptionWriteRequestImplCopyWithImpl<_$OptionWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _OptionWriteRequest implements OptionWriteRequest {
  const factory _OptionWriteRequest(
      {required final String text,
      @JsonKey(name: 'is_correct') required final bool isCorrect,
      required final int position}) = _$OptionWriteRequestImpl;

  factory _OptionWriteRequest.fromJson(Map<String, dynamic> json) =
      _$OptionWriteRequestImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(name: 'is_correct')
  bool get isCorrect;
  @override
  int get position;

  /// Create a copy of OptionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionWriteRequestImplCopyWith<_$OptionWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionWriteRequest _$QuestionWriteRequestFromJson(Map<String, dynamic> json) {
  return _QuestionWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$QuestionWriteRequest {
  @JsonKey(name: 'question_type')
  String get questionType => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  double get points => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<OptionWriteRequest> get options => throw _privateConstructorUsedError;

  /// Serializes this QuestionWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionWriteRequestCopyWith<QuestionWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionWriteRequestCopyWith<$Res> {
  factory $QuestionWriteRequestCopyWith(QuestionWriteRequest value,
          $Res Function(QuestionWriteRequest) then) =
      _$QuestionWriteRequestCopyWithImpl<$Res, QuestionWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question_type') String questionType,
      String prompt,
      double points,
      int position,
      List<OptionWriteRequest> options});
}

/// @nodoc
class _$QuestionWriteRequestCopyWithImpl<$Res,
        $Val extends QuestionWriteRequest>
    implements $QuestionWriteRequestCopyWith<$Res> {
  _$QuestionWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionType = null,
    Object? prompt = null,
    Object? points = null,
    Object? position = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionWriteRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionWriteRequestImplCopyWith<$Res>
    implements $QuestionWriteRequestCopyWith<$Res> {
  factory _$$QuestionWriteRequestImplCopyWith(_$QuestionWriteRequestImpl value,
          $Res Function(_$QuestionWriteRequestImpl) then) =
      __$$QuestionWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question_type') String questionType,
      String prompt,
      double points,
      int position,
      List<OptionWriteRequest> options});
}

/// @nodoc
class __$$QuestionWriteRequestImplCopyWithImpl<$Res>
    extends _$QuestionWriteRequestCopyWithImpl<$Res, _$QuestionWriteRequestImpl>
    implements _$$QuestionWriteRequestImplCopyWith<$Res> {
  __$$QuestionWriteRequestImplCopyWithImpl(_$QuestionWriteRequestImpl _value,
      $Res Function(_$QuestionWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionType = null,
    Object? prompt = null,
    Object? points = null,
    Object? position = null,
    Object? options = null,
  }) {
    return _then(_$QuestionWriteRequestImpl(
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionWriteRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionWriteRequestImpl implements _QuestionWriteRequest {
  const _$QuestionWriteRequestImpl(
      {@JsonKey(name: 'question_type') required this.questionType,
      required this.prompt,
      required this.points,
      required this.position,
      required final List<OptionWriteRequest> options})
      : _options = options;

  factory _$QuestionWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'question_type')
  final String questionType;
  @override
  final String prompt;
  @override
  final double points;
  @override
  final int position;
  final List<OptionWriteRequest> _options;
  @override
  List<OptionWriteRequest> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuestionWriteRequest(questionType: $questionType, prompt: $prompt, points: $points, position: $position, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionWriteRequestImpl &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionType, prompt, points,
      position, const DeepCollectionEquality().hash(_options));

  /// Create a copy of QuestionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionWriteRequestImplCopyWith<_$QuestionWriteRequestImpl>
      get copyWith =>
          __$$QuestionWriteRequestImplCopyWithImpl<_$QuestionWriteRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _QuestionWriteRequest implements QuestionWriteRequest {
  const factory _QuestionWriteRequest(
          {@JsonKey(name: 'question_type') required final String questionType,
          required final String prompt,
          required final double points,
          required final int position,
          required final List<OptionWriteRequest> options}) =
      _$QuestionWriteRequestImpl;

  factory _QuestionWriteRequest.fromJson(Map<String, dynamic> json) =
      _$QuestionWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'question_type')
  String get questionType;
  @override
  String get prompt;
  @override
  double get points;
  @override
  int get position;
  @override
  List<OptionWriteRequest> get options;

  /// Create a copy of QuestionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionWriteRequestImplCopyWith<_$QuestionWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuizWriteRequest _$QuizWriteRequestFromJson(Map<String, dynamic> json) {
  return _QuizWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$QuizWriteRequest {
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'pass_percentage')
  double get passPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String? get lessonId => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'randomize_questions')
  bool? get randomizeQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'randomize_options')
  bool? get randomizeOptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_from')
  DateTime? get availableFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'results_visibility')
  String? get resultsVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool? get isRequired => throw _privateConstructorUsedError;

  /// Serializes this QuizWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizWriteRequestCopyWith<QuizWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizWriteRequestCopyWith<$Res> {
  factory $QuizWriteRequestCopyWith(
          QuizWriteRequest value, $Res Function(QuizWriteRequest) then) =
      _$QuizWriteRequestCopyWithImpl<$Res, QuizWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String? instructions,
      @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
      @JsonKey(name: 'randomize_questions') bool? randomizeQuestions,
      @JsonKey(name: 'randomize_options') bool? randomizeOptions,
      @JsonKey(name: 'available_from') DateTime? availableFrom,
      @JsonKey(name: 'available_until') DateTime? availableUntil,
      @JsonKey(name: 'results_visibility') String? resultsVisibility,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class _$QuizWriteRequestCopyWithImpl<$Res, $Val extends QuizWriteRequest>
    implements $QuizWriteRequestCopyWith<$Res> {
  _$QuizWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? attemptLimit = null,
    Object? passPercentage = null,
    Object? lessonId = freezed,
    Object? instructions = freezed,
    Object? timeLimitSeconds = freezed,
    Object? randomizeQuestions = freezed,
    Object? randomizeOptions = freezed,
    Object? availableFrom = freezed,
    Object? availableUntil = freezed,
    Object? resultsVisibility = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimitSeconds: freezed == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      randomizeQuestions: freezed == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      randomizeOptions: freezed == randomizeOptions
          ? _value.randomizeOptions
          : randomizeOptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultsVisibility: freezed == resultsVisibility
          ? _value.resultsVisibility
          : resultsVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizWriteRequestImplCopyWith<$Res>
    implements $QuizWriteRequestCopyWith<$Res> {
  factory _$$QuizWriteRequestImplCopyWith(_$QuizWriteRequestImpl value,
          $Res Function(_$QuizWriteRequestImpl) then) =
      __$$QuizWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'attempt_limit') int attemptLimit,
      @JsonKey(name: 'pass_percentage') double passPercentage,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String? instructions,
      @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
      @JsonKey(name: 'randomize_questions') bool? randomizeQuestions,
      @JsonKey(name: 'randomize_options') bool? randomizeOptions,
      @JsonKey(name: 'available_from') DateTime? availableFrom,
      @JsonKey(name: 'available_until') DateTime? availableUntil,
      @JsonKey(name: 'results_visibility') String? resultsVisibility,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class __$$QuizWriteRequestImplCopyWithImpl<$Res>
    extends _$QuizWriteRequestCopyWithImpl<$Res, _$QuizWriteRequestImpl>
    implements _$$QuizWriteRequestImplCopyWith<$Res> {
  __$$QuizWriteRequestImplCopyWithImpl(_$QuizWriteRequestImpl _value,
      $Res Function(_$QuizWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? attemptLimit = null,
    Object? passPercentage = null,
    Object? lessonId = freezed,
    Object? instructions = freezed,
    Object? timeLimitSeconds = freezed,
    Object? randomizeQuestions = freezed,
    Object? randomizeOptions = freezed,
    Object? availableFrom = freezed,
    Object? availableUntil = freezed,
    Object? resultsVisibility = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_$QuizWriteRequestImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      attemptLimit: null == attemptLimit
          ? _value.attemptLimit
          : attemptLimit // ignore: cast_nullable_to_non_nullable
              as int,
      passPercentage: null == passPercentage
          ? _value.passPercentage
          : passPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimitSeconds: freezed == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      randomizeQuestions: freezed == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      randomizeOptions: freezed == randomizeOptions
          ? _value.randomizeOptions
          : randomizeOptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableUntil: freezed == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultsVisibility: freezed == resultsVisibility
          ? _value.resultsVisibility
          : resultsVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizWriteRequestImpl implements _QuizWriteRequest {
  const _$QuizWriteRequestImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      required this.title,
      @JsonKey(name: 'attempt_limit') required this.attemptLimit,
      @JsonKey(name: 'pass_percentage') required this.passPercentage,
      @JsonKey(name: 'lesson_id') this.lessonId,
      this.instructions,
      @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds,
      @JsonKey(name: 'randomize_questions') this.randomizeQuestions,
      @JsonKey(name: 'randomize_options') this.randomizeOptions,
      @JsonKey(name: 'available_from') this.availableFrom,
      @JsonKey(name: 'available_until') this.availableUntil,
      @JsonKey(name: 'results_visibility') this.resultsVisibility,
      @JsonKey(name: 'is_required') this.isRequired});

  factory _$QuizWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  final String title;
  @override
  @JsonKey(name: 'attempt_limit')
  final int attemptLimit;
  @override
  @JsonKey(name: 'pass_percentage')
  final double passPercentage;
  @override
  @JsonKey(name: 'lesson_id')
  final String? lessonId;
  @override
  final String? instructions;
  @override
  @JsonKey(name: 'time_limit_seconds')
  final int? timeLimitSeconds;
  @override
  @JsonKey(name: 'randomize_questions')
  final bool? randomizeQuestions;
  @override
  @JsonKey(name: 'randomize_options')
  final bool? randomizeOptions;
  @override
  @JsonKey(name: 'available_from')
  final DateTime? availableFrom;
  @override
  @JsonKey(name: 'available_until')
  final DateTime? availableUntil;
  @override
  @JsonKey(name: 'results_visibility')
  final String? resultsVisibility;
  @override
  @JsonKey(name: 'is_required')
  final bool? isRequired;

  @override
  String toString() {
    return 'QuizWriteRequest(courseId: $courseId, title: $title, attemptLimit: $attemptLimit, passPercentage: $passPercentage, lessonId: $lessonId, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, randomizeQuestions: $randomizeQuestions, randomizeOptions: $randomizeOptions, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizWriteRequestImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.attemptLimit, attemptLimit) ||
                other.attemptLimit == attemptLimit) &&
            (identical(other.passPercentage, passPercentage) ||
                other.passPercentage == passPercentage) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            (identical(other.randomizeQuestions, randomizeQuestions) ||
                other.randomizeQuestions == randomizeQuestions) &&
            (identical(other.randomizeOptions, randomizeOptions) ||
                other.randomizeOptions == randomizeOptions) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableUntil, availableUntil) ||
                other.availableUntil == availableUntil) &&
            (identical(other.resultsVisibility, resultsVisibility) ||
                other.resultsVisibility == resultsVisibility) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      title,
      attemptLimit,
      passPercentage,
      lessonId,
      instructions,
      timeLimitSeconds,
      randomizeQuestions,
      randomizeOptions,
      availableFrom,
      availableUntil,
      resultsVisibility,
      isRequired);

  /// Create a copy of QuizWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizWriteRequestImplCopyWith<_$QuizWriteRequestImpl> get copyWith =>
      __$$QuizWriteRequestImplCopyWithImpl<_$QuizWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _QuizWriteRequest implements QuizWriteRequest {
  const factory _QuizWriteRequest(
      {@JsonKey(name: 'course_id') required final String courseId,
      required final String title,
      @JsonKey(name: 'attempt_limit') required final int attemptLimit,
      @JsonKey(name: 'pass_percentage') required final double passPercentage,
      @JsonKey(name: 'lesson_id') final String? lessonId,
      final String? instructions,
      @JsonKey(name: 'time_limit_seconds') final int? timeLimitSeconds,
      @JsonKey(name: 'randomize_questions') final bool? randomizeQuestions,
      @JsonKey(name: 'randomize_options') final bool? randomizeOptions,
      @JsonKey(name: 'available_from') final DateTime? availableFrom,
      @JsonKey(name: 'available_until') final DateTime? availableUntil,
      @JsonKey(name: 'results_visibility') final String? resultsVisibility,
      @JsonKey(name: 'is_required')
      final bool? isRequired}) = _$QuizWriteRequestImpl;

  factory _QuizWriteRequest.fromJson(Map<String, dynamic> json) =
      _$QuizWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  String get title;
  @override
  @JsonKey(name: 'attempt_limit')
  int get attemptLimit;
  @override
  @JsonKey(name: 'pass_percentage')
  double get passPercentage;
  @override
  @JsonKey(name: 'lesson_id')
  String? get lessonId;
  @override
  String? get instructions;
  @override
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds;
  @override
  @JsonKey(name: 'randomize_questions')
  bool? get randomizeQuestions;
  @override
  @JsonKey(name: 'randomize_options')
  bool? get randomizeOptions;
  @override
  @JsonKey(name: 'available_from')
  DateTime? get availableFrom;
  @override
  @JsonKey(name: 'available_until')
  DateTime? get availableUntil;
  @override
  @JsonKey(name: 'results_visibility')
  String? get resultsVisibility;
  @override
  @JsonKey(name: 'is_required')
  bool? get isRequired;

  /// Create a copy of QuizWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizWriteRequestImplCopyWith<_$QuizWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizQuestionDto _$QuizQuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuizQuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestionDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  double get points => throw _privateConstructorUsedError;
  List<QuizOptionDto> get options => throw _privateConstructorUsedError;

  /// Serializes this QuizQuestionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizQuestionDtoCopyWith<QuizQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionDtoCopyWith<$Res> {
  factory $QuizQuestionDtoCopyWith(
          QuizQuestionDto value, $Res Function(QuizQuestionDto) then) =
      _$QuizQuestionDtoCopyWithImpl<$Res, QuizQuestionDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String prompt,
      double points,
      List<QuizOptionDto> options});
}

/// @nodoc
class _$QuizQuestionDtoCopyWithImpl<$Res, $Val extends QuizQuestionDto>
    implements $QuizQuestionDtoCopyWith<$Res> {
  _$QuizQuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? prompt = null,
    Object? points = null,
    Object? options = null,
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
              as List<QuizOptionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionDtoImplCopyWith<$Res>
    implements $QuizQuestionDtoCopyWith<$Res> {
  factory _$$QuizQuestionDtoImplCopyWith(_$QuizQuestionDtoImpl value,
          $Res Function(_$QuizQuestionDtoImpl) then) =
      __$$QuizQuestionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String prompt,
      double points,
      List<QuizOptionDto> options});
}

/// @nodoc
class __$$QuizQuestionDtoImplCopyWithImpl<$Res>
    extends _$QuizQuestionDtoCopyWithImpl<$Res, _$QuizQuestionDtoImpl>
    implements _$$QuizQuestionDtoImplCopyWith<$Res> {
  __$$QuizQuestionDtoImplCopyWithImpl(
      _$QuizQuestionDtoImpl _value, $Res Function(_$QuizQuestionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? prompt = null,
    Object? points = null,
    Object? options = null,
  }) {
    return _then(_$QuizQuestionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<QuizOptionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizQuestionDtoImpl implements _QuizQuestionDto {
  const _$QuizQuestionDtoImpl(
      {required this.id,
      required this.type,
      required this.prompt,
      this.points = 1,
      final List<QuizOptionDto> options = const <QuizOptionDto>[]})
      : _options = options;

  factory _$QuizQuestionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizQuestionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String prompt;
  @override
  @JsonKey()
  final double points;
  final List<QuizOptionDto> _options;
  @override
  @JsonKey()
  List<QuizOptionDto> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuizQuestionDto(id: $id, type: $type, prompt: $prompt, points: $points, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, prompt, points,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of QuizQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionDtoImplCopyWith<_$QuizQuestionDtoImpl> get copyWith =>
      __$$QuizQuestionDtoImplCopyWithImpl<_$QuizQuestionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizQuestionDtoImplToJson(
      this,
    );
  }
}

abstract class _QuizQuestionDto implements QuizQuestionDto {
  const factory _QuizQuestionDto(
      {required final String id,
      required final String type,
      required final String prompt,
      final double points,
      final List<QuizOptionDto> options}) = _$QuizQuestionDtoImpl;

  factory _QuizQuestionDto.fromJson(Map<String, dynamic> json) =
      _$QuizQuestionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get prompt;
  @override
  double get points;
  @override
  List<QuizOptionDto> get options;

  /// Create a copy of QuizQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizQuestionDtoImplCopyWith<_$QuizQuestionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizAttemptDto _$QuizAttemptDtoFromJson(Map<String, dynamic> json) {
  return _QuizAttemptDto.fromJson(json);
}

/// @nodoc
mixin _$QuizAttemptDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_id')
  String get quizId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_number')
  int get attemptNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'submit_before')
  DateTime? get submitBefore => throw _privateConstructorUsedError;
  List<QuizQuestionDto> get questions => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;
  bool? get passed => throw _privateConstructorUsedError;

  /// Serializes this QuizAttemptDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizAttemptDtoCopyWith<QuizAttemptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAttemptDtoCopyWith<$Res> {
  factory $QuizAttemptDtoCopyWith(
          QuizAttemptDto value, $Res Function(QuizAttemptDto) then) =
      _$QuizAttemptDtoCopyWithImpl<$Res, QuizAttemptDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'quiz_id') String quizId,
      @JsonKey(name: 'attempt_number') int attemptNumber,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'submit_before') DateTime? submitBefore,
      List<QuizQuestionDto> questions,
      double? percentage,
      bool? passed});
}

/// @nodoc
class _$QuizAttemptDtoCopyWithImpl<$Res, $Val extends QuizAttemptDto>
    implements $QuizAttemptDtoCopyWith<$Res> {
  _$QuizAttemptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
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
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
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
              as List<QuizQuestionDto>,
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
abstract class _$$QuizAttemptDtoImplCopyWith<$Res>
    implements $QuizAttemptDtoCopyWith<$Res> {
  factory _$$QuizAttemptDtoImplCopyWith(_$QuizAttemptDtoImpl value,
          $Res Function(_$QuizAttemptDtoImpl) then) =
      __$$QuizAttemptDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'quiz_id') String quizId,
      @JsonKey(name: 'attempt_number') int attemptNumber,
      String status,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'submit_before') DateTime? submitBefore,
      List<QuizQuestionDto> questions,
      double? percentage,
      bool? passed});
}

/// @nodoc
class __$$QuizAttemptDtoImplCopyWithImpl<$Res>
    extends _$QuizAttemptDtoCopyWithImpl<$Res, _$QuizAttemptDtoImpl>
    implements _$$QuizAttemptDtoImplCopyWith<$Res> {
  __$$QuizAttemptDtoImplCopyWithImpl(
      _$QuizAttemptDtoImpl _value, $Res Function(_$QuizAttemptDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quizId = null,
    Object? attemptNumber = null,
    Object? status = null,
    Object? startedAt = null,
    Object? expiresAt = freezed,
    Object? submitBefore = freezed,
    Object? questions = null,
    Object? percentage = freezed,
    Object? passed = freezed,
  }) {
    return _then(_$QuizAttemptDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
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
              as List<QuizQuestionDto>,
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
class _$QuizAttemptDtoImpl implements _QuizAttemptDto {
  const _$QuizAttemptDtoImpl(
      {required this.id,
      @JsonKey(name: 'quiz_id') required this.quizId,
      @JsonKey(name: 'attempt_number') required this.attemptNumber,
      required this.status,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'expires_at') this.expiresAt,
      @JsonKey(name: 'submit_before') this.submitBefore,
      final List<QuizQuestionDto> questions = const <QuizQuestionDto>[],
      this.percentage,
      this.passed})
      : _questions = questions;

  factory _$QuizAttemptDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizAttemptDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'quiz_id')
  final String quizId;
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
  final List<QuizQuestionDto> _questions;
  @override
  @JsonKey()
  List<QuizQuestionDto> get questions {
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
    return 'QuizAttemptDto(id: $id, quizId: $quizId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, submitBefore: $submitBefore, questions: $questions, percentage: $percentage, passed: $passed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAttemptDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
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
      quizId,
      attemptNumber,
      status,
      startedAt,
      expiresAt,
      submitBefore,
      const DeepCollectionEquality().hash(_questions),
      percentage,
      passed);

  /// Create a copy of QuizAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAttemptDtoImplCopyWith<_$QuizAttemptDtoImpl> get copyWith =>
      __$$QuizAttemptDtoImplCopyWithImpl<_$QuizAttemptDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizAttemptDtoImplToJson(
      this,
    );
  }
}

abstract class _QuizAttemptDto implements QuizAttemptDto {
  const factory _QuizAttemptDto(
      {required final String id,
      @JsonKey(name: 'quiz_id') required final String quizId,
      @JsonKey(name: 'attempt_number') required final int attemptNumber,
      required final String status,
      @JsonKey(name: 'started_at') required final DateTime startedAt,
      @JsonKey(name: 'expires_at') final DateTime? expiresAt,
      @JsonKey(name: 'submit_before') final DateTime? submitBefore,
      final List<QuizQuestionDto> questions,
      final double? percentage,
      final bool? passed}) = _$QuizAttemptDtoImpl;

  factory _QuizAttemptDto.fromJson(Map<String, dynamic> json) =
      _$QuizAttemptDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'quiz_id')
  String get quizId;
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
  List<QuizQuestionDto> get questions;
  @override
  double? get percentage;
  @override
  bool? get passed;

  /// Create a copy of QuizAttemptDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizAttemptDtoImplCopyWith<_$QuizAttemptDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerWriteRequest _$AnswerWriteRequestFromJson(Map<String, dynamic> json) {
  return _AnswerWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$AnswerWriteRequest {
  @JsonKey(name: 'question_id')
  String get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_option_ids')
  List<String>? get selectedOptionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_answer')
  String? get textAnswer => throw _privateConstructorUsedError;

  /// Serializes this AnswerWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerWriteRequestCopyWith<AnswerWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerWriteRequestCopyWith<$Res> {
  factory $AnswerWriteRequestCopyWith(
          AnswerWriteRequest value, $Res Function(AnswerWriteRequest) then) =
      _$AnswerWriteRequestCopyWithImpl<$Res, AnswerWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') String questionId,
      @JsonKey(name: 'selected_option_ids') List<String>? selectedOptionIds,
      @JsonKey(name: 'text_answer') String? textAnswer});
}

/// @nodoc
class _$AnswerWriteRequestCopyWithImpl<$Res, $Val extends AnswerWriteRequest>
    implements $AnswerWriteRequestCopyWith<$Res> {
  _$AnswerWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? selectedOptionIds = freezed,
    Object? textAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedOptionIds: freezed == selectedOptionIds
          ? _value.selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      textAnswer: freezed == textAnswer
          ? _value.textAnswer
          : textAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerWriteRequestImplCopyWith<$Res>
    implements $AnswerWriteRequestCopyWith<$Res> {
  factory _$$AnswerWriteRequestImplCopyWith(_$AnswerWriteRequestImpl value,
          $Res Function(_$AnswerWriteRequestImpl) then) =
      __$$AnswerWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') String questionId,
      @JsonKey(name: 'selected_option_ids') List<String>? selectedOptionIds,
      @JsonKey(name: 'text_answer') String? textAnswer});
}

/// @nodoc
class __$$AnswerWriteRequestImplCopyWithImpl<$Res>
    extends _$AnswerWriteRequestCopyWithImpl<$Res, _$AnswerWriteRequestImpl>
    implements _$$AnswerWriteRequestImplCopyWith<$Res> {
  __$$AnswerWriteRequestImplCopyWithImpl(_$AnswerWriteRequestImpl _value,
      $Res Function(_$AnswerWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? selectedOptionIds = freezed,
    Object? textAnswer = freezed,
  }) {
    return _then(_$AnswerWriteRequestImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedOptionIds: freezed == selectedOptionIds
          ? _value._selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      textAnswer: freezed == textAnswer
          ? _value.textAnswer
          : textAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerWriteRequestImpl implements _AnswerWriteRequest {
  const _$AnswerWriteRequestImpl(
      {@JsonKey(name: 'question_id') required this.questionId,
      @JsonKey(name: 'selected_option_ids')
      final List<String>? selectedOptionIds,
      @JsonKey(name: 'text_answer') this.textAnswer})
      : _selectedOptionIds = selectedOptionIds;

  factory _$AnswerWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'question_id')
  final String questionId;
  final List<String>? _selectedOptionIds;
  @override
  @JsonKey(name: 'selected_option_ids')
  List<String>? get selectedOptionIds {
    final value = _selectedOptionIds;
    if (value == null) return null;
    if (_selectedOptionIds is EqualUnmodifiableListView)
      return _selectedOptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'text_answer')
  final String? textAnswer;

  @override
  String toString() {
    return 'AnswerWriteRequest(questionId: $questionId, selectedOptionIds: $selectedOptionIds, textAnswer: $textAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerWriteRequestImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptionIds, _selectedOptionIds) &&
            (identical(other.textAnswer, textAnswer) ||
                other.textAnswer == textAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId,
      const DeepCollectionEquality().hash(_selectedOptionIds), textAnswer);

  /// Create a copy of AnswerWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerWriteRequestImplCopyWith<_$AnswerWriteRequestImpl> get copyWith =>
      __$$AnswerWriteRequestImplCopyWithImpl<_$AnswerWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _AnswerWriteRequest implements AnswerWriteRequest {
  const factory _AnswerWriteRequest(
          {@JsonKey(name: 'question_id') required final String questionId,
          @JsonKey(name: 'selected_option_ids')
          final List<String>? selectedOptionIds,
          @JsonKey(name: 'text_answer') final String? textAnswer}) =
      _$AnswerWriteRequestImpl;

  factory _AnswerWriteRequest.fromJson(Map<String, dynamic> json) =
      _$AnswerWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'question_id')
  String get questionId;
  @override
  @JsonKey(name: 'selected_option_ids')
  List<String>? get selectedOptionIds;
  @override
  @JsonKey(name: 'text_answer')
  String? get textAnswer;

  /// Create a copy of AnswerWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerWriteRequestImplCopyWith<_$AnswerWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmissionWriteRequest _$SubmissionWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _SubmissionWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$SubmissionWriteRequest {
  @JsonKey(name: 'text_content')
  String? get textContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_asset_ids')
  List<String>? get mediaAssetIds => throw _privateConstructorUsedError;

  /// Serializes this SubmissionWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmissionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmissionWriteRequestCopyWith<SubmissionWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionWriteRequestCopyWith<$Res> {
  factory $SubmissionWriteRequestCopyWith(SubmissionWriteRequest value,
          $Res Function(SubmissionWriteRequest) then) =
      _$SubmissionWriteRequestCopyWithImpl<$Res, SubmissionWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text_content') String? textContent,
      @JsonKey(name: 'media_asset_ids') List<String>? mediaAssetIds});
}

/// @nodoc
class _$SubmissionWriteRequestCopyWithImpl<$Res,
        $Val extends SubmissionWriteRequest>
    implements $SubmissionWriteRequestCopyWith<$Res> {
  _$SubmissionWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmissionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textContent = freezed,
    Object? mediaAssetIds = freezed,
  }) {
    return _then(_value.copyWith(
      textContent: freezed == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaAssetIds: freezed == mediaAssetIds
          ? _value.mediaAssetIds
          : mediaAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionWriteRequestImplCopyWith<$Res>
    implements $SubmissionWriteRequestCopyWith<$Res> {
  factory _$$SubmissionWriteRequestImplCopyWith(
          _$SubmissionWriteRequestImpl value,
          $Res Function(_$SubmissionWriteRequestImpl) then) =
      __$$SubmissionWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text_content') String? textContent,
      @JsonKey(name: 'media_asset_ids') List<String>? mediaAssetIds});
}

/// @nodoc
class __$$SubmissionWriteRequestImplCopyWithImpl<$Res>
    extends _$SubmissionWriteRequestCopyWithImpl<$Res,
        _$SubmissionWriteRequestImpl>
    implements _$$SubmissionWriteRequestImplCopyWith<$Res> {
  __$$SubmissionWriteRequestImplCopyWithImpl(
      _$SubmissionWriteRequestImpl _value,
      $Res Function(_$SubmissionWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmissionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textContent = freezed,
    Object? mediaAssetIds = freezed,
  }) {
    return _then(_$SubmissionWriteRequestImpl(
      textContent: freezed == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaAssetIds: freezed == mediaAssetIds
          ? _value._mediaAssetIds
          : mediaAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionWriteRequestImpl implements _SubmissionWriteRequest {
  const _$SubmissionWriteRequestImpl(
      {@JsonKey(name: 'text_content') this.textContent,
      @JsonKey(name: 'media_asset_ids') final List<String>? mediaAssetIds})
      : _mediaAssetIds = mediaAssetIds;

  factory _$SubmissionWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'text_content')
  final String? textContent;
  final List<String>? _mediaAssetIds;
  @override
  @JsonKey(name: 'media_asset_ids')
  List<String>? get mediaAssetIds {
    final value = _mediaAssetIds;
    if (value == null) return null;
    if (_mediaAssetIds is EqualUnmodifiableListView) return _mediaAssetIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionWriteRequest(textContent: $textContent, mediaAssetIds: $mediaAssetIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionWriteRequestImpl &&
            (identical(other.textContent, textContent) ||
                other.textContent == textContent) &&
            const DeepCollectionEquality()
                .equals(other._mediaAssetIds, _mediaAssetIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, textContent,
      const DeepCollectionEquality().hash(_mediaAssetIds));

  /// Create a copy of SubmissionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionWriteRequestImplCopyWith<_$SubmissionWriteRequestImpl>
      get copyWith => __$$SubmissionWriteRequestImplCopyWithImpl<
          _$SubmissionWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _SubmissionWriteRequest implements SubmissionWriteRequest {
  const factory _SubmissionWriteRequest(
      {@JsonKey(name: 'text_content') final String? textContent,
      @JsonKey(name: 'media_asset_ids')
      final List<String>? mediaAssetIds}) = _$SubmissionWriteRequestImpl;

  factory _SubmissionWriteRequest.fromJson(Map<String, dynamic> json) =
      _$SubmissionWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'text_content')
  String? get textContent;
  @override
  @JsonKey(name: 'media_asset_ids')
  List<String>? get mediaAssetIds;

  /// Create a copy of SubmissionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmissionWriteRequestImplCopyWith<_$SubmissionWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AssignmentWriteRequest _$AssignmentWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _AssignmentWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$AssignmentWriteRequest {
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_score')
  double get maximumScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'passing_score')
  double get passingScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_submissions')
  int get maximumSubmissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String? get lessonId => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment_asset_ids')
  List<String>? get attachmentAssetIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_at')
  DateTime? get dueAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_file_types')
  List<String>? get allowedFileTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool? get isRequired => throw _privateConstructorUsedError;

  /// Serializes this AssignmentWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignmentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignmentWriteRequestCopyWith<AssignmentWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentWriteRequestCopyWith<$Res> {
  factory $AssignmentWriteRequestCopyWith(AssignmentWriteRequest value,
          $Res Function(AssignmentWriteRequest) then) =
      _$AssignmentWriteRequestCopyWithImpl<$Res, AssignmentWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'maximum_score') double maximumScore,
      @JsonKey(name: 'passing_score') double passingScore,
      @JsonKey(name: 'maximum_submissions') int maximumSubmissions,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String? instructions,
      @JsonKey(name: 'attachment_asset_ids') List<String>? attachmentAssetIds,
      @JsonKey(name: 'due_at') DateTime? dueAt,
      @JsonKey(name: 'allowed_file_types') List<String>? allowedFileTypes,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class _$AssignmentWriteRequestCopyWithImpl<$Res,
        $Val extends AssignmentWriteRequest>
    implements $AssignmentWriteRequestCopyWith<$Res> {
  _$AssignmentWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignmentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? maximumScore = null,
    Object? passingScore = null,
    Object? maximumSubmissions = null,
    Object? lessonId = freezed,
    Object? instructions = freezed,
    Object? attachmentAssetIds = freezed,
    Object? dueAt = freezed,
    Object? allowedFileTypes = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      maximumScore: null == maximumScore
          ? _value.maximumScore
          : maximumScore // ignore: cast_nullable_to_non_nullable
              as double,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as double,
      maximumSubmissions: null == maximumSubmissions
          ? _value.maximumSubmissions
          : maximumSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentAssetIds: freezed == attachmentAssetIds
          ? _value.attachmentAssetIds
          : attachmentAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedFileTypes: freezed == allowedFileTypes
          ? _value.allowedFileTypes
          : allowedFileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentWriteRequestImplCopyWith<$Res>
    implements $AssignmentWriteRequestCopyWith<$Res> {
  factory _$$AssignmentWriteRequestImplCopyWith(
          _$AssignmentWriteRequestImpl value,
          $Res Function(_$AssignmentWriteRequestImpl) then) =
      __$$AssignmentWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'maximum_score') double maximumScore,
      @JsonKey(name: 'passing_score') double passingScore,
      @JsonKey(name: 'maximum_submissions') int maximumSubmissions,
      @JsonKey(name: 'lesson_id') String? lessonId,
      String? instructions,
      @JsonKey(name: 'attachment_asset_ids') List<String>? attachmentAssetIds,
      @JsonKey(name: 'due_at') DateTime? dueAt,
      @JsonKey(name: 'allowed_file_types') List<String>? allowedFileTypes,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class __$$AssignmentWriteRequestImplCopyWithImpl<$Res>
    extends _$AssignmentWriteRequestCopyWithImpl<$Res,
        _$AssignmentWriteRequestImpl>
    implements _$$AssignmentWriteRequestImplCopyWith<$Res> {
  __$$AssignmentWriteRequestImplCopyWithImpl(
      _$AssignmentWriteRequestImpl _value,
      $Res Function(_$AssignmentWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? maximumScore = null,
    Object? passingScore = null,
    Object? maximumSubmissions = null,
    Object? lessonId = freezed,
    Object? instructions = freezed,
    Object? attachmentAssetIds = freezed,
    Object? dueAt = freezed,
    Object? allowedFileTypes = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_$AssignmentWriteRequestImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      maximumScore: null == maximumScore
          ? _value.maximumScore
          : maximumScore // ignore: cast_nullable_to_non_nullable
              as double,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as double,
      maximumSubmissions: null == maximumSubmissions
          ? _value.maximumSubmissions
          : maximumSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentAssetIds: freezed == attachmentAssetIds
          ? _value._attachmentAssetIds
          : attachmentAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedFileTypes: freezed == allowedFileTypes
          ? _value._allowedFileTypes
          : allowedFileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentWriteRequestImpl implements _AssignmentWriteRequest {
  const _$AssignmentWriteRequestImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      required this.title,
      @JsonKey(name: 'maximum_score') required this.maximumScore,
      @JsonKey(name: 'passing_score') required this.passingScore,
      @JsonKey(name: 'maximum_submissions') required this.maximumSubmissions,
      @JsonKey(name: 'lesson_id') this.lessonId,
      this.instructions,
      @JsonKey(name: 'attachment_asset_ids')
      final List<String>? attachmentAssetIds,
      @JsonKey(name: 'due_at') this.dueAt,
      @JsonKey(name: 'allowed_file_types') final List<String>? allowedFileTypes,
      @JsonKey(name: 'is_required') this.isRequired})
      : _attachmentAssetIds = attachmentAssetIds,
        _allowedFileTypes = allowedFileTypes;

  factory _$AssignmentWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  final String title;
  @override
  @JsonKey(name: 'maximum_score')
  final double maximumScore;
  @override
  @JsonKey(name: 'passing_score')
  final double passingScore;
  @override
  @JsonKey(name: 'maximum_submissions')
  final int maximumSubmissions;
  @override
  @JsonKey(name: 'lesson_id')
  final String? lessonId;
  @override
  final String? instructions;
  final List<String>? _attachmentAssetIds;
  @override
  @JsonKey(name: 'attachment_asset_ids')
  List<String>? get attachmentAssetIds {
    final value = _attachmentAssetIds;
    if (value == null) return null;
    if (_attachmentAssetIds is EqualUnmodifiableListView)
      return _attachmentAssetIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'due_at')
  final DateTime? dueAt;
  final List<String>? _allowedFileTypes;
  @override
  @JsonKey(name: 'allowed_file_types')
  List<String>? get allowedFileTypes {
    final value = _allowedFileTypes;
    if (value == null) return null;
    if (_allowedFileTypes is EqualUnmodifiableListView)
      return _allowedFileTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_required')
  final bool? isRequired;

  @override
  String toString() {
    return 'AssignmentWriteRequest(courseId: $courseId, title: $title, maximumScore: $maximumScore, passingScore: $passingScore, maximumSubmissions: $maximumSubmissions, lessonId: $lessonId, instructions: $instructions, attachmentAssetIds: $attachmentAssetIds, dueAt: $dueAt, allowedFileTypes: $allowedFileTypes, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentWriteRequestImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.maximumScore, maximumScore) ||
                other.maximumScore == maximumScore) &&
            (identical(other.passingScore, passingScore) ||
                other.passingScore == passingScore) &&
            (identical(other.maximumSubmissions, maximumSubmissions) ||
                other.maximumSubmissions == maximumSubmissions) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            const DeepCollectionEquality()
                .equals(other._attachmentAssetIds, _attachmentAssetIds) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            const DeepCollectionEquality()
                .equals(other._allowedFileTypes, _allowedFileTypes) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      title,
      maximumScore,
      passingScore,
      maximumSubmissions,
      lessonId,
      instructions,
      const DeepCollectionEquality().hash(_attachmentAssetIds),
      dueAt,
      const DeepCollectionEquality().hash(_allowedFileTypes),
      isRequired);

  /// Create a copy of AssignmentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentWriteRequestImplCopyWith<_$AssignmentWriteRequestImpl>
      get copyWith => __$$AssignmentWriteRequestImplCopyWithImpl<
          _$AssignmentWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _AssignmentWriteRequest implements AssignmentWriteRequest {
  const factory _AssignmentWriteRequest(
      {@JsonKey(name: 'course_id') required final String courseId,
      required final String title,
      @JsonKey(name: 'maximum_score') required final double maximumScore,
      @JsonKey(name: 'passing_score') required final double passingScore,
      @JsonKey(name: 'maximum_submissions')
      required final int maximumSubmissions,
      @JsonKey(name: 'lesson_id') final String? lessonId,
      final String? instructions,
      @JsonKey(name: 'attachment_asset_ids')
      final List<String>? attachmentAssetIds,
      @JsonKey(name: 'due_at') final DateTime? dueAt,
      @JsonKey(name: 'allowed_file_types') final List<String>? allowedFileTypes,
      @JsonKey(name: 'is_required')
      final bool? isRequired}) = _$AssignmentWriteRequestImpl;

  factory _AssignmentWriteRequest.fromJson(Map<String, dynamic> json) =
      _$AssignmentWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  String get title;
  @override
  @JsonKey(name: 'maximum_score')
  double get maximumScore;
  @override
  @JsonKey(name: 'passing_score')
  double get passingScore;
  @override
  @JsonKey(name: 'maximum_submissions')
  int get maximumSubmissions;
  @override
  @JsonKey(name: 'lesson_id')
  String? get lessonId;
  @override
  String? get instructions;
  @override
  @JsonKey(name: 'attachment_asset_ids')
  List<String>? get attachmentAssetIds;
  @override
  @JsonKey(name: 'due_at')
  DateTime? get dueAt;
  @override
  @JsonKey(name: 'allowed_file_types')
  List<String>? get allowedFileTypes;
  @override
  @JsonKey(name: 'is_required')
  bool? get isRequired;

  /// Create a copy of AssignmentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignmentWriteRequestImplCopyWith<_$AssignmentWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GradeWriteRequest _$GradeWriteRequestFromJson(Map<String, dynamic> json) {
  return _GradeWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$GradeWriteRequest {
  double get points => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  String? get questionId => throw _privateConstructorUsedError;

  /// Serializes this GradeWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GradeWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GradeWriteRequestCopyWith<GradeWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeWriteRequestCopyWith<$Res> {
  factory $GradeWriteRequestCopyWith(
          GradeWriteRequest value, $Res Function(GradeWriteRequest) then) =
      _$GradeWriteRequestCopyWithImpl<$Res, GradeWriteRequest>;
  @useResult
  $Res call(
      {double points,
      String? feedback,
      @JsonKey(name: 'question_id') String? questionId});
}

/// @nodoc
class _$GradeWriteRequestCopyWithImpl<$Res, $Val extends GradeWriteRequest>
    implements $GradeWriteRequestCopyWith<$Res> {
  _$GradeWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GradeWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? feedback = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradeWriteRequestImplCopyWith<$Res>
    implements $GradeWriteRequestCopyWith<$Res> {
  factory _$$GradeWriteRequestImplCopyWith(_$GradeWriteRequestImpl value,
          $Res Function(_$GradeWriteRequestImpl) then) =
      __$$GradeWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double points,
      String? feedback,
      @JsonKey(name: 'question_id') String? questionId});
}

/// @nodoc
class __$$GradeWriteRequestImplCopyWithImpl<$Res>
    extends _$GradeWriteRequestCopyWithImpl<$Res, _$GradeWriteRequestImpl>
    implements _$$GradeWriteRequestImplCopyWith<$Res> {
  __$$GradeWriteRequestImplCopyWithImpl(_$GradeWriteRequestImpl _value,
      $Res Function(_$GradeWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GradeWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? feedback = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_$GradeWriteRequestImpl(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GradeWriteRequestImpl implements _GradeWriteRequest {
  const _$GradeWriteRequestImpl(
      {required this.points,
      this.feedback,
      @JsonKey(name: 'question_id') this.questionId});

  factory _$GradeWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradeWriteRequestImplFromJson(json);

  @override
  final double points;
  @override
  final String? feedback;
  @override
  @JsonKey(name: 'question_id')
  final String? questionId;

  @override
  String toString() {
    return 'GradeWriteRequest(points: $points, feedback: $feedback, questionId: $questionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeWriteRequestImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, points, feedback, questionId);

  /// Create a copy of GradeWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeWriteRequestImplCopyWith<_$GradeWriteRequestImpl> get copyWith =>
      __$$GradeWriteRequestImplCopyWithImpl<_$GradeWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradeWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _GradeWriteRequest implements GradeWriteRequest {
  const factory _GradeWriteRequest(
          {required final double points,
          final String? feedback,
          @JsonKey(name: 'question_id') final String? questionId}) =
      _$GradeWriteRequestImpl;

  factory _GradeWriteRequest.fromJson(Map<String, dynamic> json) =
      _$GradeWriteRequestImpl.fromJson;

  @override
  double get points;
  @override
  String? get feedback;
  @override
  @JsonKey(name: 'question_id')
  String? get questionId;

  /// Create a copy of GradeWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GradeWriteRequestImplCopyWith<_$GradeWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveSessionWriteRequest _$LiveSessionWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _LiveSessionWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$LiveSessionWriteRequest {
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this LiveSessionWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LiveSessionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveSessionWriteRequestCopyWith<LiveSessionWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveSessionWriteRequestCopyWith<$Res> {
  factory $LiveSessionWriteRequestCopyWith(LiveSessionWriteRequest value,
          $Res Function(LiveSessionWriteRequest) then) =
      _$LiveSessionWriteRequestCopyWithImpl<$Res, LiveSessionWriteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      String? description});
}

/// @nodoc
class _$LiveSessionWriteRequestCopyWithImpl<$Res,
        $Val extends LiveSessionWriteRequest>
    implements $LiveSessionWriteRequestCopyWith<$Res> {
  _$LiveSessionWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveSessionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveSessionWriteRequestImplCopyWith<$Res>
    implements $LiveSessionWriteRequestCopyWith<$Res> {
  factory _$$LiveSessionWriteRequestImplCopyWith(
          _$LiveSessionWriteRequestImpl value,
          $Res Function(_$LiveSessionWriteRequestImpl) then) =
      __$$LiveSessionWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') String courseId,
      String title,
      @JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt,
      String? description});
}

/// @nodoc
class __$$LiveSessionWriteRequestImplCopyWithImpl<$Res>
    extends _$LiveSessionWriteRequestCopyWithImpl<$Res,
        _$LiveSessionWriteRequestImpl>
    implements _$$LiveSessionWriteRequestImplCopyWith<$Res> {
  __$$LiveSessionWriteRequestImplCopyWithImpl(
      _$LiveSessionWriteRequestImpl _value,
      $Res Function(_$LiveSessionWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiveSessionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? scheduledStartAt = null,
    Object? scheduledEndAt = null,
    Object? description = freezed,
  }) {
    return _then(_$LiveSessionWriteRequestImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledStartAt: null == scheduledStartAt
          ? _value.scheduledStartAt
          : scheduledStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledEndAt: null == scheduledEndAt
          ? _value.scheduledEndAt
          : scheduledEndAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveSessionWriteRequestImpl implements _LiveSessionWriteRequest {
  const _$LiveSessionWriteRequestImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      required this.title,
      @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt,
      this.description});

  factory _$LiveSessionWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveSessionWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  final String title;
  @override
  @JsonKey(name: 'scheduled_start_at')
  final DateTime scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  final DateTime scheduledEndAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'LiveSessionWriteRequest(courseId: $courseId, title: $title, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveSessionWriteRequestImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.scheduledStartAt, scheduledStartAt) ||
                other.scheduledStartAt == scheduledStartAt) &&
            (identical(other.scheduledEndAt, scheduledEndAt) ||
                other.scheduledEndAt == scheduledEndAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, title,
      scheduledStartAt, scheduledEndAt, description);

  /// Create a copy of LiveSessionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveSessionWriteRequestImplCopyWith<_$LiveSessionWriteRequestImpl>
      get copyWith => __$$LiveSessionWriteRequestImplCopyWithImpl<
          _$LiveSessionWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveSessionWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _LiveSessionWriteRequest implements LiveSessionWriteRequest {
  const factory _LiveSessionWriteRequest(
      {@JsonKey(name: 'course_id') required final String courseId,
      required final String title,
      @JsonKey(name: 'scheduled_start_at')
      required final DateTime scheduledStartAt,
      @JsonKey(name: 'scheduled_end_at') required final DateTime scheduledEndAt,
      final String? description}) = _$LiveSessionWriteRequestImpl;

  factory _LiveSessionWriteRequest.fromJson(Map<String, dynamic> json) =
      _$LiveSessionWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  String get title;
  @override
  @JsonKey(name: 'scheduled_start_at')
  DateTime get scheduledStartAt;
  @override
  @JsonKey(name: 'scheduled_end_at')
  DateTime get scheduledEndAt;
  @override
  String? get description;

  /// Create a copy of LiveSessionWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveSessionWriteRequestImplCopyWith<_$LiveSessionWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadIntentWriteRequest _$UploadIntentWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _UploadIntentWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadIntentWriteRequest {
  String get kind => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_bytes')
  int get sizeBytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'checksum_sha256')
  String? get checksumSha256 => throw _privateConstructorUsedError;

  /// Serializes this UploadIntentWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadIntentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadIntentWriteRequestCopyWith<UploadIntentWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadIntentWriteRequestCopyWith<$Res> {
  factory $UploadIntentWriteRequestCopyWith(UploadIntentWriteRequest value,
          $Res Function(UploadIntentWriteRequest) then) =
      _$UploadIntentWriteRequestCopyWithImpl<$Res, UploadIntentWriteRequest>;
  @useResult
  $Res call(
      {String kind,
      String filename,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'size_bytes') int sizeBytes,
      @JsonKey(name: 'checksum_sha256') String? checksumSha256});
}

/// @nodoc
class _$UploadIntentWriteRequestCopyWithImpl<$Res,
        $Val extends UploadIntentWriteRequest>
    implements $UploadIntentWriteRequestCopyWith<$Res> {
  _$UploadIntentWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadIntentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? filename = null,
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = freezed,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      checksumSha256: freezed == checksumSha256
          ? _value.checksumSha256
          : checksumSha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadIntentWriteRequestImplCopyWith<$Res>
    implements $UploadIntentWriteRequestCopyWith<$Res> {
  factory _$$UploadIntentWriteRequestImplCopyWith(
          _$UploadIntentWriteRequestImpl value,
          $Res Function(_$UploadIntentWriteRequestImpl) then) =
      __$$UploadIntentWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String filename,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'size_bytes') int sizeBytes,
      @JsonKey(name: 'checksum_sha256') String? checksumSha256});
}

/// @nodoc
class __$$UploadIntentWriteRequestImplCopyWithImpl<$Res>
    extends _$UploadIntentWriteRequestCopyWithImpl<$Res,
        _$UploadIntentWriteRequestImpl>
    implements _$$UploadIntentWriteRequestImplCopyWith<$Res> {
  __$$UploadIntentWriteRequestImplCopyWithImpl(
      _$UploadIntentWriteRequestImpl _value,
      $Res Function(_$UploadIntentWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadIntentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? filename = null,
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = freezed,
  }) {
    return _then(_$UploadIntentWriteRequestImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      checksumSha256: freezed == checksumSha256
          ? _value.checksumSha256
          : checksumSha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadIntentWriteRequestImpl implements _UploadIntentWriteRequest {
  const _$UploadIntentWriteRequestImpl(
      {required this.kind,
      required this.filename,
      @JsonKey(name: 'content_type') required this.contentType,
      @JsonKey(name: 'size_bytes') required this.sizeBytes,
      @JsonKey(name: 'checksum_sha256') this.checksumSha256});

  factory _$UploadIntentWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadIntentWriteRequestImplFromJson(json);

  @override
  final String kind;
  @override
  final String filename;
  @override
  @JsonKey(name: 'content_type')
  final String contentType;
  @override
  @JsonKey(name: 'size_bytes')
  final int sizeBytes;
  @override
  @JsonKey(name: 'checksum_sha256')
  final String? checksumSha256;

  @override
  String toString() {
    return 'UploadIntentWriteRequest(kind: $kind, filename: $filename, contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadIntentWriteRequestImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.checksumSha256, checksumSha256) ||
                other.checksumSha256 == checksumSha256));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, filename, contentType, sizeBytes, checksumSha256);

  /// Create a copy of UploadIntentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadIntentWriteRequestImplCopyWith<_$UploadIntentWriteRequestImpl>
      get copyWith => __$$UploadIntentWriteRequestImplCopyWithImpl<
          _$UploadIntentWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadIntentWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadIntentWriteRequest implements UploadIntentWriteRequest {
  const factory _UploadIntentWriteRequest(
          {required final String kind,
          required final String filename,
          @JsonKey(name: 'content_type') required final String contentType,
          @JsonKey(name: 'size_bytes') required final int sizeBytes,
          @JsonKey(name: 'checksum_sha256') final String? checksumSha256}) =
      _$UploadIntentWriteRequestImpl;

  factory _UploadIntentWriteRequest.fromJson(Map<String, dynamic> json) =
      _$UploadIntentWriteRequestImpl.fromJson;

  @override
  String get kind;
  @override
  String get filename;
  @override
  @JsonKey(name: 'content_type')
  String get contentType;
  @override
  @JsonKey(name: 'size_bytes')
  int get sizeBytes;
  @override
  @JsonKey(name: 'checksum_sha256')
  String? get checksumSha256;

  /// Create a copy of UploadIntentWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadIntentWriteRequestImplCopyWith<_$UploadIntentWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadIntentDto _$UploadIntentDtoFromJson(Map<String, dynamic> json) {
  return _UploadIntentDto.fromJson(json);
}

/// @nodoc
mixin _$UploadIntentDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_asset_id')
  String get mediaAssetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_url')
  String get uploadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this UploadIntentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadIntentDtoCopyWith<UploadIntentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadIntentDtoCopyWith<$Res> {
  factory $UploadIntentDtoCopyWith(
          UploadIntentDto value, $Res Function(UploadIntentDto) then) =
      _$UploadIntentDtoCopyWithImpl<$Res, UploadIntentDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'media_asset_id') String mediaAssetId,
      @JsonKey(name: 'upload_url') String uploadUrl,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class _$UploadIntentDtoCopyWithImpl<$Res, $Val extends UploadIntentDto>
    implements $UploadIntentDtoCopyWith<$Res> {
  _$UploadIntentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaAssetId = null,
    Object? uploadUrl = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaAssetId: null == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: null == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadIntentDtoImplCopyWith<$Res>
    implements $UploadIntentDtoCopyWith<$Res> {
  factory _$$UploadIntentDtoImplCopyWith(_$UploadIntentDtoImpl value,
          $Res Function(_$UploadIntentDtoImpl) then) =
      __$$UploadIntentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'media_asset_id') String mediaAssetId,
      @JsonKey(name: 'upload_url') String uploadUrl,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class __$$UploadIntentDtoImplCopyWithImpl<$Res>
    extends _$UploadIntentDtoCopyWithImpl<$Res, _$UploadIntentDtoImpl>
    implements _$$UploadIntentDtoImplCopyWith<$Res> {
  __$$UploadIntentDtoImplCopyWithImpl(
      _$UploadIntentDtoImpl _value, $Res Function(_$UploadIntentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaAssetId = null,
    Object? uploadUrl = null,
    Object? expiresAt = null,
  }) {
    return _then(_$UploadIntentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaAssetId: null == mediaAssetId
          ? _value.mediaAssetId
          : mediaAssetId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: null == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadIntentDtoImpl implements _UploadIntentDto {
  const _$UploadIntentDtoImpl(
      {required this.id,
      @JsonKey(name: 'media_asset_id') required this.mediaAssetId,
      @JsonKey(name: 'upload_url') required this.uploadUrl,
      @JsonKey(name: 'expires_at') required this.expiresAt});

  factory _$UploadIntentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadIntentDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'media_asset_id')
  final String mediaAssetId;
  @override
  @JsonKey(name: 'upload_url')
  final String uploadUrl;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  @override
  String toString() {
    return 'UploadIntentDto(id: $id, mediaAssetId: $mediaAssetId, uploadUrl: $uploadUrl, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadIntentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaAssetId, mediaAssetId) ||
                other.mediaAssetId == mediaAssetId) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mediaAssetId, uploadUrl, expiresAt);

  /// Create a copy of UploadIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadIntentDtoImplCopyWith<_$UploadIntentDtoImpl> get copyWith =>
      __$$UploadIntentDtoImplCopyWithImpl<_$UploadIntentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadIntentDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadIntentDto implements UploadIntentDto {
  const factory _UploadIntentDto(
          {required final String id,
          @JsonKey(name: 'media_asset_id') required final String mediaAssetId,
          @JsonKey(name: 'upload_url') required final String uploadUrl,
          @JsonKey(name: 'expires_at') required final DateTime expiresAt}) =
      _$UploadIntentDtoImpl;

  factory _UploadIntentDto.fromJson(Map<String, dynamic> json) =
      _$UploadIntentDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'media_asset_id')
  String get mediaAssetId;
  @override
  @JsonKey(name: 'upload_url')
  String get uploadUrl;
  @override
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt;

  /// Create a copy of UploadIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadIntentDtoImplCopyWith<_$UploadIntentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveClassTokenResponse _$LiveClassTokenResponseFromJson(
    Map<String, dynamic> json) {
  return _LiveClassTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$LiveClassTokenResponse {
  String get token => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this LiveClassTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LiveClassTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveClassTokenResponseCopyWith<LiveClassTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveClassTokenResponseCopyWith<$Res> {
  factory $LiveClassTokenResponseCopyWith(LiveClassTokenResponse value,
          $Res Function(LiveClassTokenResponse) then) =
      _$LiveClassTokenResponseCopyWithImpl<$Res, LiveClassTokenResponse>;
  @useResult
  $Res call(
      {String token,
      String url,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class _$LiveClassTokenResponseCopyWithImpl<$Res,
        $Val extends LiveClassTokenResponse>
    implements $LiveClassTokenResponseCopyWith<$Res> {
  _$LiveClassTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveClassTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? url = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveClassTokenResponseImplCopyWith<$Res>
    implements $LiveClassTokenResponseCopyWith<$Res> {
  factory _$$LiveClassTokenResponseImplCopyWith(
          _$LiveClassTokenResponseImpl value,
          $Res Function(_$LiveClassTokenResponseImpl) then) =
      __$$LiveClassTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String url,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class __$$LiveClassTokenResponseImplCopyWithImpl<$Res>
    extends _$LiveClassTokenResponseCopyWithImpl<$Res,
        _$LiveClassTokenResponseImpl>
    implements _$$LiveClassTokenResponseImplCopyWith<$Res> {
  __$$LiveClassTokenResponseImplCopyWithImpl(
      _$LiveClassTokenResponseImpl _value,
      $Res Function(_$LiveClassTokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiveClassTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? url = null,
    Object? expiresAt = null,
  }) {
    return _then(_$LiveClassTokenResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveClassTokenResponseImpl implements _LiveClassTokenResponse {
  const _$LiveClassTokenResponseImpl(
      {required this.token,
      required this.url,
      @JsonKey(name: 'expires_at') required this.expiresAt});

  factory _$LiveClassTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveClassTokenResponseImplFromJson(json);

  @override
  final String token;
  @override
  final String url;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  @override
  String toString() {
    return 'LiveClassTokenResponse(token: $token, url: $url, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveClassTokenResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, url, expiresAt);

  /// Create a copy of LiveClassTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveClassTokenResponseImplCopyWith<_$LiveClassTokenResponseImpl>
      get copyWith => __$$LiveClassTokenResponseImplCopyWithImpl<
          _$LiveClassTokenResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveClassTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _LiveClassTokenResponse implements LiveClassTokenResponse {
  const factory _LiveClassTokenResponse(
          {required final String token,
          required final String url,
          @JsonKey(name: 'expires_at') required final DateTime expiresAt}) =
      _$LiveClassTokenResponseImpl;

  factory _LiveClassTokenResponse.fromJson(Map<String, dynamic> json) =
      _$LiveClassTokenResponseImpl.fromJson;

  @override
  String get token;
  @override
  String get url;
  @override
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt;

  /// Create a copy of LiveClassTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveClassTokenResponseImplCopyWith<_$LiveClassTokenResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderWriteRequest _$OrderWriteRequestFromJson(Map<String, dynamic> json) {
  return _OrderWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderWriteRequest {
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;

  /// Serializes this OrderWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderWriteRequestCopyWith<OrderWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWriteRequestCopyWith<$Res> {
  factory $OrderWriteRequestCopyWith(
          OrderWriteRequest value, $Res Function(OrderWriteRequest) then) =
      _$OrderWriteRequestCopyWithImpl<$Res, OrderWriteRequest>;
  @useResult
  $Res call({@JsonKey(name: 'course_id') String courseId});
}

/// @nodoc
class _$OrderWriteRequestCopyWithImpl<$Res, $Val extends OrderWriteRequest>
    implements $OrderWriteRequestCopyWith<$Res> {
  _$OrderWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderWriteRequestImplCopyWith<$Res>
    implements $OrderWriteRequestCopyWith<$Res> {
  factory _$$OrderWriteRequestImplCopyWith(_$OrderWriteRequestImpl value,
          $Res Function(_$OrderWriteRequestImpl) then) =
      __$$OrderWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'course_id') String courseId});
}

/// @nodoc
class __$$OrderWriteRequestImplCopyWithImpl<$Res>
    extends _$OrderWriteRequestCopyWithImpl<$Res, _$OrderWriteRequestImpl>
    implements _$$OrderWriteRequestImplCopyWith<$Res> {
  __$$OrderWriteRequestImplCopyWithImpl(_$OrderWriteRequestImpl _value,
      $Res Function(_$OrderWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$OrderWriteRequestImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderWriteRequestImpl implements _OrderWriteRequest {
  const _$OrderWriteRequestImpl(
      {@JsonKey(name: 'course_id') required this.courseId});

  factory _$OrderWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderWriteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final String courseId;

  @override
  String toString() {
    return 'OrderWriteRequest(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderWriteRequestImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  /// Create a copy of OrderWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderWriteRequestImplCopyWith<_$OrderWriteRequestImpl> get copyWith =>
      __$$OrderWriteRequestImplCopyWithImpl<_$OrderWriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _OrderWriteRequest implements OrderWriteRequest {
  const factory _OrderWriteRequest(
          {@JsonKey(name: 'course_id') required final String courseId}) =
      _$OrderWriteRequestImpl;

  factory _OrderWriteRequest.fromJson(Map<String, dynamic> json) =
      _$OrderWriteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  String get courseId;

  /// Create a copy of OrderWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderWriteRequestImplCopyWith<_$OrderWriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_minor')
  int get amountMinor => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'amount_minor') int amountMinor,
      String currency});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? amountMinor = null,
    Object? currency = null,
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
      amountMinor: null == amountMinor
          ? _value.amountMinor
          : amountMinor // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'amount_minor') int amountMinor,
      String currency});
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? amountMinor = null,
    Object? currency = null,
  }) {
    return _then(_$OrderDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amountMinor: null == amountMinor
          ? _value.amountMinor
          : amountMinor // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl implements _OrderDto {
  const _$OrderDtoImpl(
      {required this.id,
      required this.status,
      @JsonKey(name: 'amount_minor') required this.amountMinor,
      required this.currency});

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  @JsonKey(name: 'amount_minor')
  final int amountMinor;
  @override
  final String currency;

  @override
  String toString() {
    return 'OrderDto(id: $id, status: $status, amountMinor: $amountMinor, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amountMinor, amountMinor) ||
                other.amountMinor == amountMinor) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, amountMinor, currency);

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto implements OrderDto {
  const factory _OrderDto(
      {required final String id,
      required final String status,
      @JsonKey(name: 'amount_minor') required final int amountMinor,
      required final String currency}) = _$OrderDtoImpl;

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'amount_minor')
  int get amountMinor;
  @override
  String get currency;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentIntentDto _$PaymentIntentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentIntentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentIntentDto {
  @JsonKey(name: 'client_secret')
  String get clientSecret => throw _privateConstructorUsedError;

  /// Serializes this PaymentIntentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentIntentDtoCopyWith<PaymentIntentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentIntentDtoCopyWith<$Res> {
  factory $PaymentIntentDtoCopyWith(
          PaymentIntentDto value, $Res Function(PaymentIntentDto) then) =
      _$PaymentIntentDtoCopyWithImpl<$Res, PaymentIntentDto>;
  @useResult
  $Res call({@JsonKey(name: 'client_secret') String clientSecret});
}

/// @nodoc
class _$PaymentIntentDtoCopyWithImpl<$Res, $Val extends PaymentIntentDto>
    implements $PaymentIntentDtoCopyWith<$Res> {
  _$PaymentIntentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentIntentDtoImplCopyWith<$Res>
    implements $PaymentIntentDtoCopyWith<$Res> {
  factory _$$PaymentIntentDtoImplCopyWith(_$PaymentIntentDtoImpl value,
          $Res Function(_$PaymentIntentDtoImpl) then) =
      __$$PaymentIntentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'client_secret') String clientSecret});
}

/// @nodoc
class __$$PaymentIntentDtoImplCopyWithImpl<$Res>
    extends _$PaymentIntentDtoCopyWithImpl<$Res, _$PaymentIntentDtoImpl>
    implements _$$PaymentIntentDtoImplCopyWith<$Res> {
  __$$PaymentIntentDtoImplCopyWithImpl(_$PaymentIntentDtoImpl _value,
      $Res Function(_$PaymentIntentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
  }) {
    return _then(_$PaymentIntentDtoImpl(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentIntentDtoImpl implements _PaymentIntentDto {
  const _$PaymentIntentDtoImpl(
      {@JsonKey(name: 'client_secret') required this.clientSecret});

  factory _$PaymentIntentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentIntentDtoImplFromJson(json);

  @override
  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @override
  String toString() {
    return 'PaymentIntentDto(clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentIntentDtoImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientSecret);

  /// Create a copy of PaymentIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentIntentDtoImplCopyWith<_$PaymentIntentDtoImpl> get copyWith =>
      __$$PaymentIntentDtoImplCopyWithImpl<_$PaymentIntentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentIntentDtoImplToJson(
      this,
    );
  }
}

abstract class _PaymentIntentDto implements PaymentIntentDto {
  const factory _PaymentIntentDto(
      {@JsonKey(name: 'client_secret')
      required final String clientSecret}) = _$PaymentIntentDtoImpl;

  factory _PaymentIntentDto.fromJson(Map<String, dynamic> json) =
      _$PaymentIntentDtoImpl.fromJson;

  @override
  @JsonKey(name: 'client_secret')
  String get clientSecret;

  /// Create a copy of PaymentIntentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentIntentDtoImplCopyWith<_$PaymentIntentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceTokenWriteRequest _$DeviceTokenWriteRequestFromJson(
    Map<String, dynamic> json) {
  return _DeviceTokenWriteRequest.fromJson(json);
}

/// @nodoc
mixin _$DeviceTokenWriteRequest {
  String get token => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;

  /// Serializes this DeviceTokenWriteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceTokenWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceTokenWriteRequestCopyWith<DeviceTokenWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceTokenWriteRequestCopyWith<$Res> {
  factory $DeviceTokenWriteRequestCopyWith(DeviceTokenWriteRequest value,
          $Res Function(DeviceTokenWriteRequest) then) =
      _$DeviceTokenWriteRequestCopyWithImpl<$Res, DeviceTokenWriteRequest>;
  @useResult
  $Res call({String token, String platform});
}

/// @nodoc
class _$DeviceTokenWriteRequestCopyWithImpl<$Res,
        $Val extends DeviceTokenWriteRequest>
    implements $DeviceTokenWriteRequestCopyWith<$Res> {
  _$DeviceTokenWriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceTokenWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceTokenWriteRequestImplCopyWith<$Res>
    implements $DeviceTokenWriteRequestCopyWith<$Res> {
  factory _$$DeviceTokenWriteRequestImplCopyWith(
          _$DeviceTokenWriteRequestImpl value,
          $Res Function(_$DeviceTokenWriteRequestImpl) then) =
      __$$DeviceTokenWriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String platform});
}

/// @nodoc
class __$$DeviceTokenWriteRequestImplCopyWithImpl<$Res>
    extends _$DeviceTokenWriteRequestCopyWithImpl<$Res,
        _$DeviceTokenWriteRequestImpl>
    implements _$$DeviceTokenWriteRequestImplCopyWith<$Res> {
  __$$DeviceTokenWriteRequestImplCopyWithImpl(
      _$DeviceTokenWriteRequestImpl _value,
      $Res Function(_$DeviceTokenWriteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceTokenWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? platform = null,
  }) {
    return _then(_$DeviceTokenWriteRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceTokenWriteRequestImpl implements _DeviceTokenWriteRequest {
  const _$DeviceTokenWriteRequestImpl(
      {required this.token, required this.platform});

  factory _$DeviceTokenWriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceTokenWriteRequestImplFromJson(json);

  @override
  final String token;
  @override
  final String platform;

  @override
  String toString() {
    return 'DeviceTokenWriteRequest(token: $token, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceTokenWriteRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, platform);

  /// Create a copy of DeviceTokenWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceTokenWriteRequestImplCopyWith<_$DeviceTokenWriteRequestImpl>
      get copyWith => __$$DeviceTokenWriteRequestImplCopyWithImpl<
          _$DeviceTokenWriteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceTokenWriteRequestImplToJson(
      this,
    );
  }
}

abstract class _DeviceTokenWriteRequest implements DeviceTokenWriteRequest {
  const factory _DeviceTokenWriteRequest(
      {required final String token,
      required final String platform}) = _$DeviceTokenWriteRequestImpl;

  factory _DeviceTokenWriteRequest.fromJson(Map<String, dynamic> json) =
      _$DeviceTokenWriteRequestImpl.fromJson;

  @override
  String get token;
  @override
  String get platform;

  /// Create a copy of DeviceTokenWriteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceTokenWriteRequestImplCopyWith<_$DeviceTokenWriteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) {
  return _ResultDto.fromJson(json);
}

/// @nodoc
mixin _$ResultDto {
  @JsonKey(name: 'enrollment_id')
  String get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_percentage')
  double get completion => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_average')
  double get quizAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignment_average')
  double get assignmentAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this ResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultDtoCopyWith<ResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDtoCopyWith<$Res> {
  factory $ResultDtoCopyWith(ResultDto value, $Res Function(ResultDto) then) =
      _$ResultDtoCopyWithImpl<$Res, ResultDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      String status,
      @JsonKey(name: 'completion_percentage') double completion,
      @JsonKey(name: 'quiz_average') double quizAverage,
      @JsonKey(name: 'assignment_average') double assignmentAverage,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class _$ResultDtoCopyWithImpl<$Res, $Val extends ResultDto>
    implements $ResultDtoCopyWith<$Res> {
  _$ResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? status = null,
    Object? completion = null,
    Object? quizAverage = null,
    Object? assignmentAverage = null,
    Object? completedAt = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as double,
      quizAverage: null == quizAverage
          ? _value.quizAverage
          : quizAverage // ignore: cast_nullable_to_non_nullable
              as double,
      assignmentAverage: null == assignmentAverage
          ? _value.assignmentAverage
          : assignmentAverage // ignore: cast_nullable_to_non_nullable
              as double,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDtoImplCopyWith<$Res>
    implements $ResultDtoCopyWith<$Res> {
  factory _$$ResultDtoImplCopyWith(
          _$ResultDtoImpl value, $Res Function(_$ResultDtoImpl) then) =
      __$$ResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enrollment_id') String enrollmentId,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'course_title') String courseTitle,
      String status,
      @JsonKey(name: 'completion_percentage') double completion,
      @JsonKey(name: 'quiz_average') double quizAverage,
      @JsonKey(name: 'assignment_average') double assignmentAverage,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class __$$ResultDtoImplCopyWithImpl<$Res>
    extends _$ResultDtoCopyWithImpl<$Res, _$ResultDtoImpl>
    implements _$$ResultDtoImplCopyWith<$Res> {
  __$$ResultDtoImplCopyWithImpl(
      _$ResultDtoImpl _value, $Res Function(_$ResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? status = null,
    Object? completion = null,
    Object? quizAverage = null,
    Object? assignmentAverage = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$ResultDtoImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as double,
      quizAverage: null == quizAverage
          ? _value.quizAverage
          : quizAverage // ignore: cast_nullable_to_non_nullable
              as double,
      assignmentAverage: null == assignmentAverage
          ? _value.assignmentAverage
          : assignmentAverage // ignore: cast_nullable_to_non_nullable
              as double,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDtoImpl implements _ResultDto {
  const _$ResultDtoImpl(
      {@JsonKey(name: 'enrollment_id') required this.enrollmentId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_title') required this.courseTitle,
      required this.status,
      @JsonKey(name: 'completion_percentage') this.completion = 0,
      @JsonKey(name: 'quiz_average') this.quizAverage = 0,
      @JsonKey(name: 'assignment_average') this.assignmentAverage = 0,
      @JsonKey(name: 'completed_at') this.completedAt});

  factory _$ResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDtoImplFromJson(json);

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
  final String status;
  @override
  @JsonKey(name: 'completion_percentage')
  final double completion;
  @override
  @JsonKey(name: 'quiz_average')
  final double quizAverage;
  @override
  @JsonKey(name: 'assignment_average')
  final double assignmentAverage;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'ResultDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, status: $status, completion: $completion, quizAverage: $quizAverage, assignmentAverage: $assignmentAverage, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDtoImpl &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completion, completion) ||
                other.completion == completion) &&
            (identical(other.quizAverage, quizAverage) ||
                other.quizAverage == quizAverage) &&
            (identical(other.assignmentAverage, assignmentAverage) ||
                other.assignmentAverage == assignmentAverage) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enrollmentId,
      courseId,
      courseTitle,
      status,
      completion,
      quizAverage,
      assignmentAverage,
      completedAt);

  /// Create a copy of ResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      __$$ResultDtoImplCopyWithImpl<_$ResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDtoImplToJson(
      this,
    );
  }
}

abstract class _ResultDto implements ResultDto {
  const factory _ResultDto(
          {@JsonKey(name: 'enrollment_id') required final String enrollmentId,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'course_title') required final String courseTitle,
          required final String status,
          @JsonKey(name: 'completion_percentage') final double completion,
          @JsonKey(name: 'quiz_average') final double quizAverage,
          @JsonKey(name: 'assignment_average') final double assignmentAverage,
          @JsonKey(name: 'completed_at') final DateTime? completedAt}) =
      _$ResultDtoImpl;

  factory _ResultDto.fromJson(Map<String, dynamic> json) =
      _$ResultDtoImpl.fromJson;

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
  String get status;
  @override
  @JsonKey(name: 'completion_percentage')
  double get completion;
  @override
  @JsonKey(name: 'quiz_average')
  double get quizAverage;
  @override
  @JsonKey(name: 'assignment_average')
  double get assignmentAverage;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;

  /// Create a copy of ResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CertificateDto _$CertificateDtoFromJson(Map<String, dynamic> json) {
  return _CertificateDto.fromJson(json);
}

/// @nodoc
mixin _$CertificateDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'certificate_number')
  String get certificateNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'issued_at')
  DateTime get issuedAt => throw _privateConstructorUsedError;

  /// Serializes this CertificateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificateDtoCopyWith<CertificateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateDtoCopyWith<$Res> {
  factory $CertificateDtoCopyWith(
          CertificateDto value, $Res Function(CertificateDto) then) =
      _$CertificateDtoCopyWithImpl<$Res, CertificateDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'certificate_number') String certificateNumber,
      String status,
      @JsonKey(name: 'issued_at') DateTime issuedAt});
}

/// @nodoc
class _$CertificateDtoCopyWithImpl<$Res, $Val extends CertificateDto>
    implements $CertificateDtoCopyWith<$Res> {
  _$CertificateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? certificateNumber = null,
    Object? status = null,
    Object? issuedAt = null,
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
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateDtoImplCopyWith<$Res>
    implements $CertificateDtoCopyWith<$Res> {
  factory _$$CertificateDtoImplCopyWith(_$CertificateDtoImpl value,
          $Res Function(_$CertificateDtoImpl) then) =
      __$$CertificateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'certificate_number') String certificateNumber,
      String status,
      @JsonKey(name: 'issued_at') DateTime issuedAt});
}

/// @nodoc
class __$$CertificateDtoImplCopyWithImpl<$Res>
    extends _$CertificateDtoCopyWithImpl<$Res, _$CertificateDtoImpl>
    implements _$$CertificateDtoImplCopyWith<$Res> {
  __$$CertificateDtoImplCopyWithImpl(
      _$CertificateDtoImpl _value, $Res Function(_$CertificateDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? certificateNumber = null,
    Object? status = null,
    Object? issuedAt = null,
  }) {
    return _then(_$CertificateDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateDtoImpl implements _CertificateDto {
  const _$CertificateDtoImpl(
      {required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'certificate_number') required this.certificateNumber,
      required this.status,
      @JsonKey(name: 'issued_at') required this.issuedAt});

  factory _$CertificateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'certificate_number')
  final String certificateNumber;
  @override
  final String status;
  @override
  @JsonKey(name: 'issued_at')
  final DateTime issuedAt;

  @override
  String toString() {
    return 'CertificateDto(id: $id, courseId: $courseId, certificateNumber: $certificateNumber, status: $status, issuedAt: $issuedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.certificateNumber, certificateNumber) ||
                other.certificateNumber == certificateNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courseId, certificateNumber, status, issuedAt);

  /// Create a copy of CertificateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateDtoImplCopyWith<_$CertificateDtoImpl> get copyWith =>
      __$$CertificateDtoImplCopyWithImpl<_$CertificateDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateDtoImplToJson(
      this,
    );
  }
}

abstract class _CertificateDto implements CertificateDto {
  const factory _CertificateDto(
          {required final String id,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'certificate_number')
          required final String certificateNumber,
          required final String status,
          @JsonKey(name: 'issued_at') required final DateTime issuedAt}) =
      _$CertificateDtoImpl;

  factory _CertificateDto.fromJson(Map<String, dynamic> json) =
      _$CertificateDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'certificate_number')
  String get certificateNumber;
  @override
  String get status;
  @override
  @JsonKey(name: 'issued_at')
  DateTime get issuedAt;

  /// Create a copy of CertificateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificateDtoImplCopyWith<_$CertificateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CertificateVerificationDto _$CertificateVerificationDtoFromJson(
    Map<String, dynamic> json) {
  return _CertificateVerificationDto.fromJson(json);
}

/// @nodoc
mixin _$CertificateVerificationDto {
  bool get valid => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_title')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_name')
  String get organizationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'issued_at')
  DateTime get issuedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'certificate_number')
  String get certificateNumber => throw _privateConstructorUsedError;

  /// Serializes this CertificateVerificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificateVerificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificateVerificationDtoCopyWith<CertificateVerificationDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateVerificationDtoCopyWith<$Res> {
  factory $CertificateVerificationDtoCopyWith(CertificateVerificationDto value,
          $Res Function(CertificateVerificationDto) then) =
      _$CertificateVerificationDtoCopyWithImpl<$Res,
          CertificateVerificationDto>;
  @useResult
  $Res call(
      {bool valid,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'organization_name') String organizationName,
      @JsonKey(name: 'issued_at') DateTime issuedAt,
      @JsonKey(name: 'certificate_number') String certificateNumber});
}

/// @nodoc
class _$CertificateVerificationDtoCopyWithImpl<$Res,
        $Val extends CertificateVerificationDto>
    implements $CertificateVerificationDtoCopyWith<$Res> {
  _$CertificateVerificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificateVerificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? studentName = null,
    Object? courseTitle = null,
    Object? organizationName = null,
    Object? issuedAt = null,
    Object? certificateNumber = null,
  }) {
    return _then(_value.copyWith(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateVerificationDtoImplCopyWith<$Res>
    implements $CertificateVerificationDtoCopyWith<$Res> {
  factory _$$CertificateVerificationDtoImplCopyWith(
          _$CertificateVerificationDtoImpl value,
          $Res Function(_$CertificateVerificationDtoImpl) then) =
      __$$CertificateVerificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool valid,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'course_title') String courseTitle,
      @JsonKey(name: 'organization_name') String organizationName,
      @JsonKey(name: 'issued_at') DateTime issuedAt,
      @JsonKey(name: 'certificate_number') String certificateNumber});
}

/// @nodoc
class __$$CertificateVerificationDtoImplCopyWithImpl<$Res>
    extends _$CertificateVerificationDtoCopyWithImpl<$Res,
        _$CertificateVerificationDtoImpl>
    implements _$$CertificateVerificationDtoImplCopyWith<$Res> {
  __$$CertificateVerificationDtoImplCopyWithImpl(
      _$CertificateVerificationDtoImpl _value,
      $Res Function(_$CertificateVerificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificateVerificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? studentName = null,
    Object? courseTitle = null,
    Object? organizationName = null,
    Object? issuedAt = null,
    Object? certificateNumber = null,
  }) {
    return _then(_$CertificateVerificationDtoImpl(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateVerificationDtoImpl implements _CertificateVerificationDto {
  const _$CertificateVerificationDtoImpl(
      {required this.valid,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'course_title') required this.courseTitle,
      @JsonKey(name: 'organization_name') required this.organizationName,
      @JsonKey(name: 'issued_at') required this.issuedAt,
      @JsonKey(name: 'certificate_number') required this.certificateNumber});

  factory _$CertificateVerificationDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CertificateVerificationDtoImplFromJson(json);

  @override
  final bool valid;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'course_title')
  final String courseTitle;
  @override
  @JsonKey(name: 'organization_name')
  final String organizationName;
  @override
  @JsonKey(name: 'issued_at')
  final DateTime issuedAt;
  @override
  @JsonKey(name: 'certificate_number')
  final String certificateNumber;

  @override
  String toString() {
    return 'CertificateVerificationDto(valid: $valid, studentName: $studentName, courseTitle: $courseTitle, organizationName: $organizationName, issuedAt: $issuedAt, certificateNumber: $certificateNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateVerificationDtoImpl &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.certificateNumber, certificateNumber) ||
                other.certificateNumber == certificateNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, valid, studentName, courseTitle,
      organizationName, issuedAt, certificateNumber);

  /// Create a copy of CertificateVerificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateVerificationDtoImplCopyWith<_$CertificateVerificationDtoImpl>
      get copyWith => __$$CertificateVerificationDtoImplCopyWithImpl<
          _$CertificateVerificationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateVerificationDtoImplToJson(
      this,
    );
  }
}

abstract class _CertificateVerificationDto
    implements CertificateVerificationDto {
  const factory _CertificateVerificationDto(
          {required final bool valid,
          @JsonKey(name: 'student_name') required final String studentName,
          @JsonKey(name: 'course_title') required final String courseTitle,
          @JsonKey(name: 'organization_name')
          required final String organizationName,
          @JsonKey(name: 'issued_at') required final DateTime issuedAt,
          @JsonKey(name: 'certificate_number')
          required final String certificateNumber}) =
      _$CertificateVerificationDtoImpl;

  factory _CertificateVerificationDto.fromJson(Map<String, dynamic> json) =
      _$CertificateVerificationDtoImpl.fromJson;

  @override
  bool get valid;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'course_title')
  String get courseTitle;
  @override
  @JsonKey(name: 'organization_name')
  String get organizationName;
  @override
  @JsonKey(name: 'issued_at')
  DateTime get issuedAt;
  @override
  @JsonKey(name: 'certificate_number')
  String get certificateNumber;

  /// Create a copy of CertificateVerificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificateVerificationDtoImplCopyWith<_$CertificateVerificationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_id')
  String? get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deep_link')
  String? get deepLink => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_at')
  DateTime? get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res, NotificationDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'entity_id') String? entityId,
      @JsonKey(name: 'deep_link') String? deepLink,
      Map<String, dynamic> data,
      @JsonKey(name: 'read_at') DateTime? readAt,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res, $Val extends NotificationDto>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? entityType = freezed,
    Object? entityId = freezed,
    Object? deepLink = freezed,
    Object? data = null,
    Object? readAt = freezed,
    Object? createdAt = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLink: freezed == deepLink
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDtoImplCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$$NotificationDtoImplCopyWith(_$NotificationDtoImpl value,
          $Res Function(_$NotificationDtoImpl) then) =
      __$$NotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'entity_id') String? entityId,
      @JsonKey(name: 'deep_link') String? deepLink,
      Map<String, dynamic> data,
      @JsonKey(name: 'read_at') DateTime? readAt,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$NotificationDtoImplCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res, _$NotificationDtoImpl>
    implements _$$NotificationDtoImplCopyWith<$Res> {
  __$$NotificationDtoImplCopyWithImpl(
      _$NotificationDtoImpl _value, $Res Function(_$NotificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? entityType = freezed,
    Object? entityId = freezed,
    Object? deepLink = freezed,
    Object? data = null,
    Object? readAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLink: freezed == deepLink
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDtoImpl implements _NotificationDto {
  const _$NotificationDtoImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.body,
      @JsonKey(name: 'entity_type') this.entityType,
      @JsonKey(name: 'entity_id') this.entityId,
      @JsonKey(name: 'deep_link') this.deepLink,
      final Map<String, dynamic> data = const <String, dynamic>{},
      @JsonKey(name: 'read_at') this.readAt,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _data = data;

  factory _$NotificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey(name: 'entity_type')
  final String? entityType;
  @override
  @JsonKey(name: 'entity_id')
  final String? entityId;
  @override
  @JsonKey(name: 'deep_link')
  final String? deepLink;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey(name: 'read_at')
  final DateTime? readAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationDto(id: $id, type: $type, title: $title, body: $body, entityType: $entityType, entityId: $entityId, deepLink: $deepLink, data: $data, readAt: $readAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.deepLink, deepLink) ||
                other.deepLink == deepLink) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      body,
      entityType,
      entityId,
      deepLink,
      const DeepCollectionEquality().hash(_data),
      readAt,
      createdAt);

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDtoImplCopyWith<_$NotificationDtoImpl> get copyWith =>
      __$$NotificationDtoImplCopyWithImpl<_$NotificationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationDto implements NotificationDto {
  const factory _NotificationDto(
          {required final String id,
          required final String type,
          required final String title,
          required final String body,
          @JsonKey(name: 'entity_type') final String? entityType,
          @JsonKey(name: 'entity_id') final String? entityId,
          @JsonKey(name: 'deep_link') final String? deepLink,
          final Map<String, dynamic> data,
          @JsonKey(name: 'read_at') final DateTime? readAt,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$NotificationDtoImpl;

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$NotificationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(name: 'entity_type')
  String? get entityType;
  @override
  @JsonKey(name: 'entity_id')
  String? get entityId;
  @override
  @JsonKey(name: 'deep_link')
  String? get deepLink;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(name: 'read_at')
  DateTime? get readAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDtoImplCopyWith<_$NotificationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) {
  return _ProblemDetails.fromJson(json);
}

/// @nodoc
mixin _$ProblemDetails {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get instance => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  List<FieldErrorDto> get errors => throw _privateConstructorUsedError;

  /// Serializes this ProblemDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProblemDetailsCopyWith<ProblemDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemDetailsCopyWith<$Res> {
  factory $ProblemDetailsCopyWith(
          ProblemDetails value, $Res Function(ProblemDetails) then) =
      _$ProblemDetailsCopyWithImpl<$Res, ProblemDetails>;
  @useResult
  $Res call(
      {String type,
      String title,
      int status,
      String? detail,
      String? instance,
      @JsonKey(name: 'request_id') String? requestId,
      List<FieldErrorDto> errors});
}

/// @nodoc
class _$ProblemDetailsCopyWithImpl<$Res, $Val extends ProblemDetails>
    implements $ProblemDetailsCopyWith<$Res> {
  _$ProblemDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
    Object? detail = freezed,
    Object? instance = freezed,
    Object? requestId = freezed,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<FieldErrorDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProblemDetailsImplCopyWith<$Res>
    implements $ProblemDetailsCopyWith<$Res> {
  factory _$$ProblemDetailsImplCopyWith(_$ProblemDetailsImpl value,
          $Res Function(_$ProblemDetailsImpl) then) =
      __$$ProblemDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String title,
      int status,
      String? detail,
      String? instance,
      @JsonKey(name: 'request_id') String? requestId,
      List<FieldErrorDto> errors});
}

/// @nodoc
class __$$ProblemDetailsImplCopyWithImpl<$Res>
    extends _$ProblemDetailsCopyWithImpl<$Res, _$ProblemDetailsImpl>
    implements _$$ProblemDetailsImplCopyWith<$Res> {
  __$$ProblemDetailsImplCopyWithImpl(
      _$ProblemDetailsImpl _value, $Res Function(_$ProblemDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
    Object? detail = freezed,
    Object? instance = freezed,
    Object? requestId = freezed,
    Object? errors = null,
  }) {
    return _then(_$ProblemDetailsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<FieldErrorDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProblemDetailsImpl implements _ProblemDetails {
  const _$ProblemDetailsImpl(
      {required this.type,
      required this.title,
      required this.status,
      this.detail,
      this.instance,
      @JsonKey(name: 'request_id') this.requestId,
      final List<FieldErrorDto> errors = const <FieldErrorDto>[]})
      : _errors = errors;

  factory _$ProblemDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProblemDetailsImplFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final int status;
  @override
  final String? detail;
  @override
  final String? instance;
  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  final List<FieldErrorDto> _errors;
  @override
  @JsonKey()
  List<FieldErrorDto> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ProblemDetails(type: $type, title: $title, status: $status, detail: $detail, instance: $instance, requestId: $requestId, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProblemDetailsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, status, detail,
      instance, requestId, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProblemDetailsImplCopyWith<_$ProblemDetailsImpl> get copyWith =>
      __$$ProblemDetailsImplCopyWithImpl<_$ProblemDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProblemDetailsImplToJson(
      this,
    );
  }
}

abstract class _ProblemDetails implements ProblemDetails {
  const factory _ProblemDetails(
      {required final String type,
      required final String title,
      required final int status,
      final String? detail,
      final String? instance,
      @JsonKey(name: 'request_id') final String? requestId,
      final List<FieldErrorDto> errors}) = _$ProblemDetailsImpl;

  factory _ProblemDetails.fromJson(Map<String, dynamic> json) =
      _$ProblemDetailsImpl.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  int get status;
  @override
  String? get detail;
  @override
  String? get instance;
  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  List<FieldErrorDto> get errors;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProblemDetailsImplCopyWith<_$ProblemDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldErrorDto _$FieldErrorDtoFromJson(Map<String, dynamic> json) {
  return _FieldErrorDto.fromJson(json);
}

/// @nodoc
mixin _$FieldErrorDto {
  String get field => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this FieldErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldErrorDtoCopyWith<FieldErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldErrorDtoCopyWith<$Res> {
  factory $FieldErrorDtoCopyWith(
          FieldErrorDto value, $Res Function(FieldErrorDto) then) =
      _$FieldErrorDtoCopyWithImpl<$Res, FieldErrorDto>;
  @useResult
  $Res call({String field, String message});
}

/// @nodoc
class _$FieldErrorDtoCopyWithImpl<$Res, $Val extends FieldErrorDto>
    implements $FieldErrorDtoCopyWith<$Res> {
  _$FieldErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldErrorDtoImplCopyWith<$Res>
    implements $FieldErrorDtoCopyWith<$Res> {
  factory _$$FieldErrorDtoImplCopyWith(
          _$FieldErrorDtoImpl value, $Res Function(_$FieldErrorDtoImpl) then) =
      __$$FieldErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String message});
}

/// @nodoc
class __$$FieldErrorDtoImplCopyWithImpl<$Res>
    extends _$FieldErrorDtoCopyWithImpl<$Res, _$FieldErrorDtoImpl>
    implements _$$FieldErrorDtoImplCopyWith<$Res> {
  __$$FieldErrorDtoImplCopyWithImpl(
      _$FieldErrorDtoImpl _value, $Res Function(_$FieldErrorDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? message = null,
  }) {
    return _then(_$FieldErrorDtoImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldErrorDtoImpl implements _FieldErrorDto {
  const _$FieldErrorDtoImpl({required this.field, required this.message});

  factory _$FieldErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldErrorDtoImplFromJson(json);

  @override
  final String field;
  @override
  final String message;

  @override
  String toString() {
    return 'FieldErrorDto(field: $field, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldErrorDtoImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, message);

  /// Create a copy of FieldErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldErrorDtoImplCopyWith<_$FieldErrorDtoImpl> get copyWith =>
      __$$FieldErrorDtoImplCopyWithImpl<_$FieldErrorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldErrorDtoImplToJson(
      this,
    );
  }
}

abstract class _FieldErrorDto implements FieldErrorDto {
  const factory _FieldErrorDto(
      {required final String field,
      required final String message}) = _$FieldErrorDtoImpl;

  factory _FieldErrorDto.fromJson(Map<String, dynamic> json) =
      _$FieldErrorDtoImpl.fromJson;

  @override
  String get field;
  @override
  String get message;

  /// Create a copy of FieldErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldErrorDtoImplCopyWith<_$FieldErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
