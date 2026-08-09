// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phase_one_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserStatusWriteRequest {

 String get status;
/// Create a copy of UserStatusWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStatusWriteRequestCopyWith<UserStatusWriteRequest> get copyWith => _$UserStatusWriteRequestCopyWithImpl<UserStatusWriteRequest>(this as UserStatusWriteRequest, _$identity);

  /// Serializes this UserStatusWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStatusWriteRequest&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'UserStatusWriteRequest(status: $status)';
}


}

/// @nodoc
abstract mixin class $UserStatusWriteRequestCopyWith<$Res>  {
  factory $UserStatusWriteRequestCopyWith(UserStatusWriteRequest value, $Res Function(UserStatusWriteRequest) _then) = _$UserStatusWriteRequestCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$UserStatusWriteRequestCopyWithImpl<$Res>
    implements $UserStatusWriteRequestCopyWith<$Res> {
  _$UserStatusWriteRequestCopyWithImpl(this._self, this._then);

  final UserStatusWriteRequest _self;
  final $Res Function(UserStatusWriteRequest) _then;

/// Create a copy of UserStatusWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserStatusWriteRequest].
extension UserStatusWriteRequestPatterns on UserStatusWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStatusWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStatusWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStatusWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _UserStatusWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStatusWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UserStatusWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStatusWriteRequest() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status)  $default,) {final _that = this;
switch (_that) {
case _UserStatusWriteRequest():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status)?  $default,) {final _that = this;
switch (_that) {
case _UserStatusWriteRequest() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserStatusWriteRequest implements UserStatusWriteRequest {
  const _UserStatusWriteRequest({required this.status});
  factory _UserStatusWriteRequest.fromJson(Map<String, dynamic> json) => _$UserStatusWriteRequestFromJson(json);

@override final  String status;

/// Create a copy of UserStatusWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStatusWriteRequestCopyWith<_UserStatusWriteRequest> get copyWith => __$UserStatusWriteRequestCopyWithImpl<_UserStatusWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserStatusWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStatusWriteRequest&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'UserStatusWriteRequest(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UserStatusWriteRequestCopyWith<$Res> implements $UserStatusWriteRequestCopyWith<$Res> {
  factory _$UserStatusWriteRequestCopyWith(_UserStatusWriteRequest value, $Res Function(_UserStatusWriteRequest) _then) = __$UserStatusWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String status
});




}
/// @nodoc
class __$UserStatusWriteRequestCopyWithImpl<$Res>
    implements _$UserStatusWriteRequestCopyWith<$Res> {
  __$UserStatusWriteRequestCopyWithImpl(this._self, this._then);

  final _UserStatusWriteRequest _self;
  final $Res Function(_UserStatusWriteRequest) _then;

/// Create a copy of UserStatusWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UserStatusWriteRequest(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RoleWriteRequest {

 List<String> get roles;
/// Create a copy of RoleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleWriteRequestCopyWith<RoleWriteRequest> get copyWith => _$RoleWriteRequestCopyWithImpl<RoleWriteRequest>(this as RoleWriteRequest, _$identity);

  /// Serializes this RoleWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleWriteRequest&&const DeepCollectionEquality().equals(other.roles, roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(roles));

@override
String toString() {
  return 'RoleWriteRequest(roles: $roles)';
}


}

/// @nodoc
abstract mixin class $RoleWriteRequestCopyWith<$Res>  {
  factory $RoleWriteRequestCopyWith(RoleWriteRequest value, $Res Function(RoleWriteRequest) _then) = _$RoleWriteRequestCopyWithImpl;
@useResult
$Res call({
 List<String> roles
});




}
/// @nodoc
class _$RoleWriteRequestCopyWithImpl<$Res>
    implements $RoleWriteRequestCopyWith<$Res> {
  _$RoleWriteRequestCopyWithImpl(this._self, this._then);

  final RoleWriteRequest _self;
  final $Res Function(RoleWriteRequest) _then;

/// Create a copy of RoleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roles = null,}) {
  return _then(_self.copyWith(
roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleWriteRequest].
extension RoleWriteRequestPatterns on RoleWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _RoleWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RoleWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> roles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleWriteRequest() when $default != null:
return $default(_that.roles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> roles)  $default,) {final _that = this;
switch (_that) {
case _RoleWriteRequest():
return $default(_that.roles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> roles)?  $default,) {final _that = this;
switch (_that) {
case _RoleWriteRequest() when $default != null:
return $default(_that.roles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleWriteRequest implements RoleWriteRequest {
  const _RoleWriteRequest({required final  List<String> roles}): _roles = roles;
  factory _RoleWriteRequest.fromJson(Map<String, dynamic> json) => _$RoleWriteRequestFromJson(json);

 final  List<String> _roles;
@override List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}


/// Create a copy of RoleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleWriteRequestCopyWith<_RoleWriteRequest> get copyWith => __$RoleWriteRequestCopyWithImpl<_RoleWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleWriteRequest&&const DeepCollectionEquality().equals(other._roles, _roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_roles));

@override
String toString() {
  return 'RoleWriteRequest(roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$RoleWriteRequestCopyWith<$Res> implements $RoleWriteRequestCopyWith<$Res> {
  factory _$RoleWriteRequestCopyWith(_RoleWriteRequest value, $Res Function(_RoleWriteRequest) _then) = __$RoleWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 List<String> roles
});




}
/// @nodoc
class __$RoleWriteRequestCopyWithImpl<$Res>
    implements _$RoleWriteRequestCopyWith<$Res> {
  __$RoleWriteRequestCopyWithImpl(this._self, this._then);

  final _RoleWriteRequest _self;
  final $Res Function(_RoleWriteRequest) _then;

/// Create a copy of RoleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roles = null,}) {
  return _then(_RoleWriteRequest(
roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ProfileWriteRequest {

@JsonKey(name: 'display_name') String get displayName;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; String? get phone; String? get timezone; String? get locale; String? get biography; List<String>? get expertise;
/// Create a copy of ProfileWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileWriteRequestCopyWith<ProfileWriteRequest> get copyWith => _$ProfileWriteRequestCopyWithImpl<ProfileWriteRequest>(this as ProfileWriteRequest, _$identity);

  /// Serializes this ProfileWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileWriteRequest&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.biography, biography) || other.biography == biography)&&const DeepCollectionEquality().equals(other.expertise, expertise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,firstName,lastName,phone,timezone,locale,biography,const DeepCollectionEquality().hash(expertise));

@override
String toString() {
  return 'ProfileWriteRequest(displayName: $displayName, firstName: $firstName, lastName: $lastName, phone: $phone, timezone: $timezone, locale: $locale, biography: $biography, expertise: $expertise)';
}


}

/// @nodoc
abstract mixin class $ProfileWriteRequestCopyWith<$Res>  {
  factory $ProfileWriteRequestCopyWith(ProfileWriteRequest value, $Res Function(ProfileWriteRequest) _then) = _$ProfileWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? phone, String? timezone, String? locale, String? biography, List<String>? expertise
});




}
/// @nodoc
class _$ProfileWriteRequestCopyWithImpl<$Res>
    implements $ProfileWriteRequestCopyWith<$Res> {
  _$ProfileWriteRequestCopyWithImpl(this._self, this._then);

  final ProfileWriteRequest _self;
  final $Res Function(ProfileWriteRequest) _then;

/// Create a copy of ProfileWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? timezone = freezed,Object? locale = freezed,Object? biography = freezed,Object? expertise = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as String?,expertise: freezed == expertise ? _self.expertise : expertise // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileWriteRequest].
extension ProfileWriteRequestPatterns on ProfileWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProfileWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone,  String? timezone,  String? locale,  String? biography,  List<String>? expertise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileWriteRequest() when $default != null:
return $default(_that.displayName,_that.firstName,_that.lastName,_that.phone,_that.timezone,_that.locale,_that.biography,_that.expertise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone,  String? timezone,  String? locale,  String? biography,  List<String>? expertise)  $default,) {final _that = this;
switch (_that) {
case _ProfileWriteRequest():
return $default(_that.displayName,_that.firstName,_that.lastName,_that.phone,_that.timezone,_that.locale,_that.biography,_that.expertise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone,  String? timezone,  String? locale,  String? biography,  List<String>? expertise)?  $default,) {final _that = this;
switch (_that) {
case _ProfileWriteRequest() when $default != null:
return $default(_that.displayName,_that.firstName,_that.lastName,_that.phone,_that.timezone,_that.locale,_that.biography,_that.expertise);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileWriteRequest implements ProfileWriteRequest {
  const _ProfileWriteRequest({@JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, this.phone, this.timezone, this.locale, this.biography, final  List<String>? expertise}): _expertise = expertise;
  factory _ProfileWriteRequest.fromJson(Map<String, dynamic> json) => _$ProfileWriteRequestFromJson(json);

@override@JsonKey(name: 'display_name') final  String displayName;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? phone;
@override final  String? timezone;
@override final  String? locale;
@override final  String? biography;
 final  List<String>? _expertise;
@override List<String>? get expertise {
  final value = _expertise;
  if (value == null) return null;
  if (_expertise is EqualUnmodifiableListView) return _expertise;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProfileWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileWriteRequestCopyWith<_ProfileWriteRequest> get copyWith => __$ProfileWriteRequestCopyWithImpl<_ProfileWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileWriteRequest&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.biography, biography) || other.biography == biography)&&const DeepCollectionEquality().equals(other._expertise, _expertise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,firstName,lastName,phone,timezone,locale,biography,const DeepCollectionEquality().hash(_expertise));

@override
String toString() {
  return 'ProfileWriteRequest(displayName: $displayName, firstName: $firstName, lastName: $lastName, phone: $phone, timezone: $timezone, locale: $locale, biography: $biography, expertise: $expertise)';
}


}

/// @nodoc
abstract mixin class _$ProfileWriteRequestCopyWith<$Res> implements $ProfileWriteRequestCopyWith<$Res> {
  factory _$ProfileWriteRequestCopyWith(_ProfileWriteRequest value, $Res Function(_ProfileWriteRequest) _then) = __$ProfileWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? phone, String? timezone, String? locale, String? biography, List<String>? expertise
});




}
/// @nodoc
class __$ProfileWriteRequestCopyWithImpl<$Res>
    implements _$ProfileWriteRequestCopyWith<$Res> {
  __$ProfileWriteRequestCopyWithImpl(this._self, this._then);

  final _ProfileWriteRequest _self;
  final $Res Function(_ProfileWriteRequest) _then;

/// Create a copy of ProfileWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? timezone = freezed,Object? locale = freezed,Object? biography = freezed,Object? expertise = freezed,}) {
  return _then(_ProfileWriteRequest(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as String?,expertise: freezed == expertise ? _self._expertise : expertise // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$CourseDto {

 String get id;@JsonKey(name: 'organization_id') String get organizationId;@JsonKey(name: 'thumbnail_asset_id') String? get thumbnailAssetId; String get title; String get slug; String get description; String get language; String get level; String get status;@JsonKey(name: 'is_free') bool get isFree;@JsonKey(name: 'price_minor') int get priceMinor; String get currency; int get version;@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDtoCopyWith<CourseDto> get copyWith => _$CourseDtoCopyWithImpl<CourseDto>(this as CourseDto, _$identity);

  /// Serializes this CourseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.level, level) || other.level == level)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.version, version) || other.version == version)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,thumbnailAssetId,title,slug,description,language,level,status,isFree,priceMinor,currency,version,categoryName);

@override
String toString() {
  return 'CourseDto(id: $id, organizationId: $organizationId, thumbnailAssetId: $thumbnailAssetId, title: $title, slug: $slug, description: $description, language: $language, level: $level, status: $status, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class $CourseDtoCopyWith<$Res>  {
  factory $CourseDtoCopyWith(CourseDto value, $Res Function(CourseDto) _then) = _$CourseDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId, String title, String slug, String description, String language, String level, String status,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency, int version,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$CourseDtoCopyWithImpl<$Res>
    implements $CourseDtoCopyWith<$Res> {
  _$CourseDtoCopyWithImpl(this._self, this._then);

  final CourseDto _self;
  final $Res Function(CourseDto) _then;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? thumbnailAssetId = freezed,Object? title = null,Object? slug = null,Object? description = null,Object? language = null,Object? level = null,Object? status = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? version = null,Object? categoryName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseDto].
extension CourseDtoPatterns on CourseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseDto value)  $default,){
final _that = this;
switch (_that) {
case _CourseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CourseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String title,  String slug,  String description,  String language,  String level,  String status, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_name')  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.thumbnailAssetId,_that.title,_that.slug,_that.description,_that.language,_that.level,_that.status,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String title,  String slug,  String description,  String language,  String level,  String status, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_name')  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _CourseDto():
return $default(_that.id,_that.organizationId,_that.thumbnailAssetId,_that.title,_that.slug,_that.description,_that.language,_that.level,_that.status,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'organization_id')  String organizationId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId,  String title,  String slug,  String description,  String language,  String level,  String status, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_name')  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _CourseDto() when $default != null:
return $default(_that.id,_that.organizationId,_that.thumbnailAssetId,_that.title,_that.slug,_that.description,_that.language,_that.level,_that.status,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseDto implements CourseDto {
  const _CourseDto({required this.id, @JsonKey(name: 'organization_id') required this.organizationId, @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId, required this.title, required this.slug, this.description = '', this.language = 'bn', this.level = 'all', this.status = 'published', @JsonKey(name: 'is_free') this.isFree = false, @JsonKey(name: 'price_minor') this.priceMinor = 0, this.currency = 'BDT', this.version = 0, @JsonKey(name: 'category_name') this.categoryName});
  factory _CourseDto.fromJson(Map<String, dynamic> json) => _$CourseDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'organization_id') final  String organizationId;
@override@JsonKey(name: 'thumbnail_asset_id') final  String? thumbnailAssetId;
@override final  String title;
@override final  String slug;
@override@JsonKey() final  String description;
@override@JsonKey() final  String language;
@override@JsonKey() final  String level;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'is_free') final  bool isFree;
@override@JsonKey(name: 'price_minor') final  int priceMinor;
@override@JsonKey() final  String currency;
@override@JsonKey() final  int version;
@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseDtoCopyWith<_CourseDto> get copyWith => __$CourseDtoCopyWithImpl<_CourseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.level, level) || other.level == level)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.version, version) || other.version == version)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,thumbnailAssetId,title,slug,description,language,level,status,isFree,priceMinor,currency,version,categoryName);

@override
String toString() {
  return 'CourseDto(id: $id, organizationId: $organizationId, thumbnailAssetId: $thumbnailAssetId, title: $title, slug: $slug, description: $description, language: $language, level: $level, status: $status, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$CourseDtoCopyWith<$Res> implements $CourseDtoCopyWith<$Res> {
  factory _$CourseDtoCopyWith(_CourseDto value, $Res Function(_CourseDto) _then) = __$CourseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'organization_id') String organizationId,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId, String title, String slug, String description, String language, String level, String status,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency, int version,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$CourseDtoCopyWithImpl<$Res>
    implements _$CourseDtoCopyWith<$Res> {
  __$CourseDtoCopyWithImpl(this._self, this._then);

  final _CourseDto _self;
  final $Res Function(_CourseDto) _then;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? thumbnailAssetId = freezed,Object? title = null,Object? slug = null,Object? description = null,Object? language = null,Object? level = null,Object? status = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? version = null,Object? categoryName = freezed,}) {
  return _then(_CourseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CourseWriteRequest {

 String get title; String get slug; String get description; String get language; String get level;@JsonKey(name: 'is_free') bool get isFree;@JsonKey(name: 'price_minor') int get priceMinor; String get currency; int get version;@JsonKey(name: 'category_id') String? get categoryId;@JsonKey(name: 'thumbnail_asset_id') String? get thumbnailAssetId;
/// Create a copy of CourseWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseWriteRequestCopyWith<CourseWriteRequest> get copyWith => _$CourseWriteRequestCopyWithImpl<CourseWriteRequest>(this as CourseWriteRequest, _$identity);

  /// Serializes this CourseWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.level, level) || other.level == level)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.version, version) || other.version == version)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,slug,description,language,level,isFree,priceMinor,currency,version,categoryId,thumbnailAssetId);

@override
String toString() {
  return 'CourseWriteRequest(title: $title, slug: $slug, description: $description, language: $language, level: $level, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryId: $categoryId, thumbnailAssetId: $thumbnailAssetId)';
}


}

/// @nodoc
abstract mixin class $CourseWriteRequestCopyWith<$Res>  {
  factory $CourseWriteRequestCopyWith(CourseWriteRequest value, $Res Function(CourseWriteRequest) _then) = _$CourseWriteRequestCopyWithImpl;
@useResult
$Res call({
 String title, String slug, String description, String language, String level,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency, int version,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId
});




}
/// @nodoc
class _$CourseWriteRequestCopyWithImpl<$Res>
    implements $CourseWriteRequestCopyWith<$Res> {
  _$CourseWriteRequestCopyWithImpl(this._self, this._then);

  final CourseWriteRequest _self;
  final $Res Function(CourseWriteRequest) _then;

/// Create a copy of CourseWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? slug = null,Object? description = null,Object? language = null,Object? level = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? version = null,Object? categoryId = freezed,Object? thumbnailAssetId = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseWriteRequest].
extension CourseWriteRequestPatterns on CourseWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _CourseWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CourseWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String slug,  String description,  String language,  String level, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseWriteRequest() when $default != null:
return $default(_that.title,_that.slug,_that.description,_that.language,_that.level,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryId,_that.thumbnailAssetId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String slug,  String description,  String language,  String level, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId)  $default,) {final _that = this;
switch (_that) {
case _CourseWriteRequest():
return $default(_that.title,_that.slug,_that.description,_that.language,_that.level,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryId,_that.thumbnailAssetId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String slug,  String description,  String language,  String level, @JsonKey(name: 'is_free')  bool isFree, @JsonKey(name: 'price_minor')  int priceMinor,  String currency,  int version, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'thumbnail_asset_id')  String? thumbnailAssetId)?  $default,) {final _that = this;
switch (_that) {
case _CourseWriteRequest() when $default != null:
return $default(_that.title,_that.slug,_that.description,_that.language,_that.level,_that.isFree,_that.priceMinor,_that.currency,_that.version,_that.categoryId,_that.thumbnailAssetId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseWriteRequest implements CourseWriteRequest {
  const _CourseWriteRequest({required this.title, required this.slug, required this.description, required this.language, required this.level, @JsonKey(name: 'is_free') required this.isFree, @JsonKey(name: 'price_minor') required this.priceMinor, required this.currency, required this.version, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'thumbnail_asset_id') this.thumbnailAssetId});
  factory _CourseWriteRequest.fromJson(Map<String, dynamic> json) => _$CourseWriteRequestFromJson(json);

@override final  String title;
@override final  String slug;
@override final  String description;
@override final  String language;
@override final  String level;
@override@JsonKey(name: 'is_free') final  bool isFree;
@override@JsonKey(name: 'price_minor') final  int priceMinor;
@override final  String currency;
@override final  int version;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override@JsonKey(name: 'thumbnail_asset_id') final  String? thumbnailAssetId;

/// Create a copy of CourseWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseWriteRequestCopyWith<_CourseWriteRequest> get copyWith => __$CourseWriteRequestCopyWithImpl<_CourseWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.level, level) || other.level == level)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.priceMinor, priceMinor) || other.priceMinor == priceMinor)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.version, version) || other.version == version)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,slug,description,language,level,isFree,priceMinor,currency,version,categoryId,thumbnailAssetId);

@override
String toString() {
  return 'CourseWriteRequest(title: $title, slug: $slug, description: $description, language: $language, level: $level, isFree: $isFree, priceMinor: $priceMinor, currency: $currency, version: $version, categoryId: $categoryId, thumbnailAssetId: $thumbnailAssetId)';
}


}

/// @nodoc
abstract mixin class _$CourseWriteRequestCopyWith<$Res> implements $CourseWriteRequestCopyWith<$Res> {
  factory _$CourseWriteRequestCopyWith(_CourseWriteRequest value, $Res Function(_CourseWriteRequest) _then) = __$CourseWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String slug, String description, String language, String level,@JsonKey(name: 'is_free') bool isFree,@JsonKey(name: 'price_minor') int priceMinor, String currency, int version,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'thumbnail_asset_id') String? thumbnailAssetId
});




}
/// @nodoc
class __$CourseWriteRequestCopyWithImpl<$Res>
    implements _$CourseWriteRequestCopyWith<$Res> {
  __$CourseWriteRequestCopyWithImpl(this._self, this._then);

  final _CourseWriteRequest _self;
  final $Res Function(_CourseWriteRequest) _then;

/// Create a copy of CourseWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? slug = null,Object? description = null,Object? language = null,Object? level = null,Object? isFree = null,Object? priceMinor = null,Object? currency = null,Object? version = null,Object? categoryId = freezed,Object? thumbnailAssetId = freezed,}) {
  return _then(_CourseWriteRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,priceMinor: null == priceMinor ? _self.priceMinor : priceMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ModuleWriteRequest {

 String get title; int get position; String? get description;
/// Create a copy of ModuleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleWriteRequestCopyWith<ModuleWriteRequest> get copyWith => _$ModuleWriteRequestCopyWithImpl<ModuleWriteRequest>(this as ModuleWriteRequest, _$identity);

  /// Serializes this ModuleWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.position, position) || other.position == position)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,position,description);

@override
String toString() {
  return 'ModuleWriteRequest(title: $title, position: $position, description: $description)';
}


}

/// @nodoc
abstract mixin class $ModuleWriteRequestCopyWith<$Res>  {
  factory $ModuleWriteRequestCopyWith(ModuleWriteRequest value, $Res Function(ModuleWriteRequest) _then) = _$ModuleWriteRequestCopyWithImpl;
@useResult
$Res call({
 String title, int position, String? description
});




}
/// @nodoc
class _$ModuleWriteRequestCopyWithImpl<$Res>
    implements $ModuleWriteRequestCopyWith<$Res> {
  _$ModuleWriteRequestCopyWithImpl(this._self, this._then);

  final ModuleWriteRequest _self;
  final $Res Function(ModuleWriteRequest) _then;

/// Create a copy of ModuleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? position = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleWriteRequest].
extension ModuleWriteRequestPatterns on ModuleWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _ModuleWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  int position,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleWriteRequest() when $default != null:
return $default(_that.title,_that.position,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  int position,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ModuleWriteRequest():
return $default(_that.title,_that.position,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  int position,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ModuleWriteRequest() when $default != null:
return $default(_that.title,_that.position,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleWriteRequest implements ModuleWriteRequest {
  const _ModuleWriteRequest({required this.title, required this.position, this.description});
  factory _ModuleWriteRequest.fromJson(Map<String, dynamic> json) => _$ModuleWriteRequestFromJson(json);

@override final  String title;
@override final  int position;
@override final  String? description;

/// Create a copy of ModuleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleWriteRequestCopyWith<_ModuleWriteRequest> get copyWith => __$ModuleWriteRequestCopyWithImpl<_ModuleWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.position, position) || other.position == position)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,position,description);

@override
String toString() {
  return 'ModuleWriteRequest(title: $title, position: $position, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ModuleWriteRequestCopyWith<$Res> implements $ModuleWriteRequestCopyWith<$Res> {
  factory _$ModuleWriteRequestCopyWith(_ModuleWriteRequest value, $Res Function(_ModuleWriteRequest) _then) = __$ModuleWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, int position, String? description
});




}
/// @nodoc
class __$ModuleWriteRequestCopyWithImpl<$Res>
    implements _$ModuleWriteRequestCopyWith<$Res> {
  __$ModuleWriteRequestCopyWithImpl(this._self, this._then);

  final _ModuleWriteRequest _self;
  final $Res Function(_ModuleWriteRequest) _then;

/// Create a copy of ModuleWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? position = null,Object? description = freezed,}) {
  return _then(_ModuleWriteRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LessonWriteRequest {

 String get title;@JsonKey(name: 'lesson_type') String get lessonType; int get position;@JsonKey(name: 'is_preview') bool get isPreview;@JsonKey(name: 'is_required') bool get isRequired;@JsonKey(name: 'is_published') bool get isPublished; String? get description;@JsonKey(name: 'media_asset_id') String? get mediaAssetId; String? get body;@JsonKey(name: 'duration_seconds') int? get durationSeconds;
/// Create a copy of LessonWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonWriteRequestCopyWith<LessonWriteRequest> get copyWith => _$LessonWriteRequestCopyWithImpl<LessonWriteRequest>(this as LessonWriteRequest, _$identity);

  /// Serializes this LessonWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.description, description) || other.description == description)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,lessonType,position,isPreview,isRequired,isPublished,description,mediaAssetId,body,durationSeconds);

@override
String toString() {
  return 'LessonWriteRequest(title: $title, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, description: $description, mediaAssetId: $mediaAssetId, body: $body, durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class $LessonWriteRequestCopyWith<$Res>  {
  factory $LessonWriteRequestCopyWith(LessonWriteRequest value, $Res Function(LessonWriteRequest) _then) = _$LessonWriteRequestCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(name: 'lesson_type') String lessonType, int position,@JsonKey(name: 'is_preview') bool isPreview,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'is_published') bool isPublished, String? description,@JsonKey(name: 'media_asset_id') String? mediaAssetId, String? body,@JsonKey(name: 'duration_seconds') int? durationSeconds
});




}
/// @nodoc
class _$LessonWriteRequestCopyWithImpl<$Res>
    implements $LessonWriteRequestCopyWith<$Res> {
  _$LessonWriteRequestCopyWithImpl(this._self, this._then);

  final LessonWriteRequest _self;
  final $Res Function(LessonWriteRequest) _then;

/// Create a copy of LessonWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? lessonType = null,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? description = freezed,Object? mediaAssetId = freezed,Object? body = freezed,Object? durationSeconds = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,lessonType: null == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetId: freezed == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonWriteRequest].
extension LessonWriteRequestPatterns on LessonWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _LessonWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LessonWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'lesson_type')  String lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished,  String? description, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body, @JsonKey(name: 'duration_seconds')  int? durationSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonWriteRequest() when $default != null:
return $default(_that.title,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.description,_that.mediaAssetId,_that.body,_that.durationSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'lesson_type')  String lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished,  String? description, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body, @JsonKey(name: 'duration_seconds')  int? durationSeconds)  $default,) {final _that = this;
switch (_that) {
case _LessonWriteRequest():
return $default(_that.title,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.description,_that.mediaAssetId,_that.body,_that.durationSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(name: 'lesson_type')  String lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished,  String? description, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body, @JsonKey(name: 'duration_seconds')  int? durationSeconds)?  $default,) {final _that = this;
switch (_that) {
case _LessonWriteRequest() when $default != null:
return $default(_that.title,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.description,_that.mediaAssetId,_that.body,_that.durationSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonWriteRequest implements LessonWriteRequest {
  const _LessonWriteRequest({required this.title, @JsonKey(name: 'lesson_type') required this.lessonType, required this.position, @JsonKey(name: 'is_preview') required this.isPreview, @JsonKey(name: 'is_required') required this.isRequired, @JsonKey(name: 'is_published') required this.isPublished, this.description, @JsonKey(name: 'media_asset_id') this.mediaAssetId, this.body, @JsonKey(name: 'duration_seconds') this.durationSeconds});
  factory _LessonWriteRequest.fromJson(Map<String, dynamic> json) => _$LessonWriteRequestFromJson(json);

@override final  String title;
@override@JsonKey(name: 'lesson_type') final  String lessonType;
@override final  int position;
@override@JsonKey(name: 'is_preview') final  bool isPreview;
@override@JsonKey(name: 'is_required') final  bool isRequired;
@override@JsonKey(name: 'is_published') final  bool isPublished;
@override final  String? description;
@override@JsonKey(name: 'media_asset_id') final  String? mediaAssetId;
@override final  String? body;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;

/// Create a copy of LessonWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonWriteRequestCopyWith<_LessonWriteRequest> get copyWith => __$LessonWriteRequestCopyWithImpl<_LessonWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonWriteRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.description, description) || other.description == description)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,lessonType,position,isPreview,isRequired,isPublished,description,mediaAssetId,body,durationSeconds);

@override
String toString() {
  return 'LessonWriteRequest(title: $title, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, description: $description, mediaAssetId: $mediaAssetId, body: $body, durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class _$LessonWriteRequestCopyWith<$Res> implements $LessonWriteRequestCopyWith<$Res> {
  factory _$LessonWriteRequestCopyWith(_LessonWriteRequest value, $Res Function(_LessonWriteRequest) _then) = __$LessonWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(name: 'lesson_type') String lessonType, int position,@JsonKey(name: 'is_preview') bool isPreview,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'is_published') bool isPublished, String? description,@JsonKey(name: 'media_asset_id') String? mediaAssetId, String? body,@JsonKey(name: 'duration_seconds') int? durationSeconds
});




}
/// @nodoc
class __$LessonWriteRequestCopyWithImpl<$Res>
    implements _$LessonWriteRequestCopyWith<$Res> {
  __$LessonWriteRequestCopyWithImpl(this._self, this._then);

  final _LessonWriteRequest _self;
  final $Res Function(_LessonWriteRequest) _then;

/// Create a copy of LessonWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? lessonType = null,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? description = freezed,Object? mediaAssetId = freezed,Object? body = freezed,Object? durationSeconds = freezed,}) {
  return _then(_LessonWriteRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,lessonType: null == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetId: freezed == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CourseDetailDto {

 CourseDto get course; List<CourseModuleDto> get modules;
/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDetailDtoCopyWith<CourseDetailDto> get copyWith => _$CourseDetailDtoCopyWithImpl<CourseDetailDto>(this as CourseDetailDto, _$identity);

  /// Serializes this CourseDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailDto&&(identical(other.course, course) || other.course == course)&&const DeepCollectionEquality().equals(other.modules, modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,const DeepCollectionEquality().hash(modules));

@override
String toString() {
  return 'CourseDetailDto(course: $course, modules: $modules)';
}


}

/// @nodoc
abstract mixin class $CourseDetailDtoCopyWith<$Res>  {
  factory $CourseDetailDtoCopyWith(CourseDetailDto value, $Res Function(CourseDetailDto) _then) = _$CourseDetailDtoCopyWithImpl;
@useResult
$Res call({
 CourseDto course, List<CourseModuleDto> modules
});


$CourseDtoCopyWith<$Res> get course;

}
/// @nodoc
class _$CourseDetailDtoCopyWithImpl<$Res>
    implements $CourseDetailDtoCopyWith<$Res> {
  _$CourseDetailDtoCopyWithImpl(this._self, this._then);

  final CourseDetailDto _self;
  final $Res Function(CourseDetailDto) _then;

/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? course = null,Object? modules = null,}) {
  return _then(_self.copyWith(
course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseDto,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseModuleDto>,
  ));
}
/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseDtoCopyWith<$Res> get course {
  
  return $CourseDtoCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseDetailDto].
extension CourseDetailDtoPatterns on CourseDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _CourseDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _CourseDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CourseDto course,  List<CourseModuleDto> modules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseDetailDto() when $default != null:
return $default(_that.course,_that.modules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CourseDto course,  List<CourseModuleDto> modules)  $default,) {final _that = this;
switch (_that) {
case _CourseDetailDto():
return $default(_that.course,_that.modules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CourseDto course,  List<CourseModuleDto> modules)?  $default,) {final _that = this;
switch (_that) {
case _CourseDetailDto() when $default != null:
return $default(_that.course,_that.modules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseDetailDto implements CourseDetailDto {
  const _CourseDetailDto({required this.course, final  List<CourseModuleDto> modules = const <CourseModuleDto>[]}): _modules = modules;
  factory _CourseDetailDto.fromJson(Map<String, dynamic> json) => _$CourseDetailDtoFromJson(json);

@override final  CourseDto course;
 final  List<CourseModuleDto> _modules;
@override@JsonKey() List<CourseModuleDto> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseDetailDtoCopyWith<_CourseDetailDto> get copyWith => __$CourseDetailDtoCopyWithImpl<_CourseDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseDetailDto&&(identical(other.course, course) || other.course == course)&&const DeepCollectionEquality().equals(other._modules, _modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,const DeepCollectionEquality().hash(_modules));

@override
String toString() {
  return 'CourseDetailDto(course: $course, modules: $modules)';
}


}

/// @nodoc
abstract mixin class _$CourseDetailDtoCopyWith<$Res> implements $CourseDetailDtoCopyWith<$Res> {
  factory _$CourseDetailDtoCopyWith(_CourseDetailDto value, $Res Function(_CourseDetailDto) _then) = __$CourseDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 CourseDto course, List<CourseModuleDto> modules
});


@override $CourseDtoCopyWith<$Res> get course;

}
/// @nodoc
class __$CourseDetailDtoCopyWithImpl<$Res>
    implements _$CourseDetailDtoCopyWith<$Res> {
  __$CourseDetailDtoCopyWithImpl(this._self, this._then);

  final _CourseDetailDto _self;
  final $Res Function(_CourseDetailDto) _then;

/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? course = null,Object? modules = null,}) {
  return _then(_CourseDetailDto(
course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseDto,modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<CourseModuleDto>,
  ));
}

/// Create a copy of CourseDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseDtoCopyWith<$Res> get course {
  
  return $CourseDtoCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// @nodoc
mixin _$CourseModuleDto {

 String get id; String get title; String get description; int get position; List<LessonDto> get lessons;
/// Create a copy of CourseModuleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModuleDtoCopyWith<CourseModuleDto> get copyWith => _$CourseModuleDtoCopyWithImpl<CourseModuleDto>(this as CourseModuleDto, _$identity);

  /// Serializes this CourseModuleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModuleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.lessons, lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,position,const DeepCollectionEquality().hash(lessons));

@override
String toString() {
  return 'CourseModuleDto(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $CourseModuleDtoCopyWith<$Res>  {
  factory $CourseModuleDtoCopyWith(CourseModuleDto value, $Res Function(CourseModuleDto) _then) = _$CourseModuleDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int position, List<LessonDto> lessons
});




}
/// @nodoc
class _$CourseModuleDtoCopyWithImpl<$Res>
    implements $CourseModuleDtoCopyWith<$Res> {
  _$CourseModuleDtoCopyWithImpl(this._self, this._then);

  final CourseModuleDto _self;
  final $Res Function(CourseModuleDto) _then;

/// Create a copy of CourseModuleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? position = null,Object? lessons = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseModuleDto].
extension CourseModuleDtoPatterns on CourseModuleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModuleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModuleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModuleDto value)  $default,){
final _that = this;
switch (_that) {
case _CourseModuleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModuleDto value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModuleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int position,  List<LessonDto> lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModuleDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int position,  List<LessonDto> lessons)  $default,) {final _that = this;
switch (_that) {
case _CourseModuleDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int position,  List<LessonDto> lessons)?  $default,) {final _that = this;
switch (_that) {
case _CourseModuleDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.position,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModuleDto implements CourseModuleDto {
  const _CourseModuleDto({required this.id, required this.title, this.description = '', this.position = 0, final  List<LessonDto> lessons = const <LessonDto>[]}): _lessons = lessons;
  factory _CourseModuleDto.fromJson(Map<String, dynamic> json) => _$CourseModuleDtoFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int position;
 final  List<LessonDto> _lessons;
@override@JsonKey() List<LessonDto> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of CourseModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModuleDtoCopyWith<_CourseModuleDto> get copyWith => __$CourseModuleDtoCopyWithImpl<_CourseModuleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModuleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModuleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,position,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'CourseModuleDto(id: $id, title: $title, description: $description, position: $position, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$CourseModuleDtoCopyWith<$Res> implements $CourseModuleDtoCopyWith<$Res> {
  factory _$CourseModuleDtoCopyWith(_CourseModuleDto value, $Res Function(_CourseModuleDto) _then) = __$CourseModuleDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int position, List<LessonDto> lessons
});




}
/// @nodoc
class __$CourseModuleDtoCopyWithImpl<$Res>
    implements _$CourseModuleDtoCopyWith<$Res> {
  __$CourseModuleDtoCopyWithImpl(this._self, this._then);

  final _CourseModuleDto _self;
  final $Res Function(_CourseModuleDto) _then;

/// Create a copy of CourseModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? position = null,Object? lessons = null,}) {
  return _then(_CourseModuleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}


}


/// @nodoc
mixin _$LessonDto {

 String get id; String get title; String get description; String get type;@JsonKey(name: 'lesson_type') String? get lessonType; int get position;@JsonKey(name: 'is_preview') bool get isPreview;@JsonKey(name: 'is_required') bool get isRequired;@JsonKey(name: 'is_published') bool get isPublished;@JsonKey(name: 'duration_seconds') int? get durationSeconds;@JsonKey(name: 'media_asset_id') String? get mediaAssetId; String? get body;
/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDtoCopyWith<LessonDto> get copyWith => _$LessonDtoCopyWithImpl<LessonDto>(this as LessonDto, _$identity);

  /// Serializes this LessonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,lessonType,position,isPreview,isRequired,isPublished,durationSeconds,mediaAssetId,body);

@override
String toString() {
  return 'LessonDto(id: $id, title: $title, description: $description, type: $type, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
}


}

/// @nodoc
abstract mixin class $LessonDtoCopyWith<$Res>  {
  factory $LessonDtoCopyWith(LessonDto value, $Res Function(LessonDto) _then) = _$LessonDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String type,@JsonKey(name: 'lesson_type') String? lessonType, int position,@JsonKey(name: 'is_preview') bool isPreview,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'duration_seconds') int? durationSeconds,@JsonKey(name: 'media_asset_id') String? mediaAssetId, String? body
});




}
/// @nodoc
class _$LessonDtoCopyWithImpl<$Res>
    implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._self, this._then);

  final LessonDto _self;
  final $Res Function(LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? lessonType = freezed,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? durationSeconds = freezed,Object? mediaAssetId = freezed,Object? body = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,lessonType: freezed == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [LessonDto].
extension LessonDtoPatterns on LessonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonDto value)  $default,){
final _that = this;
switch (_that) {
case _LessonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonDto value)?  $default,){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String type, @JsonKey(name: 'lesson_type')  String? lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String type, @JsonKey(name: 'lesson_type')  String? lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body)  $default,) {final _that = this;
switch (_that) {
case _LessonDto():
return $default(_that.id,_that.title,_that.description,_that.type,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String type, @JsonKey(name: 'lesson_type')  String? lessonType,  int position, @JsonKey(name: 'is_preview')  bool isPreview, @JsonKey(name: 'is_required')  bool isRequired, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'media_asset_id')  String? mediaAssetId,  String? body)?  $default,) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.lessonType,_that.position,_that.isPreview,_that.isRequired,_that.isPublished,_that.durationSeconds,_that.mediaAssetId,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonDto implements LessonDto {
  const _LessonDto({required this.id, required this.title, this.description = '', this.type = 'text', @JsonKey(name: 'lesson_type') this.lessonType, this.position = 0, @JsonKey(name: 'is_preview') this.isPreview = false, @JsonKey(name: 'is_required') this.isRequired = false, @JsonKey(name: 'is_published') this.isPublished = true, @JsonKey(name: 'duration_seconds') this.durationSeconds, @JsonKey(name: 'media_asset_id') this.mediaAssetId, this.body});
  factory _LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'lesson_type') final  String? lessonType;
@override@JsonKey() final  int position;
@override@JsonKey(name: 'is_preview') final  bool isPreview;
@override@JsonKey(name: 'is_required') final  bool isRequired;
@override@JsonKey(name: 'is_published') final  bool isPublished;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;
@override@JsonKey(name: 'media_asset_id') final  String? mediaAssetId;
@override final  String? body;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDtoCopyWith<_LessonDto> get copyWith => __$LessonDtoCopyWithImpl<_LessonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,lessonType,position,isPreview,isRequired,isPublished,durationSeconds,mediaAssetId,body);

@override
String toString() {
  return 'LessonDto(id: $id, title: $title, description: $description, type: $type, lessonType: $lessonType, position: $position, isPreview: $isPreview, isRequired: $isRequired, isPublished: $isPublished, durationSeconds: $durationSeconds, mediaAssetId: $mediaAssetId, body: $body)';
}


}

/// @nodoc
abstract mixin class _$LessonDtoCopyWith<$Res> implements $LessonDtoCopyWith<$Res> {
  factory _$LessonDtoCopyWith(_LessonDto value, $Res Function(_LessonDto) _then) = __$LessonDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String type,@JsonKey(name: 'lesson_type') String? lessonType, int position,@JsonKey(name: 'is_preview') bool isPreview,@JsonKey(name: 'is_required') bool isRequired,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'duration_seconds') int? durationSeconds,@JsonKey(name: 'media_asset_id') String? mediaAssetId, String? body
});




}
/// @nodoc
class __$LessonDtoCopyWithImpl<$Res>
    implements _$LessonDtoCopyWith<$Res> {
  __$LessonDtoCopyWithImpl(this._self, this._then);

  final _LessonDto _self;
  final $Res Function(_LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? lessonType = freezed,Object? position = null,Object? isPreview = null,Object? isRequired = null,Object? isPublished = null,Object? durationSeconds = freezed,Object? mediaAssetId = freezed,Object? body = freezed,}) {
  return _then(_LessonDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,lessonType: freezed == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
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


/// @nodoc
mixin _$EnrollmentDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'student_id') String get studentId; String get status;@JsonKey(name: 'completion_percentage') double get completionPercentage;
/// Create a copy of EnrollmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentDtoCopyWith<EnrollmentDto> get copyWith => _$EnrollmentDtoCopyWithImpl<EnrollmentDto>(this as EnrollmentDto, _$identity);

  /// Serializes this EnrollmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,studentId,status,completionPercentage);

@override
String toString() {
  return 'EnrollmentDto(id: $id, courseId: $courseId, studentId: $studentId, status: $status, completionPercentage: $completionPercentage)';
}


}

/// @nodoc
abstract mixin class $EnrollmentDtoCopyWith<$Res>  {
  factory $EnrollmentDtoCopyWith(EnrollmentDto value, $Res Function(EnrollmentDto) _then) = _$EnrollmentDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'student_id') String studentId, String status,@JsonKey(name: 'completion_percentage') double completionPercentage
});




}
/// @nodoc
class _$EnrollmentDtoCopyWithImpl<$Res>
    implements $EnrollmentDtoCopyWith<$Res> {
  _$EnrollmentDtoCopyWithImpl(this._self, this._then);

  final EnrollmentDto _self;
  final $Res Function(EnrollmentDto) _then;

/// Create a copy of EnrollmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? studentId = null,Object? status = null,Object? completionPercentage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,completionPercentage: null == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollmentDto].
extension EnrollmentDtoPatterns on EnrollmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollmentDto value)  $default,){
final _that = this;
switch (_that) {
case _EnrollmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'student_id')  String studentId,  String status, @JsonKey(name: 'completion_percentage')  double completionPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentDto() when $default != null:
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.completionPercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'student_id')  String studentId,  String status, @JsonKey(name: 'completion_percentage')  double completionPercentage)  $default,) {final _that = this;
switch (_that) {
case _EnrollmentDto():
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.completionPercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'student_id')  String studentId,  String status, @JsonKey(name: 'completion_percentage')  double completionPercentage)?  $default,) {final _that = this;
switch (_that) {
case _EnrollmentDto() when $default != null:
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.completionPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrollmentDto implements EnrollmentDto {
  const _EnrollmentDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'student_id') required this.studentId, required this.status, @JsonKey(name: 'completion_percentage') this.completionPercentage = 0});
  factory _EnrollmentDto.fromJson(Map<String, dynamic> json) => _$EnrollmentDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override final  String status;
@override@JsonKey(name: 'completion_percentage') final  double completionPercentage;

/// Create a copy of EnrollmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentDtoCopyWith<_EnrollmentDto> get copyWith => __$EnrollmentDtoCopyWithImpl<_EnrollmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,studentId,status,completionPercentage);

@override
String toString() {
  return 'EnrollmentDto(id: $id, courseId: $courseId, studentId: $studentId, status: $status, completionPercentage: $completionPercentage)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentDtoCopyWith<$Res> implements $EnrollmentDtoCopyWith<$Res> {
  factory _$EnrollmentDtoCopyWith(_EnrollmentDto value, $Res Function(_EnrollmentDto) _then) = __$EnrollmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'student_id') String studentId, String status,@JsonKey(name: 'completion_percentage') double completionPercentage
});




}
/// @nodoc
class __$EnrollmentDtoCopyWithImpl<$Res>
    implements _$EnrollmentDtoCopyWith<$Res> {
  __$EnrollmentDtoCopyWithImpl(this._self, this._then);

  final _EnrollmentDto _self;
  final $Res Function(_EnrollmentDto) _then;

/// Create a copy of EnrollmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? studentId = null,Object? status = null,Object? completionPercentage = null,}) {
  return _then(_EnrollmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,completionPercentage: null == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ProgressWriteRequest {

@JsonKey(name: 'position_seconds') int get positionSeconds;@JsonKey(name: 'watched_seconds_delta') int get watchedSecondsDelta;@JsonKey(name: 'manual_complete') bool get manualComplete;
/// Create a copy of ProgressWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgressWriteRequestCopyWith<ProgressWriteRequest> get copyWith => _$ProgressWriteRequestCopyWithImpl<ProgressWriteRequest>(this as ProgressWriteRequest, _$identity);

  /// Serializes this ProgressWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressWriteRequest&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.watchedSecondsDelta, watchedSecondsDelta) || other.watchedSecondsDelta == watchedSecondsDelta)&&(identical(other.manualComplete, manualComplete) || other.manualComplete == manualComplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,positionSeconds,watchedSecondsDelta,manualComplete);

@override
String toString() {
  return 'ProgressWriteRequest(positionSeconds: $positionSeconds, watchedSecondsDelta: $watchedSecondsDelta, manualComplete: $manualComplete)';
}


}

/// @nodoc
abstract mixin class $ProgressWriteRequestCopyWith<$Res>  {
  factory $ProgressWriteRequestCopyWith(ProgressWriteRequest value, $Res Function(ProgressWriteRequest) _then) = _$ProgressWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'watched_seconds_delta') int watchedSecondsDelta,@JsonKey(name: 'manual_complete') bool manualComplete
});




}
/// @nodoc
class _$ProgressWriteRequestCopyWithImpl<$Res>
    implements $ProgressWriteRequestCopyWith<$Res> {
  _$ProgressWriteRequestCopyWithImpl(this._self, this._then);

  final ProgressWriteRequest _self;
  final $Res Function(ProgressWriteRequest) _then;

/// Create a copy of ProgressWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? positionSeconds = null,Object? watchedSecondsDelta = null,Object? manualComplete = null,}) {
  return _then(_self.copyWith(
positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,watchedSecondsDelta: null == watchedSecondsDelta ? _self.watchedSecondsDelta : watchedSecondsDelta // ignore: cast_nullable_to_non_nullable
as int,manualComplete: null == manualComplete ? _self.manualComplete : manualComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgressWriteRequest].
extension ProgressWriteRequestPatterns on ProgressWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgressWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgressWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgressWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProgressWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgressWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProgressWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'watched_seconds_delta')  int watchedSecondsDelta, @JsonKey(name: 'manual_complete')  bool manualComplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgressWriteRequest() when $default != null:
return $default(_that.positionSeconds,_that.watchedSecondsDelta,_that.manualComplete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'watched_seconds_delta')  int watchedSecondsDelta, @JsonKey(name: 'manual_complete')  bool manualComplete)  $default,) {final _that = this;
switch (_that) {
case _ProgressWriteRequest():
return $default(_that.positionSeconds,_that.watchedSecondsDelta,_that.manualComplete);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'watched_seconds_delta')  int watchedSecondsDelta, @JsonKey(name: 'manual_complete')  bool manualComplete)?  $default,) {final _that = this;
switch (_that) {
case _ProgressWriteRequest() when $default != null:
return $default(_that.positionSeconds,_that.watchedSecondsDelta,_that.manualComplete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgressWriteRequest implements ProgressWriteRequest {
  const _ProgressWriteRequest({@JsonKey(name: 'position_seconds') required this.positionSeconds, @JsonKey(name: 'watched_seconds_delta') required this.watchedSecondsDelta, @JsonKey(name: 'manual_complete') this.manualComplete = false});
  factory _ProgressWriteRequest.fromJson(Map<String, dynamic> json) => _$ProgressWriteRequestFromJson(json);

@override@JsonKey(name: 'position_seconds') final  int positionSeconds;
@override@JsonKey(name: 'watched_seconds_delta') final  int watchedSecondsDelta;
@override@JsonKey(name: 'manual_complete') final  bool manualComplete;

/// Create a copy of ProgressWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressWriteRequestCopyWith<_ProgressWriteRequest> get copyWith => __$ProgressWriteRequestCopyWithImpl<_ProgressWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgressWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressWriteRequest&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.watchedSecondsDelta, watchedSecondsDelta) || other.watchedSecondsDelta == watchedSecondsDelta)&&(identical(other.manualComplete, manualComplete) || other.manualComplete == manualComplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,positionSeconds,watchedSecondsDelta,manualComplete);

@override
String toString() {
  return 'ProgressWriteRequest(positionSeconds: $positionSeconds, watchedSecondsDelta: $watchedSecondsDelta, manualComplete: $manualComplete)';
}


}

/// @nodoc
abstract mixin class _$ProgressWriteRequestCopyWith<$Res> implements $ProgressWriteRequestCopyWith<$Res> {
  factory _$ProgressWriteRequestCopyWith(_ProgressWriteRequest value, $Res Function(_ProgressWriteRequest) _then) = __$ProgressWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'watched_seconds_delta') int watchedSecondsDelta,@JsonKey(name: 'manual_complete') bool manualComplete
});




}
/// @nodoc
class __$ProgressWriteRequestCopyWithImpl<$Res>
    implements _$ProgressWriteRequestCopyWith<$Res> {
  __$ProgressWriteRequestCopyWithImpl(this._self, this._then);

  final _ProgressWriteRequest _self;
  final $Res Function(_ProgressWriteRequest) _then;

/// Create a copy of ProgressWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? positionSeconds = null,Object? watchedSecondsDelta = null,Object? manualComplete = null,}) {
  return _then(_ProgressWriteRequest(
positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,watchedSecondsDelta: null == watchedSecondsDelta ? _self.watchedSecondsDelta : watchedSecondsDelta // ignore: cast_nullable_to_non_nullable
as int,manualComplete: null == manualComplete ? _self.manualComplete : manualComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProgressDto {

@JsonKey(name: 'lesson_id') String get lessonId; String get state;@JsonKey(name: 'position_seconds') int get positionSeconds;@JsonKey(name: 'total_watched_seconds') int get totalWatchedSeconds;
/// Create a copy of ProgressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgressDtoCopyWith<ProgressDto> get copyWith => _$ProgressDtoCopyWithImpl<ProgressDto>(this as ProgressDto, _$identity);

  /// Serializes this ProgressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressDto&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.state, state) || other.state == state)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.totalWatchedSeconds, totalWatchedSeconds) || other.totalWatchedSeconds == totalWatchedSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonId,state,positionSeconds,totalWatchedSeconds);

@override
String toString() {
  return 'ProgressDto(lessonId: $lessonId, state: $state, positionSeconds: $positionSeconds, totalWatchedSeconds: $totalWatchedSeconds)';
}


}

/// @nodoc
abstract mixin class $ProgressDtoCopyWith<$Res>  {
  factory $ProgressDtoCopyWith(ProgressDto value, $Res Function(ProgressDto) _then) = _$ProgressDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lesson_id') String lessonId, String state,@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'total_watched_seconds') int totalWatchedSeconds
});




}
/// @nodoc
class _$ProgressDtoCopyWithImpl<$Res>
    implements $ProgressDtoCopyWith<$Res> {
  _$ProgressDtoCopyWithImpl(this._self, this._then);

  final ProgressDto _self;
  final $Res Function(ProgressDto) _then;

/// Create a copy of ProgressDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonId = null,Object? state = null,Object? positionSeconds = null,Object? totalWatchedSeconds = null,}) {
  return _then(_self.copyWith(
lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,totalWatchedSeconds: null == totalWatchedSeconds ? _self.totalWatchedSeconds : totalWatchedSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgressDto].
extension ProgressDtoPatterns on ProgressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgressDto value)  $default,){
final _that = this;
switch (_that) {
case _ProgressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgressDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProgressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_id')  String lessonId,  String state, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'total_watched_seconds')  int totalWatchedSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgressDto() when $default != null:
return $default(_that.lessonId,_that.state,_that.positionSeconds,_that.totalWatchedSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_id')  String lessonId,  String state, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'total_watched_seconds')  int totalWatchedSeconds)  $default,) {final _that = this;
switch (_that) {
case _ProgressDto():
return $default(_that.lessonId,_that.state,_that.positionSeconds,_that.totalWatchedSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lesson_id')  String lessonId,  String state, @JsonKey(name: 'position_seconds')  int positionSeconds, @JsonKey(name: 'total_watched_seconds')  int totalWatchedSeconds)?  $default,) {final _that = this;
switch (_that) {
case _ProgressDto() when $default != null:
return $default(_that.lessonId,_that.state,_that.positionSeconds,_that.totalWatchedSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgressDto implements ProgressDto {
  const _ProgressDto({@JsonKey(name: 'lesson_id') required this.lessonId, required this.state, @JsonKey(name: 'position_seconds') required this.positionSeconds, @JsonKey(name: 'total_watched_seconds') required this.totalWatchedSeconds});
  factory _ProgressDto.fromJson(Map<String, dynamic> json) => _$ProgressDtoFromJson(json);

@override@JsonKey(name: 'lesson_id') final  String lessonId;
@override final  String state;
@override@JsonKey(name: 'position_seconds') final  int positionSeconds;
@override@JsonKey(name: 'total_watched_seconds') final  int totalWatchedSeconds;

/// Create a copy of ProgressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressDtoCopyWith<_ProgressDto> get copyWith => __$ProgressDtoCopyWithImpl<_ProgressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressDto&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.state, state) || other.state == state)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.totalWatchedSeconds, totalWatchedSeconds) || other.totalWatchedSeconds == totalWatchedSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonId,state,positionSeconds,totalWatchedSeconds);

@override
String toString() {
  return 'ProgressDto(lessonId: $lessonId, state: $state, positionSeconds: $positionSeconds, totalWatchedSeconds: $totalWatchedSeconds)';
}


}

/// @nodoc
abstract mixin class _$ProgressDtoCopyWith<$Res> implements $ProgressDtoCopyWith<$Res> {
  factory _$ProgressDtoCopyWith(_ProgressDto value, $Res Function(_ProgressDto) _then) = __$ProgressDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lesson_id') String lessonId, String state,@JsonKey(name: 'position_seconds') int positionSeconds,@JsonKey(name: 'total_watched_seconds') int totalWatchedSeconds
});




}
/// @nodoc
class __$ProgressDtoCopyWithImpl<$Res>
    implements _$ProgressDtoCopyWith<$Res> {
  __$ProgressDtoCopyWithImpl(this._self, this._then);

  final _ProgressDto _self;
  final $Res Function(_ProgressDto) _then;

/// Create a copy of ProgressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonId = null,Object? state = null,Object? positionSeconds = null,Object? totalWatchedSeconds = null,}) {
  return _then(_ProgressDto(
lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,totalWatchedSeconds: null == totalWatchedSeconds ? _self.totalWatchedSeconds : totalWatchedSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuizOptionDto {

 String get id; String get text; bool? get correct;
/// Create a copy of QuizOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizOptionDtoCopyWith<QuizOptionDto> get copyWith => _$QuizOptionDtoCopyWithImpl<QuizOptionDto>(this as QuizOptionDto, _$identity);

  /// Serializes this QuizOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,correct);

@override
String toString() {
  return 'QuizOptionDto(id: $id, text: $text, correct: $correct)';
}


}

/// @nodoc
abstract mixin class $QuizOptionDtoCopyWith<$Res>  {
  factory $QuizOptionDtoCopyWith(QuizOptionDto value, $Res Function(QuizOptionDto) _then) = _$QuizOptionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String text, bool? correct
});




}
/// @nodoc
class _$QuizOptionDtoCopyWithImpl<$Res>
    implements $QuizOptionDtoCopyWith<$Res> {
  _$QuizOptionDtoCopyWithImpl(this._self, this._then);

  final QuizOptionDto _self;
  final $Res Function(QuizOptionDto) _then;

/// Create a copy of QuizOptionDto
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


/// Adds pattern-matching-related methods to [QuizOptionDto].
extension QuizOptionDtoPatterns on QuizOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _QuizOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuizOptionDto() when $default != null:
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
case _QuizOptionDto() when $default != null:
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
case _QuizOptionDto():
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
case _QuizOptionDto() when $default != null:
return $default(_that.id,_that.text,_that.correct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizOptionDto implements QuizOptionDto {
  const _QuizOptionDto({required this.id, required this.text, this.correct});
  factory _QuizOptionDto.fromJson(Map<String, dynamic> json) => _$QuizOptionDtoFromJson(json);

@override final  String id;
@override final  String text;
@override final  bool? correct;

/// Create a copy of QuizOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizOptionDtoCopyWith<_QuizOptionDto> get copyWith => __$QuizOptionDtoCopyWithImpl<_QuizOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.correct, correct) || other.correct == correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,correct);

@override
String toString() {
  return 'QuizOptionDto(id: $id, text: $text, correct: $correct)';
}


}

/// @nodoc
abstract mixin class _$QuizOptionDtoCopyWith<$Res> implements $QuizOptionDtoCopyWith<$Res> {
  factory _$QuizOptionDtoCopyWith(_QuizOptionDto value, $Res Function(_QuizOptionDto) _then) = __$QuizOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, bool? correct
});




}
/// @nodoc
class __$QuizOptionDtoCopyWithImpl<$Res>
    implements _$QuizOptionDtoCopyWith<$Res> {
  __$QuizOptionDtoCopyWithImpl(this._self, this._then);

  final _QuizOptionDto _self;
  final $Res Function(_QuizOptionDto) _then;

/// Create a copy of QuizOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? correct = freezed,}) {
  return _then(_QuizOptionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$OptionWriteRequest {

 String get text;@JsonKey(name: 'is_correct') bool get isCorrect; int get position;
/// Create a copy of OptionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionWriteRequestCopyWith<OptionWriteRequest> get copyWith => _$OptionWriteRequestCopyWithImpl<OptionWriteRequest>(this as OptionWriteRequest, _$identity);

  /// Serializes this OptionWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionWriteRequest&&(identical(other.text, text) || other.text == text)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isCorrect,position);

@override
String toString() {
  return 'OptionWriteRequest(text: $text, isCorrect: $isCorrect, position: $position)';
}


}

/// @nodoc
abstract mixin class $OptionWriteRequestCopyWith<$Res>  {
  factory $OptionWriteRequestCopyWith(OptionWriteRequest value, $Res Function(OptionWriteRequest) _then) = _$OptionWriteRequestCopyWithImpl;
@useResult
$Res call({
 String text,@JsonKey(name: 'is_correct') bool isCorrect, int position
});




}
/// @nodoc
class _$OptionWriteRequestCopyWithImpl<$Res>
    implements $OptionWriteRequestCopyWith<$Res> {
  _$OptionWriteRequestCopyWithImpl(this._self, this._then);

  final OptionWriteRequest _self;
  final $Res Function(OptionWriteRequest) _then;

/// Create a copy of OptionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isCorrect = null,Object? position = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionWriteRequest].
extension OptionWriteRequestPatterns on OptionWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _OptionWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OptionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text, @JsonKey(name: 'is_correct')  bool isCorrect,  int position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionWriteRequest() when $default != null:
return $default(_that.text,_that.isCorrect,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text, @JsonKey(name: 'is_correct')  bool isCorrect,  int position)  $default,) {final _that = this;
switch (_that) {
case _OptionWriteRequest():
return $default(_that.text,_that.isCorrect,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text, @JsonKey(name: 'is_correct')  bool isCorrect,  int position)?  $default,) {final _that = this;
switch (_that) {
case _OptionWriteRequest() when $default != null:
return $default(_that.text,_that.isCorrect,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionWriteRequest implements OptionWriteRequest {
  const _OptionWriteRequest({required this.text, @JsonKey(name: 'is_correct') required this.isCorrect, required this.position});
  factory _OptionWriteRequest.fromJson(Map<String, dynamic> json) => _$OptionWriteRequestFromJson(json);

@override final  String text;
@override@JsonKey(name: 'is_correct') final  bool isCorrect;
@override final  int position;

/// Create a copy of OptionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionWriteRequestCopyWith<_OptionWriteRequest> get copyWith => __$OptionWriteRequestCopyWithImpl<_OptionWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionWriteRequest&&(identical(other.text, text) || other.text == text)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isCorrect,position);

@override
String toString() {
  return 'OptionWriteRequest(text: $text, isCorrect: $isCorrect, position: $position)';
}


}

/// @nodoc
abstract mixin class _$OptionWriteRequestCopyWith<$Res> implements $OptionWriteRequestCopyWith<$Res> {
  factory _$OptionWriteRequestCopyWith(_OptionWriteRequest value, $Res Function(_OptionWriteRequest) _then) = __$OptionWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String text,@JsonKey(name: 'is_correct') bool isCorrect, int position
});




}
/// @nodoc
class __$OptionWriteRequestCopyWithImpl<$Res>
    implements _$OptionWriteRequestCopyWith<$Res> {
  __$OptionWriteRequestCopyWithImpl(this._self, this._then);

  final _OptionWriteRequest _self;
  final $Res Function(_OptionWriteRequest) _then;

/// Create a copy of OptionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isCorrect = null,Object? position = null,}) {
  return _then(_OptionWriteRequest(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuestionWriteRequest {

@JsonKey(name: 'question_type') String get questionType; String get prompt; double get points; int get position; List<OptionWriteRequest> get options;
/// Create a copy of QuestionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionWriteRequestCopyWith<QuestionWriteRequest> get copyWith => _$QuestionWriteRequestCopyWithImpl<QuestionWriteRequest>(this as QuestionWriteRequest, _$identity);

  /// Serializes this QuestionWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionWriteRequest&&(identical(other.questionType, questionType) || other.questionType == questionType)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionType,prompt,points,position,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'QuestionWriteRequest(questionType: $questionType, prompt: $prompt, points: $points, position: $position, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuestionWriteRequestCopyWith<$Res>  {
  factory $QuestionWriteRequestCopyWith(QuestionWriteRequest value, $Res Function(QuestionWriteRequest) _then) = _$QuestionWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'question_type') String questionType, String prompt, double points, int position, List<OptionWriteRequest> options
});




}
/// @nodoc
class _$QuestionWriteRequestCopyWithImpl<$Res>
    implements $QuestionWriteRequestCopyWith<$Res> {
  _$QuestionWriteRequestCopyWithImpl(this._self, this._then);

  final QuestionWriteRequest _self;
  final $Res Function(QuestionWriteRequest) _then;

/// Create a copy of QuestionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionType = null,Object? prompt = null,Object? points = null,Object? position = null,Object? options = null,}) {
  return _then(_self.copyWith(
questionType: null == questionType ? _self.questionType : questionType // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionWriteRequest>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionWriteRequest].
extension QuestionWriteRequestPatterns on QuestionWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _QuestionWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_type')  String questionType,  String prompt,  double points,  int position,  List<OptionWriteRequest> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionWriteRequest() when $default != null:
return $default(_that.questionType,_that.prompt,_that.points,_that.position,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_type')  String questionType,  String prompt,  double points,  int position,  List<OptionWriteRequest> options)  $default,) {final _that = this;
switch (_that) {
case _QuestionWriteRequest():
return $default(_that.questionType,_that.prompt,_that.points,_that.position,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'question_type')  String questionType,  String prompt,  double points,  int position,  List<OptionWriteRequest> options)?  $default,) {final _that = this;
switch (_that) {
case _QuestionWriteRequest() when $default != null:
return $default(_that.questionType,_that.prompt,_that.points,_that.position,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionWriteRequest implements QuestionWriteRequest {
  const _QuestionWriteRequest({@JsonKey(name: 'question_type') required this.questionType, required this.prompt, required this.points, required this.position, required final  List<OptionWriteRequest> options}): _options = options;
  factory _QuestionWriteRequest.fromJson(Map<String, dynamic> json) => _$QuestionWriteRequestFromJson(json);

@override@JsonKey(name: 'question_type') final  String questionType;
@override final  String prompt;
@override final  double points;
@override final  int position;
 final  List<OptionWriteRequest> _options;
@override List<OptionWriteRequest> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of QuestionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionWriteRequestCopyWith<_QuestionWriteRequest> get copyWith => __$QuestionWriteRequestCopyWithImpl<_QuestionWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionWriteRequest&&(identical(other.questionType, questionType) || other.questionType == questionType)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionType,prompt,points,position,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'QuestionWriteRequest(questionType: $questionType, prompt: $prompt, points: $points, position: $position, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuestionWriteRequestCopyWith<$Res> implements $QuestionWriteRequestCopyWith<$Res> {
  factory _$QuestionWriteRequestCopyWith(_QuestionWriteRequest value, $Res Function(_QuestionWriteRequest) _then) = __$QuestionWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'question_type') String questionType, String prompt, double points, int position, List<OptionWriteRequest> options
});




}
/// @nodoc
class __$QuestionWriteRequestCopyWithImpl<$Res>
    implements _$QuestionWriteRequestCopyWith<$Res> {
  __$QuestionWriteRequestCopyWithImpl(this._self, this._then);

  final _QuestionWriteRequest _self;
  final $Res Function(_QuestionWriteRequest) _then;

/// Create a copy of QuestionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionType = null,Object? prompt = null,Object? points = null,Object? position = null,Object? options = null,}) {
  return _then(_QuestionWriteRequest(
questionType: null == questionType ? _self.questionType : questionType // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionWriteRequest>,
  ));
}


}


/// @nodoc
mixin _$QuizWriteRequest {

@JsonKey(name: 'course_id') String get courseId; String get title;@JsonKey(name: 'attempt_limit') int get attemptLimit;@JsonKey(name: 'pass_percentage') double get passPercentage;@JsonKey(name: 'lesson_id') String? get lessonId; String? get instructions;@JsonKey(name: 'time_limit_seconds') int? get timeLimitSeconds;@JsonKey(name: 'randomize_questions') bool? get randomizeQuestions;@JsonKey(name: 'randomize_options') bool? get randomizeOptions;@JsonKey(name: 'available_from') DateTime? get availableFrom;@JsonKey(name: 'available_until') DateTime? get availableUntil;@JsonKey(name: 'results_visibility') String? get resultsVisibility;@JsonKey(name: 'is_required') bool? get isRequired;
/// Create a copy of QuizWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizWriteRequestCopyWith<QuizWriteRequest> get copyWith => _$QuizWriteRequestCopyWithImpl<QuizWriteRequest>(this as QuizWriteRequest, _$identity);

  /// Serializes this QuizWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.randomizeQuestions, randomizeQuestions) || other.randomizeQuestions == randomizeQuestions)&&(identical(other.randomizeOptions, randomizeOptions) || other.randomizeOptions == randomizeOptions)&&(identical(other.availableFrom, availableFrom) || other.availableFrom == availableFrom)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil)&&(identical(other.resultsVisibility, resultsVisibility) || other.resultsVisibility == resultsVisibility)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,attemptLimit,passPercentage,lessonId,instructions,timeLimitSeconds,randomizeQuestions,randomizeOptions,availableFrom,availableUntil,resultsVisibility,isRequired);

@override
String toString() {
  return 'QuizWriteRequest(courseId: $courseId, title: $title, attemptLimit: $attemptLimit, passPercentage: $passPercentage, lessonId: $lessonId, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, randomizeQuestions: $randomizeQuestions, randomizeOptions: $randomizeOptions, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class $QuizWriteRequestCopyWith<$Res>  {
  factory $QuizWriteRequestCopyWith(QuizWriteRequest value, $Res Function(QuizWriteRequest) _then) = _$QuizWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'lesson_id') String? lessonId, String? instructions,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'randomize_questions') bool? randomizeQuestions,@JsonKey(name: 'randomize_options') bool? randomizeOptions,@JsonKey(name: 'available_from') DateTime? availableFrom,@JsonKey(name: 'available_until') DateTime? availableUntil,@JsonKey(name: 'results_visibility') String? resultsVisibility,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class _$QuizWriteRequestCopyWithImpl<$Res>
    implements $QuizWriteRequestCopyWith<$Res> {
  _$QuizWriteRequestCopyWithImpl(this._self, this._then);

  final QuizWriteRequest _self;
  final $Res Function(QuizWriteRequest) _then;

/// Create a copy of QuizWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = null,Object? title = null,Object? attemptLimit = null,Object? passPercentage = null,Object? lessonId = freezed,Object? instructions = freezed,Object? timeLimitSeconds = freezed,Object? randomizeQuestions = freezed,Object? randomizeOptions = freezed,Object? availableFrom = freezed,Object? availableUntil = freezed,Object? resultsVisibility = freezed,Object? isRequired = freezed,}) {
  return _then(_self.copyWith(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,randomizeQuestions: freezed == randomizeQuestions ? _self.randomizeQuestions : randomizeQuestions // ignore: cast_nullable_to_non_nullable
as bool?,randomizeOptions: freezed == randomizeOptions ? _self.randomizeOptions : randomizeOptions // ignore: cast_nullable_to_non_nullable
as bool?,availableFrom: freezed == availableFrom ? _self.availableFrom : availableFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,resultsVisibility: freezed == resultsVisibility ? _self.resultsVisibility : resultsVisibility // ignore: cast_nullable_to_non_nullable
as String?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizWriteRequest].
extension QuizWriteRequestPatterns on QuizWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _QuizWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _QuizWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'randomize_questions')  bool? randomizeQuestions, @JsonKey(name: 'randomize_options')  bool? randomizeOptions, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String? resultsVisibility, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.attemptLimit,_that.passPercentage,_that.lessonId,_that.instructions,_that.timeLimitSeconds,_that.randomizeQuestions,_that.randomizeOptions,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'randomize_questions')  bool? randomizeQuestions, @JsonKey(name: 'randomize_options')  bool? randomizeOptions, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String? resultsVisibility, @JsonKey(name: 'is_required')  bool? isRequired)  $default,) {final _that = this;
switch (_that) {
case _QuizWriteRequest():
return $default(_that.courseId,_that.title,_that.attemptLimit,_that.passPercentage,_that.lessonId,_that.instructions,_that.timeLimitSeconds,_that.randomizeQuestions,_that.randomizeOptions,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'attempt_limit')  int attemptLimit, @JsonKey(name: 'pass_percentage')  double passPercentage, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'randomize_questions')  bool? randomizeQuestions, @JsonKey(name: 'randomize_options')  bool? randomizeOptions, @JsonKey(name: 'available_from')  DateTime? availableFrom, @JsonKey(name: 'available_until')  DateTime? availableUntil, @JsonKey(name: 'results_visibility')  String? resultsVisibility, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,) {final _that = this;
switch (_that) {
case _QuizWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.attemptLimit,_that.passPercentage,_that.lessonId,_that.instructions,_that.timeLimitSeconds,_that.randomizeQuestions,_that.randomizeOptions,_that.availableFrom,_that.availableUntil,_that.resultsVisibility,_that.isRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizWriteRequest implements QuizWriteRequest {
  const _QuizWriteRequest({@JsonKey(name: 'course_id') required this.courseId, required this.title, @JsonKey(name: 'attempt_limit') required this.attemptLimit, @JsonKey(name: 'pass_percentage') required this.passPercentage, @JsonKey(name: 'lesson_id') this.lessonId, this.instructions, @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds, @JsonKey(name: 'randomize_questions') this.randomizeQuestions, @JsonKey(name: 'randomize_options') this.randomizeOptions, @JsonKey(name: 'available_from') this.availableFrom, @JsonKey(name: 'available_until') this.availableUntil, @JsonKey(name: 'results_visibility') this.resultsVisibility, @JsonKey(name: 'is_required') this.isRequired});
  factory _QuizWriteRequest.fromJson(Map<String, dynamic> json) => _$QuizWriteRequestFromJson(json);

@override@JsonKey(name: 'course_id') final  String courseId;
@override final  String title;
@override@JsonKey(name: 'attempt_limit') final  int attemptLimit;
@override@JsonKey(name: 'pass_percentage') final  double passPercentage;
@override@JsonKey(name: 'lesson_id') final  String? lessonId;
@override final  String? instructions;
@override@JsonKey(name: 'time_limit_seconds') final  int? timeLimitSeconds;
@override@JsonKey(name: 'randomize_questions') final  bool? randomizeQuestions;
@override@JsonKey(name: 'randomize_options') final  bool? randomizeOptions;
@override@JsonKey(name: 'available_from') final  DateTime? availableFrom;
@override@JsonKey(name: 'available_until') final  DateTime? availableUntil;
@override@JsonKey(name: 'results_visibility') final  String? resultsVisibility;
@override@JsonKey(name: 'is_required') final  bool? isRequired;

/// Create a copy of QuizWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizWriteRequestCopyWith<_QuizWriteRequest> get copyWith => __$QuizWriteRequestCopyWithImpl<_QuizWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.attemptLimit, attemptLimit) || other.attemptLimit == attemptLimit)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.randomizeQuestions, randomizeQuestions) || other.randomizeQuestions == randomizeQuestions)&&(identical(other.randomizeOptions, randomizeOptions) || other.randomizeOptions == randomizeOptions)&&(identical(other.availableFrom, availableFrom) || other.availableFrom == availableFrom)&&(identical(other.availableUntil, availableUntil) || other.availableUntil == availableUntil)&&(identical(other.resultsVisibility, resultsVisibility) || other.resultsVisibility == resultsVisibility)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,attemptLimit,passPercentage,lessonId,instructions,timeLimitSeconds,randomizeQuestions,randomizeOptions,availableFrom,availableUntil,resultsVisibility,isRequired);

@override
String toString() {
  return 'QuizWriteRequest(courseId: $courseId, title: $title, attemptLimit: $attemptLimit, passPercentage: $passPercentage, lessonId: $lessonId, instructions: $instructions, timeLimitSeconds: $timeLimitSeconds, randomizeQuestions: $randomizeQuestions, randomizeOptions: $randomizeOptions, availableFrom: $availableFrom, availableUntil: $availableUntil, resultsVisibility: $resultsVisibility, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class _$QuizWriteRequestCopyWith<$Res> implements $QuizWriteRequestCopyWith<$Res> {
  factory _$QuizWriteRequestCopyWith(_QuizWriteRequest value, $Res Function(_QuizWriteRequest) _then) = __$QuizWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'attempt_limit') int attemptLimit,@JsonKey(name: 'pass_percentage') double passPercentage,@JsonKey(name: 'lesson_id') String? lessonId, String? instructions,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'randomize_questions') bool? randomizeQuestions,@JsonKey(name: 'randomize_options') bool? randomizeOptions,@JsonKey(name: 'available_from') DateTime? availableFrom,@JsonKey(name: 'available_until') DateTime? availableUntil,@JsonKey(name: 'results_visibility') String? resultsVisibility,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class __$QuizWriteRequestCopyWithImpl<$Res>
    implements _$QuizWriteRequestCopyWith<$Res> {
  __$QuizWriteRequestCopyWithImpl(this._self, this._then);

  final _QuizWriteRequest _self;
  final $Res Function(_QuizWriteRequest) _then;

/// Create a copy of QuizWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,Object? title = null,Object? attemptLimit = null,Object? passPercentage = null,Object? lessonId = freezed,Object? instructions = freezed,Object? timeLimitSeconds = freezed,Object? randomizeQuestions = freezed,Object? randomizeOptions = freezed,Object? availableFrom = freezed,Object? availableUntil = freezed,Object? resultsVisibility = freezed,Object? isRequired = freezed,}) {
  return _then(_QuizWriteRequest(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,attemptLimit: null == attemptLimit ? _self.attemptLimit : attemptLimit // ignore: cast_nullable_to_non_nullable
as int,passPercentage: null == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as double,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,randomizeQuestions: freezed == randomizeQuestions ? _self.randomizeQuestions : randomizeQuestions // ignore: cast_nullable_to_non_nullable
as bool?,randomizeOptions: freezed == randomizeOptions ? _self.randomizeOptions : randomizeOptions // ignore: cast_nullable_to_non_nullable
as bool?,availableFrom: freezed == availableFrom ? _self.availableFrom : availableFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,availableUntil: freezed == availableUntil ? _self.availableUntil : availableUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,resultsVisibility: freezed == resultsVisibility ? _self.resultsVisibility : resultsVisibility // ignore: cast_nullable_to_non_nullable
as String?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$QuizQuestionDto {

 String get id; String get type; String get prompt; double get points; List<QuizOptionDto> get options;
/// Create a copy of QuizQuestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizQuestionDtoCopyWith<QuizQuestionDto> get copyWith => _$QuizQuestionDtoCopyWithImpl<QuizQuestionDto>(this as QuizQuestionDto, _$identity);

  /// Serializes this QuizQuestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,prompt,points,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'QuizQuestionDto(id: $id, type: $type, prompt: $prompt, points: $points, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuizQuestionDtoCopyWith<$Res>  {
  factory $QuizQuestionDtoCopyWith(QuizQuestionDto value, $Res Function(QuizQuestionDto) _then) = _$QuizQuestionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String type, String prompt, double points, List<QuizOptionDto> options
});




}
/// @nodoc
class _$QuizQuestionDtoCopyWithImpl<$Res>
    implements $QuizQuestionDtoCopyWith<$Res> {
  _$QuizQuestionDtoCopyWithImpl(this._self, this._then);

  final QuizQuestionDto _self;
  final $Res Function(QuizQuestionDto) _then;

/// Create a copy of QuizQuestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? prompt = null,Object? points = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<QuizOptionDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizQuestionDto].
extension QuizQuestionDtoPatterns on QuizQuestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizQuestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizQuestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizQuestionDto value)  $default,){
final _that = this;
switch (_that) {
case _QuizQuestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizQuestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuizQuestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String prompt,  double points,  List<QuizOptionDto> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizQuestionDto() when $default != null:
return $default(_that.id,_that.type,_that.prompt,_that.points,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String prompt,  double points,  List<QuizOptionDto> options)  $default,) {final _that = this;
switch (_that) {
case _QuizQuestionDto():
return $default(_that.id,_that.type,_that.prompt,_that.points,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String prompt,  double points,  List<QuizOptionDto> options)?  $default,) {final _that = this;
switch (_that) {
case _QuizQuestionDto() when $default != null:
return $default(_that.id,_that.type,_that.prompt,_that.points,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizQuestionDto implements QuizQuestionDto {
  const _QuizQuestionDto({required this.id, required this.type, required this.prompt, this.points = 1, final  List<QuizOptionDto> options = const <QuizOptionDto>[]}): _options = options;
  factory _QuizQuestionDto.fromJson(Map<String, dynamic> json) => _$QuizQuestionDtoFromJson(json);

@override final  String id;
@override final  String type;
@override final  String prompt;
@override@JsonKey() final  double points;
 final  List<QuizOptionDto> _options;
@override@JsonKey() List<QuizOptionDto> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of QuizQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizQuestionDtoCopyWith<_QuizQuestionDto> get copyWith => __$QuizQuestionDtoCopyWithImpl<_QuizQuestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizQuestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.points, points) || other.points == points)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,prompt,points,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'QuizQuestionDto(id: $id, type: $type, prompt: $prompt, points: $points, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuizQuestionDtoCopyWith<$Res> implements $QuizQuestionDtoCopyWith<$Res> {
  factory _$QuizQuestionDtoCopyWith(_QuizQuestionDto value, $Res Function(_QuizQuestionDto) _then) = __$QuizQuestionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String prompt, double points, List<QuizOptionDto> options
});




}
/// @nodoc
class __$QuizQuestionDtoCopyWithImpl<$Res>
    implements _$QuizQuestionDtoCopyWith<$Res> {
  __$QuizQuestionDtoCopyWithImpl(this._self, this._then);

  final _QuizQuestionDto _self;
  final $Res Function(_QuizQuestionDto) _then;

/// Create a copy of QuizQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? prompt = null,Object? points = null,Object? options = null,}) {
  return _then(_QuizQuestionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<QuizOptionDto>,
  ));
}


}


/// @nodoc
mixin _$QuizAttemptDto {

 String get id;@JsonKey(name: 'quiz_id') String get quizId;@JsonKey(name: 'attempt_number') int get attemptNumber; String get status;@JsonKey(name: 'started_at') DateTime get startedAt;@JsonKey(name: 'expires_at') DateTime? get expiresAt; List<QuizQuestionDto> get questions; double? get percentage; bool? get passed;
/// Create a copy of QuizAttemptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAttemptDtoCopyWith<QuizAttemptDto> get copyWith => _$QuizAttemptDtoCopyWithImpl<QuizAttemptDto>(this as QuizAttemptDto, _$identity);

  /// Serializes this QuizAttemptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quizId,attemptNumber,status,startedAt,expiresAt,const DeepCollectionEquality().hash(questions),percentage,passed);

@override
String toString() {
  return 'QuizAttemptDto(id: $id, quizId: $quizId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, questions: $questions, percentage: $percentage, passed: $passed)';
}


}

/// @nodoc
abstract mixin class $QuizAttemptDtoCopyWith<$Res>  {
  factory $QuizAttemptDtoCopyWith(QuizAttemptDto value, $Res Function(QuizAttemptDto) _then) = _$QuizAttemptDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'quiz_id') String quizId,@JsonKey(name: 'attempt_number') int attemptNumber, String status,@JsonKey(name: 'started_at') DateTime startedAt,@JsonKey(name: 'expires_at') DateTime? expiresAt, List<QuizQuestionDto> questions, double? percentage, bool? passed
});




}
/// @nodoc
class _$QuizAttemptDtoCopyWithImpl<$Res>
    implements $QuizAttemptDtoCopyWith<$Res> {
  _$QuizAttemptDtoCopyWithImpl(this._self, this._then);

  final QuizAttemptDto _self;
  final $Res Function(QuizAttemptDto) _then;

/// Create a copy of QuizAttemptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quizId = null,Object? attemptNumber = null,Object? status = null,Object? startedAt = null,Object? expiresAt = freezed,Object? questions = null,Object? percentage = freezed,Object? passed = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuizQuestionDto>,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAttemptDto].
extension QuizAttemptDtoPatterns on QuizAttemptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAttemptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAttemptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAttemptDto value)  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAttemptDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAttemptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'quiz_id')  String quizId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt,  List<QuizQuestionDto> questions,  double? percentage,  bool? passed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAttemptDto() when $default != null:
return $default(_that.id,_that.quizId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.questions,_that.percentage,_that.passed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'quiz_id')  String quizId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt,  List<QuizQuestionDto> questions,  double? percentage,  bool? passed)  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptDto():
return $default(_that.id,_that.quizId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.questions,_that.percentage,_that.passed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'quiz_id')  String quizId, @JsonKey(name: 'attempt_number')  int attemptNumber,  String status, @JsonKey(name: 'started_at')  DateTime startedAt, @JsonKey(name: 'expires_at')  DateTime? expiresAt,  List<QuizQuestionDto> questions,  double? percentage,  bool? passed)?  $default,) {final _that = this;
switch (_that) {
case _QuizAttemptDto() when $default != null:
return $default(_that.id,_that.quizId,_that.attemptNumber,_that.status,_that.startedAt,_that.expiresAt,_that.questions,_that.percentage,_that.passed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizAttemptDto implements QuizAttemptDto {
  const _QuizAttemptDto({required this.id, @JsonKey(name: 'quiz_id') required this.quizId, @JsonKey(name: 'attempt_number') required this.attemptNumber, required this.status, @JsonKey(name: 'started_at') required this.startedAt, @JsonKey(name: 'expires_at') this.expiresAt, final  List<QuizQuestionDto> questions = const <QuizQuestionDto>[], this.percentage, this.passed}): _questions = questions;
  factory _QuizAttemptDto.fromJson(Map<String, dynamic> json) => _$QuizAttemptDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'quiz_id') final  String quizId;
@override@JsonKey(name: 'attempt_number') final  int attemptNumber;
@override final  String status;
@override@JsonKey(name: 'started_at') final  DateTime startedAt;
@override@JsonKey(name: 'expires_at') final  DateTime? expiresAt;
 final  List<QuizQuestionDto> _questions;
@override@JsonKey() List<QuizQuestionDto> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

@override final  double? percentage;
@override final  bool? passed;

/// Create a copy of QuizAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAttemptDtoCopyWith<_QuizAttemptDto> get copyWith => __$QuizAttemptDtoCopyWithImpl<_QuizAttemptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizAttemptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quizId,attemptNumber,status,startedAt,expiresAt,const DeepCollectionEquality().hash(_questions),percentage,passed);

@override
String toString() {
  return 'QuizAttemptDto(id: $id, quizId: $quizId, attemptNumber: $attemptNumber, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, questions: $questions, percentage: $percentage, passed: $passed)';
}


}

/// @nodoc
abstract mixin class _$QuizAttemptDtoCopyWith<$Res> implements $QuizAttemptDtoCopyWith<$Res> {
  factory _$QuizAttemptDtoCopyWith(_QuizAttemptDto value, $Res Function(_QuizAttemptDto) _then) = __$QuizAttemptDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'quiz_id') String quizId,@JsonKey(name: 'attempt_number') int attemptNumber, String status,@JsonKey(name: 'started_at') DateTime startedAt,@JsonKey(name: 'expires_at') DateTime? expiresAt, List<QuizQuestionDto> questions, double? percentage, bool? passed
});




}
/// @nodoc
class __$QuizAttemptDtoCopyWithImpl<$Res>
    implements _$QuizAttemptDtoCopyWith<$Res> {
  __$QuizAttemptDtoCopyWithImpl(this._self, this._then);

  final _QuizAttemptDto _self;
  final $Res Function(_QuizAttemptDto) _then;

/// Create a copy of QuizAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quizId = null,Object? attemptNumber = null,Object? status = null,Object? startedAt = null,Object? expiresAt = freezed,Object? questions = null,Object? percentage = freezed,Object? passed = freezed,}) {
  return _then(_QuizAttemptDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuizQuestionDto>,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,passed: freezed == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AnswerWriteRequest {

@JsonKey(name: 'question_id') String get questionId;@JsonKey(name: 'selected_option_ids') List<String>? get selectedOptionIds;@JsonKey(name: 'text_answer') String? get textAnswer;
/// Create a copy of AnswerWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerWriteRequestCopyWith<AnswerWriteRequest> get copyWith => _$AnswerWriteRequestCopyWithImpl<AnswerWriteRequest>(this as AnswerWriteRequest, _$identity);

  /// Serializes this AnswerWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerWriteRequest&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other.selectedOptionIds, selectedOptionIds)&&(identical(other.textAnswer, textAnswer) || other.textAnswer == textAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,const DeepCollectionEquality().hash(selectedOptionIds),textAnswer);

@override
String toString() {
  return 'AnswerWriteRequest(questionId: $questionId, selectedOptionIds: $selectedOptionIds, textAnswer: $textAnswer)';
}


}

/// @nodoc
abstract mixin class $AnswerWriteRequestCopyWith<$Res>  {
  factory $AnswerWriteRequestCopyWith(AnswerWriteRequest value, $Res Function(AnswerWriteRequest) _then) = _$AnswerWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String>? selectedOptionIds,@JsonKey(name: 'text_answer') String? textAnswer
});




}
/// @nodoc
class _$AnswerWriteRequestCopyWithImpl<$Res>
    implements $AnswerWriteRequestCopyWith<$Res> {
  _$AnswerWriteRequestCopyWithImpl(this._self, this._then);

  final AnswerWriteRequest _self;
  final $Res Function(AnswerWriteRequest) _then;

/// Create a copy of AnswerWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? selectedOptionIds = freezed,Object? textAnswer = freezed,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: freezed == selectedOptionIds ? _self.selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,textAnswer: freezed == textAnswer ? _self.textAnswer : textAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerWriteRequest].
extension AnswerWriteRequestPatterns on AnswerWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _AnswerWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String>? selectedOptionIds, @JsonKey(name: 'text_answer')  String? textAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerWriteRequest() when $default != null:
return $default(_that.questionId,_that.selectedOptionIds,_that.textAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String>? selectedOptionIds, @JsonKey(name: 'text_answer')  String? textAnswer)  $default,) {final _that = this;
switch (_that) {
case _AnswerWriteRequest():
return $default(_that.questionId,_that.selectedOptionIds,_that.textAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String>? selectedOptionIds, @JsonKey(name: 'text_answer')  String? textAnswer)?  $default,) {final _that = this;
switch (_that) {
case _AnswerWriteRequest() when $default != null:
return $default(_that.questionId,_that.selectedOptionIds,_that.textAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnswerWriteRequest implements AnswerWriteRequest {
  const _AnswerWriteRequest({@JsonKey(name: 'question_id') required this.questionId, @JsonKey(name: 'selected_option_ids') final  List<String>? selectedOptionIds, @JsonKey(name: 'text_answer') this.textAnswer}): _selectedOptionIds = selectedOptionIds;
  factory _AnswerWriteRequest.fromJson(Map<String, dynamic> json) => _$AnswerWriteRequestFromJson(json);

@override@JsonKey(name: 'question_id') final  String questionId;
 final  List<String>? _selectedOptionIds;
@override@JsonKey(name: 'selected_option_ids') List<String>? get selectedOptionIds {
  final value = _selectedOptionIds;
  if (value == null) return null;
  if (_selectedOptionIds is EqualUnmodifiableListView) return _selectedOptionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'text_answer') final  String? textAnswer;

/// Create a copy of AnswerWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerWriteRequestCopyWith<_AnswerWriteRequest> get copyWith => __$AnswerWriteRequestCopyWithImpl<_AnswerWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerWriteRequest&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other._selectedOptionIds, _selectedOptionIds)&&(identical(other.textAnswer, textAnswer) || other.textAnswer == textAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,const DeepCollectionEquality().hash(_selectedOptionIds),textAnswer);

@override
String toString() {
  return 'AnswerWriteRequest(questionId: $questionId, selectedOptionIds: $selectedOptionIds, textAnswer: $textAnswer)';
}


}

/// @nodoc
abstract mixin class _$AnswerWriteRequestCopyWith<$Res> implements $AnswerWriteRequestCopyWith<$Res> {
  factory _$AnswerWriteRequestCopyWith(_AnswerWriteRequest value, $Res Function(_AnswerWriteRequest) _then) = __$AnswerWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String>? selectedOptionIds,@JsonKey(name: 'text_answer') String? textAnswer
});




}
/// @nodoc
class __$AnswerWriteRequestCopyWithImpl<$Res>
    implements _$AnswerWriteRequestCopyWith<$Res> {
  __$AnswerWriteRequestCopyWithImpl(this._self, this._then);

  final _AnswerWriteRequest _self;
  final $Res Function(_AnswerWriteRequest) _then;

/// Create a copy of AnswerWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? selectedOptionIds = freezed,Object? textAnswer = freezed,}) {
  return _then(_AnswerWriteRequest(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: freezed == selectedOptionIds ? _self._selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,textAnswer: freezed == textAnswer ? _self.textAnswer : textAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubmissionWriteRequest {

@JsonKey(name: 'text_content') String? get textContent;@JsonKey(name: 'media_asset_ids') List<String>? get mediaAssetIds;
/// Create a copy of SubmissionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionWriteRequestCopyWith<SubmissionWriteRequest> get copyWith => _$SubmissionWriteRequestCopyWithImpl<SubmissionWriteRequest>(this as SubmissionWriteRequest, _$identity);

  /// Serializes this SubmissionWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmissionWriteRequest&&(identical(other.textContent, textContent) || other.textContent == textContent)&&const DeepCollectionEquality().equals(other.mediaAssetIds, mediaAssetIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,textContent,const DeepCollectionEquality().hash(mediaAssetIds));

@override
String toString() {
  return 'SubmissionWriteRequest(textContent: $textContent, mediaAssetIds: $mediaAssetIds)';
}


}

/// @nodoc
abstract mixin class $SubmissionWriteRequestCopyWith<$Res>  {
  factory $SubmissionWriteRequestCopyWith(SubmissionWriteRequest value, $Res Function(SubmissionWriteRequest) _then) = _$SubmissionWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'text_content') String? textContent,@JsonKey(name: 'media_asset_ids') List<String>? mediaAssetIds
});




}
/// @nodoc
class _$SubmissionWriteRequestCopyWithImpl<$Res>
    implements $SubmissionWriteRequestCopyWith<$Res> {
  _$SubmissionWriteRequestCopyWithImpl(this._self, this._then);

  final SubmissionWriteRequest _self;
  final $Res Function(SubmissionWriteRequest) _then;

/// Create a copy of SubmissionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? textContent = freezed,Object? mediaAssetIds = freezed,}) {
  return _then(_self.copyWith(
textContent: freezed == textContent ? _self.textContent : textContent // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetIds: freezed == mediaAssetIds ? _self.mediaAssetIds : mediaAssetIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmissionWriteRequest].
extension SubmissionWriteRequestPatterns on SubmissionWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmissionWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmissionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmissionWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubmissionWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmissionWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubmissionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'text_content')  String? textContent, @JsonKey(name: 'media_asset_ids')  List<String>? mediaAssetIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmissionWriteRequest() when $default != null:
return $default(_that.textContent,_that.mediaAssetIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'text_content')  String? textContent, @JsonKey(name: 'media_asset_ids')  List<String>? mediaAssetIds)  $default,) {final _that = this;
switch (_that) {
case _SubmissionWriteRequest():
return $default(_that.textContent,_that.mediaAssetIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'text_content')  String? textContent, @JsonKey(name: 'media_asset_ids')  List<String>? mediaAssetIds)?  $default,) {final _that = this;
switch (_that) {
case _SubmissionWriteRequest() when $default != null:
return $default(_that.textContent,_that.mediaAssetIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmissionWriteRequest implements SubmissionWriteRequest {
  const _SubmissionWriteRequest({@JsonKey(name: 'text_content') this.textContent, @JsonKey(name: 'media_asset_ids') final  List<String>? mediaAssetIds}): _mediaAssetIds = mediaAssetIds;
  factory _SubmissionWriteRequest.fromJson(Map<String, dynamic> json) => _$SubmissionWriteRequestFromJson(json);

@override@JsonKey(name: 'text_content') final  String? textContent;
 final  List<String>? _mediaAssetIds;
@override@JsonKey(name: 'media_asset_ids') List<String>? get mediaAssetIds {
  final value = _mediaAssetIds;
  if (value == null) return null;
  if (_mediaAssetIds is EqualUnmodifiableListView) return _mediaAssetIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SubmissionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmissionWriteRequestCopyWith<_SubmissionWriteRequest> get copyWith => __$SubmissionWriteRequestCopyWithImpl<_SubmissionWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmissionWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmissionWriteRequest&&(identical(other.textContent, textContent) || other.textContent == textContent)&&const DeepCollectionEquality().equals(other._mediaAssetIds, _mediaAssetIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,textContent,const DeepCollectionEquality().hash(_mediaAssetIds));

@override
String toString() {
  return 'SubmissionWriteRequest(textContent: $textContent, mediaAssetIds: $mediaAssetIds)';
}


}

/// @nodoc
abstract mixin class _$SubmissionWriteRequestCopyWith<$Res> implements $SubmissionWriteRequestCopyWith<$Res> {
  factory _$SubmissionWriteRequestCopyWith(_SubmissionWriteRequest value, $Res Function(_SubmissionWriteRequest) _then) = __$SubmissionWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'text_content') String? textContent,@JsonKey(name: 'media_asset_ids') List<String>? mediaAssetIds
});




}
/// @nodoc
class __$SubmissionWriteRequestCopyWithImpl<$Res>
    implements _$SubmissionWriteRequestCopyWith<$Res> {
  __$SubmissionWriteRequestCopyWithImpl(this._self, this._then);

  final _SubmissionWriteRequest _self;
  final $Res Function(_SubmissionWriteRequest) _then;

/// Create a copy of SubmissionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? textContent = freezed,Object? mediaAssetIds = freezed,}) {
  return _then(_SubmissionWriteRequest(
textContent: freezed == textContent ? _self.textContent : textContent // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetIds: freezed == mediaAssetIds ? _self._mediaAssetIds : mediaAssetIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$AssignmentWriteRequest {

@JsonKey(name: 'course_id') String get courseId; String get title;@JsonKey(name: 'maximum_score') double get maximumScore;@JsonKey(name: 'passing_score') double get passingScore;@JsonKey(name: 'maximum_submissions') int get maximumSubmissions;@JsonKey(name: 'lesson_id') String? get lessonId; String? get instructions;@JsonKey(name: 'attachment_asset_ids') List<String>? get attachmentAssetIds;@JsonKey(name: 'due_at') DateTime? get dueAt;@JsonKey(name: 'allowed_file_types') List<String>? get allowedFileTypes;@JsonKey(name: 'is_required') bool? get isRequired;
/// Create a copy of AssignmentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignmentWriteRequestCopyWith<AssignmentWriteRequest> get copyWith => _$AssignmentWriteRequestCopyWithImpl<AssignmentWriteRequest>(this as AssignmentWriteRequest, _$identity);

  /// Serializes this AssignmentWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignmentWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.maximumScore, maximumScore) || other.maximumScore == maximumScore)&&(identical(other.passingScore, passingScore) || other.passingScore == passingScore)&&(identical(other.maximumSubmissions, maximumSubmissions) || other.maximumSubmissions == maximumSubmissions)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&const DeepCollectionEquality().equals(other.attachmentAssetIds, attachmentAssetIds)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&const DeepCollectionEquality().equals(other.allowedFileTypes, allowedFileTypes)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,maximumScore,passingScore,maximumSubmissions,lessonId,instructions,const DeepCollectionEquality().hash(attachmentAssetIds),dueAt,const DeepCollectionEquality().hash(allowedFileTypes),isRequired);

@override
String toString() {
  return 'AssignmentWriteRequest(courseId: $courseId, title: $title, maximumScore: $maximumScore, passingScore: $passingScore, maximumSubmissions: $maximumSubmissions, lessonId: $lessonId, instructions: $instructions, attachmentAssetIds: $attachmentAssetIds, dueAt: $dueAt, allowedFileTypes: $allowedFileTypes, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class $AssignmentWriteRequestCopyWith<$Res>  {
  factory $AssignmentWriteRequestCopyWith(AssignmentWriteRequest value, $Res Function(AssignmentWriteRequest) _then) = _$AssignmentWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'maximum_score') double maximumScore,@JsonKey(name: 'passing_score') double passingScore,@JsonKey(name: 'maximum_submissions') int maximumSubmissions,@JsonKey(name: 'lesson_id') String? lessonId, String? instructions,@JsonKey(name: 'attachment_asset_ids') List<String>? attachmentAssetIds,@JsonKey(name: 'due_at') DateTime? dueAt,@JsonKey(name: 'allowed_file_types') List<String>? allowedFileTypes,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class _$AssignmentWriteRequestCopyWithImpl<$Res>
    implements $AssignmentWriteRequestCopyWith<$Res> {
  _$AssignmentWriteRequestCopyWithImpl(this._self, this._then);

  final AssignmentWriteRequest _self;
  final $Res Function(AssignmentWriteRequest) _then;

/// Create a copy of AssignmentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = null,Object? title = null,Object? maximumScore = null,Object? passingScore = null,Object? maximumSubmissions = null,Object? lessonId = freezed,Object? instructions = freezed,Object? attachmentAssetIds = freezed,Object? dueAt = freezed,Object? allowedFileTypes = freezed,Object? isRequired = freezed,}) {
  return _then(_self.copyWith(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,maximumScore: null == maximumScore ? _self.maximumScore : maximumScore // ignore: cast_nullable_to_non_nullable
as double,passingScore: null == passingScore ? _self.passingScore : passingScore // ignore: cast_nullable_to_non_nullable
as double,maximumSubmissions: null == maximumSubmissions ? _self.maximumSubmissions : maximumSubmissions // ignore: cast_nullable_to_non_nullable
as int,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,attachmentAssetIds: freezed == attachmentAssetIds ? _self.attachmentAssetIds : attachmentAssetIds // ignore: cast_nullable_to_non_nullable
as List<String>?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,allowedFileTypes: freezed == allowedFileTypes ? _self.allowedFileTypes : allowedFileTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignmentWriteRequest].
extension AssignmentWriteRequestPatterns on AssignmentWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignmentWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignmentWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignmentWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _AssignmentWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignmentWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AssignmentWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'attachment_asset_ids')  List<String>? attachmentAssetIds, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'allowed_file_types')  List<String>? allowedFileTypes, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignmentWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.maximumScore,_that.passingScore,_that.maximumSubmissions,_that.lessonId,_that.instructions,_that.attachmentAssetIds,_that.dueAt,_that.allowedFileTypes,_that.isRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'attachment_asset_ids')  List<String>? attachmentAssetIds, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'allowed_file_types')  List<String>? allowedFileTypes, @JsonKey(name: 'is_required')  bool? isRequired)  $default,) {final _that = this;
switch (_that) {
case _AssignmentWriteRequest():
return $default(_that.courseId,_that.title,_that.maximumScore,_that.passingScore,_that.maximumSubmissions,_that.lessonId,_that.instructions,_that.attachmentAssetIds,_that.dueAt,_that.allowedFileTypes,_that.isRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'maximum_score')  double maximumScore, @JsonKey(name: 'passing_score')  double passingScore, @JsonKey(name: 'maximum_submissions')  int maximumSubmissions, @JsonKey(name: 'lesson_id')  String? lessonId,  String? instructions, @JsonKey(name: 'attachment_asset_ids')  List<String>? attachmentAssetIds, @JsonKey(name: 'due_at')  DateTime? dueAt, @JsonKey(name: 'allowed_file_types')  List<String>? allowedFileTypes, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,) {final _that = this;
switch (_that) {
case _AssignmentWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.maximumScore,_that.passingScore,_that.maximumSubmissions,_that.lessonId,_that.instructions,_that.attachmentAssetIds,_that.dueAt,_that.allowedFileTypes,_that.isRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignmentWriteRequest implements AssignmentWriteRequest {
  const _AssignmentWriteRequest({@JsonKey(name: 'course_id') required this.courseId, required this.title, @JsonKey(name: 'maximum_score') required this.maximumScore, @JsonKey(name: 'passing_score') required this.passingScore, @JsonKey(name: 'maximum_submissions') required this.maximumSubmissions, @JsonKey(name: 'lesson_id') this.lessonId, this.instructions, @JsonKey(name: 'attachment_asset_ids') final  List<String>? attachmentAssetIds, @JsonKey(name: 'due_at') this.dueAt, @JsonKey(name: 'allowed_file_types') final  List<String>? allowedFileTypes, @JsonKey(name: 'is_required') this.isRequired}): _attachmentAssetIds = attachmentAssetIds,_allowedFileTypes = allowedFileTypes;
  factory _AssignmentWriteRequest.fromJson(Map<String, dynamic> json) => _$AssignmentWriteRequestFromJson(json);

@override@JsonKey(name: 'course_id') final  String courseId;
@override final  String title;
@override@JsonKey(name: 'maximum_score') final  double maximumScore;
@override@JsonKey(name: 'passing_score') final  double passingScore;
@override@JsonKey(name: 'maximum_submissions') final  int maximumSubmissions;
@override@JsonKey(name: 'lesson_id') final  String? lessonId;
@override final  String? instructions;
 final  List<String>? _attachmentAssetIds;
@override@JsonKey(name: 'attachment_asset_ids') List<String>? get attachmentAssetIds {
  final value = _attachmentAssetIds;
  if (value == null) return null;
  if (_attachmentAssetIds is EqualUnmodifiableListView) return _attachmentAssetIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'due_at') final  DateTime? dueAt;
 final  List<String>? _allowedFileTypes;
@override@JsonKey(name: 'allowed_file_types') List<String>? get allowedFileTypes {
  final value = _allowedFileTypes;
  if (value == null) return null;
  if (_allowedFileTypes is EqualUnmodifiableListView) return _allowedFileTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_required') final  bool? isRequired;

/// Create a copy of AssignmentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignmentWriteRequestCopyWith<_AssignmentWriteRequest> get copyWith => __$AssignmentWriteRequestCopyWithImpl<_AssignmentWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignmentWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignmentWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.maximumScore, maximumScore) || other.maximumScore == maximumScore)&&(identical(other.passingScore, passingScore) || other.passingScore == passingScore)&&(identical(other.maximumSubmissions, maximumSubmissions) || other.maximumSubmissions == maximumSubmissions)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&const DeepCollectionEquality().equals(other._attachmentAssetIds, _attachmentAssetIds)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&const DeepCollectionEquality().equals(other._allowedFileTypes, _allowedFileTypes)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,maximumScore,passingScore,maximumSubmissions,lessonId,instructions,const DeepCollectionEquality().hash(_attachmentAssetIds),dueAt,const DeepCollectionEquality().hash(_allowedFileTypes),isRequired);

@override
String toString() {
  return 'AssignmentWriteRequest(courseId: $courseId, title: $title, maximumScore: $maximumScore, passingScore: $passingScore, maximumSubmissions: $maximumSubmissions, lessonId: $lessonId, instructions: $instructions, attachmentAssetIds: $attachmentAssetIds, dueAt: $dueAt, allowedFileTypes: $allowedFileTypes, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class _$AssignmentWriteRequestCopyWith<$Res> implements $AssignmentWriteRequestCopyWith<$Res> {
  factory _$AssignmentWriteRequestCopyWith(_AssignmentWriteRequest value, $Res Function(_AssignmentWriteRequest) _then) = __$AssignmentWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'maximum_score') double maximumScore,@JsonKey(name: 'passing_score') double passingScore,@JsonKey(name: 'maximum_submissions') int maximumSubmissions,@JsonKey(name: 'lesson_id') String? lessonId, String? instructions,@JsonKey(name: 'attachment_asset_ids') List<String>? attachmentAssetIds,@JsonKey(name: 'due_at') DateTime? dueAt,@JsonKey(name: 'allowed_file_types') List<String>? allowedFileTypes,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class __$AssignmentWriteRequestCopyWithImpl<$Res>
    implements _$AssignmentWriteRequestCopyWith<$Res> {
  __$AssignmentWriteRequestCopyWithImpl(this._self, this._then);

  final _AssignmentWriteRequest _self;
  final $Res Function(_AssignmentWriteRequest) _then;

/// Create a copy of AssignmentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,Object? title = null,Object? maximumScore = null,Object? passingScore = null,Object? maximumSubmissions = null,Object? lessonId = freezed,Object? instructions = freezed,Object? attachmentAssetIds = freezed,Object? dueAt = freezed,Object? allowedFileTypes = freezed,Object? isRequired = freezed,}) {
  return _then(_AssignmentWriteRequest(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,maximumScore: null == maximumScore ? _self.maximumScore : maximumScore // ignore: cast_nullable_to_non_nullable
as double,passingScore: null == passingScore ? _self.passingScore : passingScore // ignore: cast_nullable_to_non_nullable
as double,maximumSubmissions: null == maximumSubmissions ? _self.maximumSubmissions : maximumSubmissions // ignore: cast_nullable_to_non_nullable
as int,lessonId: freezed == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,attachmentAssetIds: freezed == attachmentAssetIds ? _self._attachmentAssetIds : attachmentAssetIds // ignore: cast_nullable_to_non_nullable
as List<String>?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,allowedFileTypes: freezed == allowedFileTypes ? _self._allowedFileTypes : allowedFileTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$GradeWriteRequest {

 double get points; String? get feedback;@JsonKey(name: 'question_id') String? get questionId;
/// Create a copy of GradeWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeWriteRequestCopyWith<GradeWriteRequest> get copyWith => _$GradeWriteRequestCopyWithImpl<GradeWriteRequest>(this as GradeWriteRequest, _$identity);

  /// Serializes this GradeWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeWriteRequest&&(identical(other.points, points) || other.points == points)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points,feedback,questionId);

@override
String toString() {
  return 'GradeWriteRequest(points: $points, feedback: $feedback, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $GradeWriteRequestCopyWith<$Res>  {
  factory $GradeWriteRequestCopyWith(GradeWriteRequest value, $Res Function(GradeWriteRequest) _then) = _$GradeWriteRequestCopyWithImpl;
@useResult
$Res call({
 double points, String? feedback,@JsonKey(name: 'question_id') String? questionId
});




}
/// @nodoc
class _$GradeWriteRequestCopyWithImpl<$Res>
    implements $GradeWriteRequestCopyWith<$Res> {
  _$GradeWriteRequestCopyWithImpl(this._self, this._then);

  final GradeWriteRequest _self;
  final $Res Function(GradeWriteRequest) _then;

/// Create a copy of GradeWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? feedback = freezed,Object? questionId = freezed,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeWriteRequest].
extension GradeWriteRequestPatterns on GradeWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GradeWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GradeWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GradeWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _GradeWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GradeWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GradeWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double points,  String? feedback, @JsonKey(name: 'question_id')  String? questionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GradeWriteRequest() when $default != null:
return $default(_that.points,_that.feedback,_that.questionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double points,  String? feedback, @JsonKey(name: 'question_id')  String? questionId)  $default,) {final _that = this;
switch (_that) {
case _GradeWriteRequest():
return $default(_that.points,_that.feedback,_that.questionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double points,  String? feedback, @JsonKey(name: 'question_id')  String? questionId)?  $default,) {final _that = this;
switch (_that) {
case _GradeWriteRequest() when $default != null:
return $default(_that.points,_that.feedback,_that.questionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GradeWriteRequest implements GradeWriteRequest {
  const _GradeWriteRequest({required this.points, this.feedback, @JsonKey(name: 'question_id') this.questionId});
  factory _GradeWriteRequest.fromJson(Map<String, dynamic> json) => _$GradeWriteRequestFromJson(json);

@override final  double points;
@override final  String? feedback;
@override@JsonKey(name: 'question_id') final  String? questionId;

/// Create a copy of GradeWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeWriteRequestCopyWith<_GradeWriteRequest> get copyWith => __$GradeWriteRequestCopyWithImpl<_GradeWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GradeWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeWriteRequest&&(identical(other.points, points) || other.points == points)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points,feedback,questionId);

@override
String toString() {
  return 'GradeWriteRequest(points: $points, feedback: $feedback, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class _$GradeWriteRequestCopyWith<$Res> implements $GradeWriteRequestCopyWith<$Res> {
  factory _$GradeWriteRequestCopyWith(_GradeWriteRequest value, $Res Function(_GradeWriteRequest) _then) = __$GradeWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 double points, String? feedback,@JsonKey(name: 'question_id') String? questionId
});




}
/// @nodoc
class __$GradeWriteRequestCopyWithImpl<$Res>
    implements _$GradeWriteRequestCopyWith<$Res> {
  __$GradeWriteRequestCopyWithImpl(this._self, this._then);

  final _GradeWriteRequest _self;
  final $Res Function(_GradeWriteRequest) _then;

/// Create a copy of GradeWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? feedback = freezed,Object? questionId = freezed,}) {
  return _then(_GradeWriteRequest(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LiveSessionWriteRequest {

@JsonKey(name: 'course_id') String get courseId; String get title;@JsonKey(name: 'scheduled_start_at') DateTime get scheduledStartAt;@JsonKey(name: 'scheduled_end_at') DateTime get scheduledEndAt; String? get description;
/// Create a copy of LiveSessionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveSessionWriteRequestCopyWith<LiveSessionWriteRequest> get copyWith => _$LiveSessionWriteRequestCopyWithImpl<LiveSessionWriteRequest>(this as LiveSessionWriteRequest, _$identity);

  /// Serializes this LiveSessionWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveSessionWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,scheduledStartAt,scheduledEndAt,description);

@override
String toString() {
  return 'LiveSessionWriteRequest(courseId: $courseId, title: $title, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, description: $description)';
}


}

/// @nodoc
abstract mixin class $LiveSessionWriteRequestCopyWith<$Res>  {
  factory $LiveSessionWriteRequestCopyWith(LiveSessionWriteRequest value, $Res Function(LiveSessionWriteRequest) _then) = _$LiveSessionWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt, String? description
});




}
/// @nodoc
class _$LiveSessionWriteRequestCopyWithImpl<$Res>
    implements $LiveSessionWriteRequestCopyWith<$Res> {
  _$LiveSessionWriteRequestCopyWithImpl(this._self, this._then);

  final LiveSessionWriteRequest _self;
  final $Res Function(LiveSessionWriteRequest) _then;

/// Create a copy of LiveSessionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = null,Object? title = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveSessionWriteRequest].
extension LiveSessionWriteRequestPatterns on LiveSessionWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveSessionWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveSessionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveSessionWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _LiveSessionWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveSessionWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LiveSessionWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveSessionWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.scheduledStartAt,_that.scheduledEndAt,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String? description)  $default,) {final _that = this;
switch (_that) {
case _LiveSessionWriteRequest():
return $default(_that.courseId,_that.title,_that.scheduledStartAt,_that.scheduledEndAt,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course_id')  String courseId,  String title, @JsonKey(name: 'scheduled_start_at')  DateTime scheduledStartAt, @JsonKey(name: 'scheduled_end_at')  DateTime scheduledEndAt,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _LiveSessionWriteRequest() when $default != null:
return $default(_that.courseId,_that.title,_that.scheduledStartAt,_that.scheduledEndAt,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveSessionWriteRequest implements LiveSessionWriteRequest {
  const _LiveSessionWriteRequest({@JsonKey(name: 'course_id') required this.courseId, required this.title, @JsonKey(name: 'scheduled_start_at') required this.scheduledStartAt, @JsonKey(name: 'scheduled_end_at') required this.scheduledEndAt, this.description});
  factory _LiveSessionWriteRequest.fromJson(Map<String, dynamic> json) => _$LiveSessionWriteRequestFromJson(json);

@override@JsonKey(name: 'course_id') final  String courseId;
@override final  String title;
@override@JsonKey(name: 'scheduled_start_at') final  DateTime scheduledStartAt;
@override@JsonKey(name: 'scheduled_end_at') final  DateTime scheduledEndAt;
@override final  String? description;

/// Create a copy of LiveSessionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveSessionWriteRequestCopyWith<_LiveSessionWriteRequest> get copyWith => __$LiveSessionWriteRequestCopyWithImpl<_LiveSessionWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveSessionWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveSessionWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.scheduledEndAt, scheduledEndAt) || other.scheduledEndAt == scheduledEndAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,scheduledStartAt,scheduledEndAt,description);

@override
String toString() {
  return 'LiveSessionWriteRequest(courseId: $courseId, title: $title, scheduledStartAt: $scheduledStartAt, scheduledEndAt: $scheduledEndAt, description: $description)';
}


}

/// @nodoc
abstract mixin class _$LiveSessionWriteRequestCopyWith<$Res> implements $LiveSessionWriteRequestCopyWith<$Res> {
  factory _$LiveSessionWriteRequestCopyWith(_LiveSessionWriteRequest value, $Res Function(_LiveSessionWriteRequest) _then) = __$LiveSessionWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course_id') String courseId, String title,@JsonKey(name: 'scheduled_start_at') DateTime scheduledStartAt,@JsonKey(name: 'scheduled_end_at') DateTime scheduledEndAt, String? description
});




}
/// @nodoc
class __$LiveSessionWriteRequestCopyWithImpl<$Res>
    implements _$LiveSessionWriteRequestCopyWith<$Res> {
  __$LiveSessionWriteRequestCopyWithImpl(this._self, this._then);

  final _LiveSessionWriteRequest _self;
  final $Res Function(_LiveSessionWriteRequest) _then;

/// Create a copy of LiveSessionWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,Object? title = null,Object? scheduledStartAt = null,Object? scheduledEndAt = null,Object? description = freezed,}) {
  return _then(_LiveSessionWriteRequest(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,scheduledStartAt: null == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledEndAt: null == scheduledEndAt ? _self.scheduledEndAt : scheduledEndAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UploadIntentWriteRequest {

 String get kind; String get filename;@JsonKey(name: 'content_type') String get contentType;@JsonKey(name: 'size_bytes') int get sizeBytes;@JsonKey(name: 'checksum_sha256') String? get checksumSha256;
/// Create a copy of UploadIntentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadIntentWriteRequestCopyWith<UploadIntentWriteRequest> get copyWith => _$UploadIntentWriteRequestCopyWithImpl<UploadIntentWriteRequest>(this as UploadIntentWriteRequest, _$identity);

  /// Serializes this UploadIntentWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadIntentWriteRequest&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,filename,contentType,sizeBytes,checksumSha256);

@override
String toString() {
  return 'UploadIntentWriteRequest(kind: $kind, filename: $filename, contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class $UploadIntentWriteRequestCopyWith<$Res>  {
  factory $UploadIntentWriteRequestCopyWith(UploadIntentWriteRequest value, $Res Function(UploadIntentWriteRequest) _then) = _$UploadIntentWriteRequestCopyWithImpl;
@useResult
$Res call({
 String kind, String filename,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'size_bytes') int sizeBytes,@JsonKey(name: 'checksum_sha256') String? checksumSha256
});




}
/// @nodoc
class _$UploadIntentWriteRequestCopyWithImpl<$Res>
    implements $UploadIntentWriteRequestCopyWith<$Res> {
  _$UploadIntentWriteRequestCopyWithImpl(this._self, this._then);

  final UploadIntentWriteRequest _self;
  final $Res Function(UploadIntentWriteRequest) _then;

/// Create a copy of UploadIntentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? filename = null,Object? contentType = null,Object? sizeBytes = null,Object? checksumSha256 = freezed,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,checksumSha256: freezed == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadIntentWriteRequest].
extension UploadIntentWriteRequestPatterns on UploadIntentWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadIntentWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadIntentWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadIntentWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _UploadIntentWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadIntentWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UploadIntentWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String filename, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'size_bytes')  int sizeBytes, @JsonKey(name: 'checksum_sha256')  String? checksumSha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadIntentWriteRequest() when $default != null:
return $default(_that.kind,_that.filename,_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String filename, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'size_bytes')  int sizeBytes, @JsonKey(name: 'checksum_sha256')  String? checksumSha256)  $default,) {final _that = this;
switch (_that) {
case _UploadIntentWriteRequest():
return $default(_that.kind,_that.filename,_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String filename, @JsonKey(name: 'content_type')  String contentType, @JsonKey(name: 'size_bytes')  int sizeBytes, @JsonKey(name: 'checksum_sha256')  String? checksumSha256)?  $default,) {final _that = this;
switch (_that) {
case _UploadIntentWriteRequest() when $default != null:
return $default(_that.kind,_that.filename,_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadIntentWriteRequest implements UploadIntentWriteRequest {
  const _UploadIntentWriteRequest({required this.kind, required this.filename, @JsonKey(name: 'content_type') required this.contentType, @JsonKey(name: 'size_bytes') required this.sizeBytes, @JsonKey(name: 'checksum_sha256') this.checksumSha256});
  factory _UploadIntentWriteRequest.fromJson(Map<String, dynamic> json) => _$UploadIntentWriteRequestFromJson(json);

@override final  String kind;
@override final  String filename;
@override@JsonKey(name: 'content_type') final  String contentType;
@override@JsonKey(name: 'size_bytes') final  int sizeBytes;
@override@JsonKey(name: 'checksum_sha256') final  String? checksumSha256;

/// Create a copy of UploadIntentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadIntentWriteRequestCopyWith<_UploadIntentWriteRequest> get copyWith => __$UploadIntentWriteRequestCopyWithImpl<_UploadIntentWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadIntentWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadIntentWriteRequest&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,filename,contentType,sizeBytes,checksumSha256);

@override
String toString() {
  return 'UploadIntentWriteRequest(kind: $kind, filename: $filename, contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class _$UploadIntentWriteRequestCopyWith<$Res> implements $UploadIntentWriteRequestCopyWith<$Res> {
  factory _$UploadIntentWriteRequestCopyWith(_UploadIntentWriteRequest value, $Res Function(_UploadIntentWriteRequest) _then) = __$UploadIntentWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String kind, String filename,@JsonKey(name: 'content_type') String contentType,@JsonKey(name: 'size_bytes') int sizeBytes,@JsonKey(name: 'checksum_sha256') String? checksumSha256
});




}
/// @nodoc
class __$UploadIntentWriteRequestCopyWithImpl<$Res>
    implements _$UploadIntentWriteRequestCopyWith<$Res> {
  __$UploadIntentWriteRequestCopyWithImpl(this._self, this._then);

  final _UploadIntentWriteRequest _self;
  final $Res Function(_UploadIntentWriteRequest) _then;

/// Create a copy of UploadIntentWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? filename = null,Object? contentType = null,Object? sizeBytes = null,Object? checksumSha256 = freezed,}) {
  return _then(_UploadIntentWriteRequest(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,checksumSha256: freezed == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UploadIntentDto {

 String get id;@JsonKey(name: 'media_asset_id') String get mediaAssetId;@JsonKey(name: 'upload_url') String get uploadUrl;@JsonKey(name: 'expires_at') DateTime get expiresAt;
/// Create a copy of UploadIntentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadIntentDtoCopyWith<UploadIntentDto> get copyWith => _$UploadIntentDtoCopyWithImpl<UploadIntentDto>(this as UploadIntentDto, _$identity);

  /// Serializes this UploadIntentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadIntentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mediaAssetId,uploadUrl,expiresAt);

@override
String toString() {
  return 'UploadIntentDto(id: $id, mediaAssetId: $mediaAssetId, uploadUrl: $uploadUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $UploadIntentDtoCopyWith<$Res>  {
  factory $UploadIntentDtoCopyWith(UploadIntentDto value, $Res Function(UploadIntentDto) _then) = _$UploadIntentDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'media_asset_id') String mediaAssetId,@JsonKey(name: 'upload_url') String uploadUrl,@JsonKey(name: 'expires_at') DateTime expiresAt
});




}
/// @nodoc
class _$UploadIntentDtoCopyWithImpl<$Res>
    implements $UploadIntentDtoCopyWith<$Res> {
  _$UploadIntentDtoCopyWithImpl(this._self, this._then);

  final UploadIntentDto _self;
  final $Res Function(UploadIntentDto) _then;

/// Create a copy of UploadIntentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? mediaAssetId = null,Object? uploadUrl = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,mediaAssetId: null == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadIntentDto].
extension UploadIntentDtoPatterns on UploadIntentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadIntentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadIntentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadIntentDto value)  $default,){
final _that = this;
switch (_that) {
case _UploadIntentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadIntentDto value)?  $default,){
final _that = this;
switch (_that) {
case _UploadIntentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'expires_at')  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadIntentDto() when $default != null:
return $default(_that.id,_that.mediaAssetId,_that.uploadUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'expires_at')  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _UploadIntentDto():
return $default(_that.id,_that.mediaAssetId,_that.uploadUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'media_asset_id')  String mediaAssetId, @JsonKey(name: 'upload_url')  String uploadUrl, @JsonKey(name: 'expires_at')  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _UploadIntentDto() when $default != null:
return $default(_that.id,_that.mediaAssetId,_that.uploadUrl,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadIntentDto implements UploadIntentDto {
  const _UploadIntentDto({required this.id, @JsonKey(name: 'media_asset_id') required this.mediaAssetId, @JsonKey(name: 'upload_url') required this.uploadUrl, @JsonKey(name: 'expires_at') required this.expiresAt});
  factory _UploadIntentDto.fromJson(Map<String, dynamic> json) => _$UploadIntentDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'media_asset_id') final  String mediaAssetId;
@override@JsonKey(name: 'upload_url') final  String uploadUrl;
@override@JsonKey(name: 'expires_at') final  DateTime expiresAt;

/// Create a copy of UploadIntentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadIntentDtoCopyWith<_UploadIntentDto> get copyWith => __$UploadIntentDtoCopyWithImpl<_UploadIntentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadIntentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadIntentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.mediaAssetId, mediaAssetId) || other.mediaAssetId == mediaAssetId)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mediaAssetId,uploadUrl,expiresAt);

@override
String toString() {
  return 'UploadIntentDto(id: $id, mediaAssetId: $mediaAssetId, uploadUrl: $uploadUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$UploadIntentDtoCopyWith<$Res> implements $UploadIntentDtoCopyWith<$Res> {
  factory _$UploadIntentDtoCopyWith(_UploadIntentDto value, $Res Function(_UploadIntentDto) _then) = __$UploadIntentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'media_asset_id') String mediaAssetId,@JsonKey(name: 'upload_url') String uploadUrl,@JsonKey(name: 'expires_at') DateTime expiresAt
});




}
/// @nodoc
class __$UploadIntentDtoCopyWithImpl<$Res>
    implements _$UploadIntentDtoCopyWith<$Res> {
  __$UploadIntentDtoCopyWithImpl(this._self, this._then);

  final _UploadIntentDto _self;
  final $Res Function(_UploadIntentDto) _then;

/// Create a copy of UploadIntentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? mediaAssetId = null,Object? uploadUrl = null,Object? expiresAt = null,}) {
  return _then(_UploadIntentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,mediaAssetId: null == mediaAssetId ? _self.mediaAssetId : mediaAssetId // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$LiveClassTokenResponse {

 String get token; String get url;@JsonKey(name: 'expires_at') DateTime get expiresAt;
/// Create a copy of LiveClassTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveClassTokenResponseCopyWith<LiveClassTokenResponse> get copyWith => _$LiveClassTokenResponseCopyWithImpl<LiveClassTokenResponse>(this as LiveClassTokenResponse, _$identity);

  /// Serializes this LiveClassTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveClassTokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,url,expiresAt);

@override
String toString() {
  return 'LiveClassTokenResponse(token: $token, url: $url, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $LiveClassTokenResponseCopyWith<$Res>  {
  factory $LiveClassTokenResponseCopyWith(LiveClassTokenResponse value, $Res Function(LiveClassTokenResponse) _then) = _$LiveClassTokenResponseCopyWithImpl;
@useResult
$Res call({
 String token, String url,@JsonKey(name: 'expires_at') DateTime expiresAt
});




}
/// @nodoc
class _$LiveClassTokenResponseCopyWithImpl<$Res>
    implements $LiveClassTokenResponseCopyWith<$Res> {
  _$LiveClassTokenResponseCopyWithImpl(this._self, this._then);

  final LiveClassTokenResponse _self;
  final $Res Function(LiveClassTokenResponse) _then;

/// Create a copy of LiveClassTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? url = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveClassTokenResponse].
extension LiveClassTokenResponsePatterns on LiveClassTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveClassTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveClassTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveClassTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _LiveClassTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveClassTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LiveClassTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String url, @JsonKey(name: 'expires_at')  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveClassTokenResponse() when $default != null:
return $default(_that.token,_that.url,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String url, @JsonKey(name: 'expires_at')  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _LiveClassTokenResponse():
return $default(_that.token,_that.url,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String url, @JsonKey(name: 'expires_at')  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _LiveClassTokenResponse() when $default != null:
return $default(_that.token,_that.url,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveClassTokenResponse implements LiveClassTokenResponse {
  const _LiveClassTokenResponse({required this.token, required this.url, @JsonKey(name: 'expires_at') required this.expiresAt});
  factory _LiveClassTokenResponse.fromJson(Map<String, dynamic> json) => _$LiveClassTokenResponseFromJson(json);

@override final  String token;
@override final  String url;
@override@JsonKey(name: 'expires_at') final  DateTime expiresAt;

/// Create a copy of LiveClassTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveClassTokenResponseCopyWith<_LiveClassTokenResponse> get copyWith => __$LiveClassTokenResponseCopyWithImpl<_LiveClassTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveClassTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveClassTokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,url,expiresAt);

@override
String toString() {
  return 'LiveClassTokenResponse(token: $token, url: $url, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$LiveClassTokenResponseCopyWith<$Res> implements $LiveClassTokenResponseCopyWith<$Res> {
  factory _$LiveClassTokenResponseCopyWith(_LiveClassTokenResponse value, $Res Function(_LiveClassTokenResponse) _then) = __$LiveClassTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 String token, String url,@JsonKey(name: 'expires_at') DateTime expiresAt
});




}
/// @nodoc
class __$LiveClassTokenResponseCopyWithImpl<$Res>
    implements _$LiveClassTokenResponseCopyWith<$Res> {
  __$LiveClassTokenResponseCopyWithImpl(this._self, this._then);

  final _LiveClassTokenResponse _self;
  final $Res Function(_LiveClassTokenResponse) _then;

/// Create a copy of LiveClassTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? url = null,Object? expiresAt = null,}) {
  return _then(_LiveClassTokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$OrderWriteRequest {

@JsonKey(name: 'course_id') String get courseId;
/// Create a copy of OrderWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderWriteRequestCopyWith<OrderWriteRequest> get copyWith => _$OrderWriteRequestCopyWithImpl<OrderWriteRequest>(this as OrderWriteRequest, _$identity);

  /// Serializes this OrderWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'OrderWriteRequest(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $OrderWriteRequestCopyWith<$Res>  {
  factory $OrderWriteRequestCopyWith(OrderWriteRequest value, $Res Function(OrderWriteRequest) _then) = _$OrderWriteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'course_id') String courseId
});




}
/// @nodoc
class _$OrderWriteRequestCopyWithImpl<$Res>
    implements $OrderWriteRequestCopyWith<$Res> {
  _$OrderWriteRequestCopyWithImpl(this._self, this._then);

  final OrderWriteRequest _self;
  final $Res Function(OrderWriteRequest) _then;

/// Create a copy of OrderWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = null,}) {
  return _then(_self.copyWith(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderWriteRequest].
extension OrderWriteRequestPatterns on OrderWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _OrderWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OrderWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderWriteRequest() when $default != null:
return $default(_that.courseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'course_id')  String courseId)  $default,) {final _that = this;
switch (_that) {
case _OrderWriteRequest():
return $default(_that.courseId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'course_id')  String courseId)?  $default,) {final _that = this;
switch (_that) {
case _OrderWriteRequest() when $default != null:
return $default(_that.courseId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderWriteRequest implements OrderWriteRequest {
  const _OrderWriteRequest({@JsonKey(name: 'course_id') required this.courseId});
  factory _OrderWriteRequest.fromJson(Map<String, dynamic> json) => _$OrderWriteRequestFromJson(json);

@override@JsonKey(name: 'course_id') final  String courseId;

/// Create a copy of OrderWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderWriteRequestCopyWith<_OrderWriteRequest> get copyWith => __$OrderWriteRequestCopyWithImpl<_OrderWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderWriteRequest&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'OrderWriteRequest(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class _$OrderWriteRequestCopyWith<$Res> implements $OrderWriteRequestCopyWith<$Res> {
  factory _$OrderWriteRequestCopyWith(_OrderWriteRequest value, $Res Function(_OrderWriteRequest) _then) = __$OrderWriteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'course_id') String courseId
});




}
/// @nodoc
class __$OrderWriteRequestCopyWithImpl<$Res>
    implements _$OrderWriteRequestCopyWith<$Res> {
  __$OrderWriteRequestCopyWithImpl(this._self, this._then);

  final _OrderWriteRequest _self;
  final $Res Function(_OrderWriteRequest) _then;

/// Create a copy of OrderWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,}) {
  return _then(_OrderWriteRequest(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderDto {

 String get id; String get status;@JsonKey(name: 'amount_minor') int get amountMinor; String get currency;
/// Create a copy of OrderDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDtoCopyWith<OrderDto> get copyWith => _$OrderDtoCopyWithImpl<OrderDto>(this as OrderDto, _$identity);

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountMinor, amountMinor) || other.amountMinor == amountMinor)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,amountMinor,currency);

@override
String toString() {
  return 'OrderDto(id: $id, status: $status, amountMinor: $amountMinor, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $OrderDtoCopyWith<$Res>  {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) _then) = _$OrderDtoCopyWithImpl;
@useResult
$Res call({
 String id, String status,@JsonKey(name: 'amount_minor') int amountMinor, String currency
});




}
/// @nodoc
class _$OrderDtoCopyWithImpl<$Res>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._self, this._then);

  final OrderDto _self;
  final $Res Function(OrderDto) _then;

/// Create a copy of OrderDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? amountMinor = null,Object? currency = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amountMinor: null == amountMinor ? _self.amountMinor : amountMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDto].
extension OrderDtoPatterns on OrderDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'amount_minor')  int amountMinor,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDto() when $default != null:
return $default(_that.id,_that.status,_that.amountMinor,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'amount_minor')  int amountMinor,  String currency)  $default,) {final _that = this;
switch (_that) {
case _OrderDto():
return $default(_that.id,_that.status,_that.amountMinor,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status, @JsonKey(name: 'amount_minor')  int amountMinor,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _OrderDto() when $default != null:
return $default(_that.id,_that.status,_that.amountMinor,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDto implements OrderDto {
  const _OrderDto({required this.id, required this.status, @JsonKey(name: 'amount_minor') required this.amountMinor, required this.currency});
  factory _OrderDto.fromJson(Map<String, dynamic> json) => _$OrderDtoFromJson(json);

@override final  String id;
@override final  String status;
@override@JsonKey(name: 'amount_minor') final  int amountMinor;
@override final  String currency;

/// Create a copy of OrderDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDtoCopyWith<_OrderDto> get copyWith => __$OrderDtoCopyWithImpl<_OrderDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountMinor, amountMinor) || other.amountMinor == amountMinor)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,amountMinor,currency);

@override
String toString() {
  return 'OrderDto(id: $id, status: $status, amountMinor: $amountMinor, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$OrderDtoCopyWith<$Res> implements $OrderDtoCopyWith<$Res> {
  factory _$OrderDtoCopyWith(_OrderDto value, $Res Function(_OrderDto) _then) = __$OrderDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String status,@JsonKey(name: 'amount_minor') int amountMinor, String currency
});




}
/// @nodoc
class __$OrderDtoCopyWithImpl<$Res>
    implements _$OrderDtoCopyWith<$Res> {
  __$OrderDtoCopyWithImpl(this._self, this._then);

  final _OrderDto _self;
  final $Res Function(_OrderDto) _then;

/// Create a copy of OrderDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? amountMinor = null,Object? currency = null,}) {
  return _then(_OrderDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amountMinor: null == amountMinor ? _self.amountMinor : amountMinor // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PaymentIntentDto {

@JsonKey(name: 'client_secret') String get clientSecret;
/// Create a copy of PaymentIntentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentIntentDtoCopyWith<PaymentIntentDto> get copyWith => _$PaymentIntentDtoCopyWithImpl<PaymentIntentDto>(this as PaymentIntentDto, _$identity);

  /// Serializes this PaymentIntentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentIntentDto&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientSecret);

@override
String toString() {
  return 'PaymentIntentDto(clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class $PaymentIntentDtoCopyWith<$Res>  {
  factory $PaymentIntentDtoCopyWith(PaymentIntentDto value, $Res Function(PaymentIntentDto) _then) = _$PaymentIntentDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'client_secret') String clientSecret
});




}
/// @nodoc
class _$PaymentIntentDtoCopyWithImpl<$Res>
    implements $PaymentIntentDtoCopyWith<$Res> {
  _$PaymentIntentDtoCopyWithImpl(this._self, this._then);

  final PaymentIntentDto _self;
  final $Res Function(PaymentIntentDto) _then;

/// Create a copy of PaymentIntentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientSecret = null,}) {
  return _then(_self.copyWith(
clientSecret: null == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentIntentDto].
extension PaymentIntentDtoPatterns on PaymentIntentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentIntentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentIntentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentIntentDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentIntentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentIntentDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentIntentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'client_secret')  String clientSecret)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentIntentDto() when $default != null:
return $default(_that.clientSecret);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'client_secret')  String clientSecret)  $default,) {final _that = this;
switch (_that) {
case _PaymentIntentDto():
return $default(_that.clientSecret);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'client_secret')  String clientSecret)?  $default,) {final _that = this;
switch (_that) {
case _PaymentIntentDto() when $default != null:
return $default(_that.clientSecret);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentIntentDto implements PaymentIntentDto {
  const _PaymentIntentDto({@JsonKey(name: 'client_secret') required this.clientSecret});
  factory _PaymentIntentDto.fromJson(Map<String, dynamic> json) => _$PaymentIntentDtoFromJson(json);

@override@JsonKey(name: 'client_secret') final  String clientSecret;

/// Create a copy of PaymentIntentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentIntentDtoCopyWith<_PaymentIntentDto> get copyWith => __$PaymentIntentDtoCopyWithImpl<_PaymentIntentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentIntentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentIntentDto&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientSecret);

@override
String toString() {
  return 'PaymentIntentDto(clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class _$PaymentIntentDtoCopyWith<$Res> implements $PaymentIntentDtoCopyWith<$Res> {
  factory _$PaymentIntentDtoCopyWith(_PaymentIntentDto value, $Res Function(_PaymentIntentDto) _then) = __$PaymentIntentDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'client_secret') String clientSecret
});




}
/// @nodoc
class __$PaymentIntentDtoCopyWithImpl<$Res>
    implements _$PaymentIntentDtoCopyWith<$Res> {
  __$PaymentIntentDtoCopyWithImpl(this._self, this._then);

  final _PaymentIntentDto _self;
  final $Res Function(_PaymentIntentDto) _then;

/// Create a copy of PaymentIntentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientSecret = null,}) {
  return _then(_PaymentIntentDto(
clientSecret: null == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeviceTokenWriteRequest {

 String get token; String get platform;
/// Create a copy of DeviceTokenWriteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTokenWriteRequestCopyWith<DeviceTokenWriteRequest> get copyWith => _$DeviceTokenWriteRequestCopyWithImpl<DeviceTokenWriteRequest>(this as DeviceTokenWriteRequest, _$identity);

  /// Serializes this DeviceTokenWriteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTokenWriteRequest&&(identical(other.token, token) || other.token == token)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,platform);

@override
String toString() {
  return 'DeviceTokenWriteRequest(token: $token, platform: $platform)';
}


}

/// @nodoc
abstract mixin class $DeviceTokenWriteRequestCopyWith<$Res>  {
  factory $DeviceTokenWriteRequestCopyWith(DeviceTokenWriteRequest value, $Res Function(DeviceTokenWriteRequest) _then) = _$DeviceTokenWriteRequestCopyWithImpl;
@useResult
$Res call({
 String token, String platform
});




}
/// @nodoc
class _$DeviceTokenWriteRequestCopyWithImpl<$Res>
    implements $DeviceTokenWriteRequestCopyWith<$Res> {
  _$DeviceTokenWriteRequestCopyWithImpl(this._self, this._then);

  final DeviceTokenWriteRequest _self;
  final $Res Function(DeviceTokenWriteRequest) _then;

/// Create a copy of DeviceTokenWriteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? platform = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceTokenWriteRequest].
extension DeviceTokenWriteRequestPatterns on DeviceTokenWriteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceTokenWriteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceTokenWriteRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceTokenWriteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String platform)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest() when $default != null:
return $default(_that.token,_that.platform);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String platform)  $default,) {final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest():
return $default(_that.token,_that.platform);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String platform)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTokenWriteRequest() when $default != null:
return $default(_that.token,_that.platform);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTokenWriteRequest implements DeviceTokenWriteRequest {
  const _DeviceTokenWriteRequest({required this.token, required this.platform});
  factory _DeviceTokenWriteRequest.fromJson(Map<String, dynamic> json) => _$DeviceTokenWriteRequestFromJson(json);

@override final  String token;
@override final  String platform;

/// Create a copy of DeviceTokenWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceTokenWriteRequestCopyWith<_DeviceTokenWriteRequest> get copyWith => __$DeviceTokenWriteRequestCopyWithImpl<_DeviceTokenWriteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceTokenWriteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTokenWriteRequest&&(identical(other.token, token) || other.token == token)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,platform);

@override
String toString() {
  return 'DeviceTokenWriteRequest(token: $token, platform: $platform)';
}


}

/// @nodoc
abstract mixin class _$DeviceTokenWriteRequestCopyWith<$Res> implements $DeviceTokenWriteRequestCopyWith<$Res> {
  factory _$DeviceTokenWriteRequestCopyWith(_DeviceTokenWriteRequest value, $Res Function(_DeviceTokenWriteRequest) _then) = __$DeviceTokenWriteRequestCopyWithImpl;
@override @useResult
$Res call({
 String token, String platform
});




}
/// @nodoc
class __$DeviceTokenWriteRequestCopyWithImpl<$Res>
    implements _$DeviceTokenWriteRequestCopyWith<$Res> {
  __$DeviceTokenWriteRequestCopyWithImpl(this._self, this._then);

  final _DeviceTokenWriteRequest _self;
  final $Res Function(_DeviceTokenWriteRequest) _then;

/// Create a copy of DeviceTokenWriteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? platform = null,}) {
  return _then(_DeviceTokenWriteRequest(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ResultDto {

@JsonKey(name: 'enrollment_id') String get enrollmentId;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'course_title') String get courseTitle; String get status;@JsonKey(name: 'completion_percentage') double get completion;@JsonKey(name: 'quiz_average') double get quizAverage;@JsonKey(name: 'assignment_average') double get assignmentAverage;@JsonKey(name: 'completed_at') DateTime? get completedAt;
/// Create a copy of ResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultDtoCopyWith<ResultDto> get copyWith => _$ResultDtoCopyWithImpl<ResultDto>(this as ResultDto, _$identity);

  /// Serializes this ResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultDto&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.completion, completion) || other.completion == completion)&&(identical(other.quizAverage, quizAverage) || other.quizAverage == quizAverage)&&(identical(other.assignmentAverage, assignmentAverage) || other.assignmentAverage == assignmentAverage)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,courseId,courseTitle,status,completion,quizAverage,assignmentAverage,completedAt);

@override
String toString() {
  return 'ResultDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, status: $status, completion: $completion, quizAverage: $quizAverage, assignmentAverage: $assignmentAverage, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $ResultDtoCopyWith<$Res>  {
  factory $ResultDtoCopyWith(ResultDto value, $Res Function(ResultDto) _then) = _$ResultDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle, String status,@JsonKey(name: 'completion_percentage') double completion,@JsonKey(name: 'quiz_average') double quizAverage,@JsonKey(name: 'assignment_average') double assignmentAverage,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class _$ResultDtoCopyWithImpl<$Res>
    implements $ResultDtoCopyWith<$Res> {
  _$ResultDtoCopyWithImpl(this._self, this._then);

  final ResultDto _self;
  final $Res Function(ResultDto) _then;

/// Create a copy of ResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enrollmentId = null,Object? courseId = null,Object? courseTitle = null,Object? status = null,Object? completion = null,Object? quizAverage = null,Object? assignmentAverage = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,completion: null == completion ? _self.completion : completion // ignore: cast_nullable_to_non_nullable
as double,quizAverage: null == quizAverage ? _self.quizAverage : quizAverage // ignore: cast_nullable_to_non_nullable
as double,assignmentAverage: null == assignmentAverage ? _self.assignmentAverage : assignmentAverage // ignore: cast_nullable_to_non_nullable
as double,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResultDto].
extension ResultDtoPatterns on ResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResultDto value)  $default,){
final _that = this;
switch (_that) {
case _ResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle,  String status, @JsonKey(name: 'completion_percentage')  double completion, @JsonKey(name: 'quiz_average')  double quizAverage, @JsonKey(name: 'assignment_average')  double assignmentAverage, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResultDto() when $default != null:
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.status,_that.completion,_that.quizAverage,_that.assignmentAverage,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle,  String status, @JsonKey(name: 'completion_percentage')  double completion, @JsonKey(name: 'quiz_average')  double quizAverage, @JsonKey(name: 'assignment_average')  double assignmentAverage, @JsonKey(name: 'completed_at')  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _ResultDto():
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.status,_that.completion,_that.quizAverage,_that.assignmentAverage,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'enrollment_id')  String enrollmentId, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'course_title')  String courseTitle,  String status, @JsonKey(name: 'completion_percentage')  double completion, @JsonKey(name: 'quiz_average')  double quizAverage, @JsonKey(name: 'assignment_average')  double assignmentAverage, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _ResultDto() when $default != null:
return $default(_that.enrollmentId,_that.courseId,_that.courseTitle,_that.status,_that.completion,_that.quizAverage,_that.assignmentAverage,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResultDto implements ResultDto {
  const _ResultDto({@JsonKey(name: 'enrollment_id') required this.enrollmentId, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'course_title') required this.courseTitle, required this.status, @JsonKey(name: 'completion_percentage') this.completion = 0, @JsonKey(name: 'quiz_average') this.quizAverage = 0, @JsonKey(name: 'assignment_average') this.assignmentAverage = 0, @JsonKey(name: 'completed_at') this.completedAt});
  factory _ResultDto.fromJson(Map<String, dynamic> json) => _$ResultDtoFromJson(json);

@override@JsonKey(name: 'enrollment_id') final  String enrollmentId;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override final  String status;
@override@JsonKey(name: 'completion_percentage') final  double completion;
@override@JsonKey(name: 'quiz_average') final  double quizAverage;
@override@JsonKey(name: 'assignment_average') final  double assignmentAverage;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;

/// Create a copy of ResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultDtoCopyWith<_ResultDto> get copyWith => __$ResultDtoCopyWithImpl<_ResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultDto&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.completion, completion) || other.completion == completion)&&(identical(other.quizAverage, quizAverage) || other.quizAverage == quizAverage)&&(identical(other.assignmentAverage, assignmentAverage) || other.assignmentAverage == assignmentAverage)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enrollmentId,courseId,courseTitle,status,completion,quizAverage,assignmentAverage,completedAt);

@override
String toString() {
  return 'ResultDto(enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, status: $status, completion: $completion, quizAverage: $quizAverage, assignmentAverage: $assignmentAverage, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$ResultDtoCopyWith<$Res> implements $ResultDtoCopyWith<$Res> {
  factory _$ResultDtoCopyWith(_ResultDto value, $Res Function(_ResultDto) _then) = __$ResultDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'enrollment_id') String enrollmentId,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'course_title') String courseTitle, String status,@JsonKey(name: 'completion_percentage') double completion,@JsonKey(name: 'quiz_average') double quizAverage,@JsonKey(name: 'assignment_average') double assignmentAverage,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class __$ResultDtoCopyWithImpl<$Res>
    implements _$ResultDtoCopyWith<$Res> {
  __$ResultDtoCopyWithImpl(this._self, this._then);

  final _ResultDto _self;
  final $Res Function(_ResultDto) _then;

/// Create a copy of ResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enrollmentId = null,Object? courseId = null,Object? courseTitle = null,Object? status = null,Object? completion = null,Object? quizAverage = null,Object? assignmentAverage = null,Object? completedAt = freezed,}) {
  return _then(_ResultDto(
enrollmentId: null == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,completion: null == completion ? _self.completion : completion // ignore: cast_nullable_to_non_nullable
as double,quizAverage: null == quizAverage ? _self.quizAverage : quizAverage // ignore: cast_nullable_to_non_nullable
as double,assignmentAverage: null == assignmentAverage ? _self.assignmentAverage : assignmentAverage // ignore: cast_nullable_to_non_nullable
as double,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CertificateDto {

 String get id;@JsonKey(name: 'course_id') String get courseId;@JsonKey(name: 'certificate_number') String get certificateNumber; String get status;@JsonKey(name: 'issued_at') DateTime get issuedAt;
/// Create a copy of CertificateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateDtoCopyWith<CertificateDto> get copyWith => _$CertificateDtoCopyWithImpl<CertificateDto>(this as CertificateDto, _$identity);

  /// Serializes this CertificateDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificateDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.certificateNumber, certificateNumber) || other.certificateNumber == certificateNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,certificateNumber,status,issuedAt);

@override
String toString() {
  return 'CertificateDto(id: $id, courseId: $courseId, certificateNumber: $certificateNumber, status: $status, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class $CertificateDtoCopyWith<$Res>  {
  factory $CertificateDtoCopyWith(CertificateDto value, $Res Function(CertificateDto) _then) = _$CertificateDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'certificate_number') String certificateNumber, String status,@JsonKey(name: 'issued_at') DateTime issuedAt
});




}
/// @nodoc
class _$CertificateDtoCopyWithImpl<$Res>
    implements $CertificateDtoCopyWith<$Res> {
  _$CertificateDtoCopyWithImpl(this._self, this._then);

  final CertificateDto _self;
  final $Res Function(CertificateDto) _then;

/// Create a copy of CertificateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? certificateNumber = null,Object? status = null,Object? issuedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,certificateNumber: null == certificateNumber ? _self.certificateNumber : certificateNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificateDto].
extension CertificateDtoPatterns on CertificateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificateDto value)  $default,){
final _that = this;
switch (_that) {
case _CertificateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificateDto value)?  $default,){
final _that = this;
switch (_that) {
case _CertificateDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'certificate_number')  String certificateNumber,  String status, @JsonKey(name: 'issued_at')  DateTime issuedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificateDto() when $default != null:
return $default(_that.id,_that.courseId,_that.certificateNumber,_that.status,_that.issuedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'certificate_number')  String certificateNumber,  String status, @JsonKey(name: 'issued_at')  DateTime issuedAt)  $default,) {final _that = this;
switch (_that) {
case _CertificateDto():
return $default(_that.id,_that.courseId,_that.certificateNumber,_that.status,_that.issuedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'course_id')  String courseId, @JsonKey(name: 'certificate_number')  String certificateNumber,  String status, @JsonKey(name: 'issued_at')  DateTime issuedAt)?  $default,) {final _that = this;
switch (_that) {
case _CertificateDto() when $default != null:
return $default(_that.id,_that.courseId,_that.certificateNumber,_that.status,_that.issuedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificateDto implements CertificateDto {
  const _CertificateDto({required this.id, @JsonKey(name: 'course_id') required this.courseId, @JsonKey(name: 'certificate_number') required this.certificateNumber, required this.status, @JsonKey(name: 'issued_at') required this.issuedAt});
  factory _CertificateDto.fromJson(Map<String, dynamic> json) => _$CertificateDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'course_id') final  String courseId;
@override@JsonKey(name: 'certificate_number') final  String certificateNumber;
@override final  String status;
@override@JsonKey(name: 'issued_at') final  DateTime issuedAt;

/// Create a copy of CertificateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateDtoCopyWith<_CertificateDto> get copyWith => __$CertificateDtoCopyWithImpl<_CertificateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificateDto&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.certificateNumber, certificateNumber) || other.certificateNumber == certificateNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,certificateNumber,status,issuedAt);

@override
String toString() {
  return 'CertificateDto(id: $id, courseId: $courseId, certificateNumber: $certificateNumber, status: $status, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class _$CertificateDtoCopyWith<$Res> implements $CertificateDtoCopyWith<$Res> {
  factory _$CertificateDtoCopyWith(_CertificateDto value, $Res Function(_CertificateDto) _then) = __$CertificateDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'course_id') String courseId,@JsonKey(name: 'certificate_number') String certificateNumber, String status,@JsonKey(name: 'issued_at') DateTime issuedAt
});




}
/// @nodoc
class __$CertificateDtoCopyWithImpl<$Res>
    implements _$CertificateDtoCopyWith<$Res> {
  __$CertificateDtoCopyWithImpl(this._self, this._then);

  final _CertificateDto _self;
  final $Res Function(_CertificateDto) _then;

/// Create a copy of CertificateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? certificateNumber = null,Object? status = null,Object? issuedAt = null,}) {
  return _then(_CertificateDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,certificateNumber: null == certificateNumber ? _self.certificateNumber : certificateNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CertificateVerificationDto {

 bool get valid;@JsonKey(name: 'student_name') String get studentName;@JsonKey(name: 'course_title') String get courseTitle;@JsonKey(name: 'organization_name') String get organizationName;@JsonKey(name: 'issued_at') DateTime get issuedAt;@JsonKey(name: 'certificate_number') String get certificateNumber;
/// Create a copy of CertificateVerificationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateVerificationDtoCopyWith<CertificateVerificationDto> get copyWith => _$CertificateVerificationDtoCopyWithImpl<CertificateVerificationDto>(this as CertificateVerificationDto, _$identity);

  /// Serializes this CertificateVerificationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificateVerificationDto&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt)&&(identical(other.certificateNumber, certificateNumber) || other.certificateNumber == certificateNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,valid,studentName,courseTitle,organizationName,issuedAt,certificateNumber);

@override
String toString() {
  return 'CertificateVerificationDto(valid: $valid, studentName: $studentName, courseTitle: $courseTitle, organizationName: $organizationName, issuedAt: $issuedAt, certificateNumber: $certificateNumber)';
}


}

/// @nodoc
abstract mixin class $CertificateVerificationDtoCopyWith<$Res>  {
  factory $CertificateVerificationDtoCopyWith(CertificateVerificationDto value, $Res Function(CertificateVerificationDto) _then) = _$CertificateVerificationDtoCopyWithImpl;
@useResult
$Res call({
 bool valid,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'organization_name') String organizationName,@JsonKey(name: 'issued_at') DateTime issuedAt,@JsonKey(name: 'certificate_number') String certificateNumber
});




}
/// @nodoc
class _$CertificateVerificationDtoCopyWithImpl<$Res>
    implements $CertificateVerificationDtoCopyWith<$Res> {
  _$CertificateVerificationDtoCopyWithImpl(this._self, this._then);

  final CertificateVerificationDto _self;
  final $Res Function(CertificateVerificationDto) _then;

/// Create a copy of CertificateVerificationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? valid = null,Object? studentName = null,Object? courseTitle = null,Object? organizationName = null,Object? issuedAt = null,Object? certificateNumber = null,}) {
  return _then(_self.copyWith(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime,certificateNumber: null == certificateNumber ? _self.certificateNumber : certificateNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificateVerificationDto].
extension CertificateVerificationDtoPatterns on CertificateVerificationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificateVerificationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificateVerificationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificateVerificationDto value)  $default,){
final _that = this;
switch (_that) {
case _CertificateVerificationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificateVerificationDto value)?  $default,){
final _that = this;
switch (_that) {
case _CertificateVerificationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool valid, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'organization_name')  String organizationName, @JsonKey(name: 'issued_at')  DateTime issuedAt, @JsonKey(name: 'certificate_number')  String certificateNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificateVerificationDto() when $default != null:
return $default(_that.valid,_that.studentName,_that.courseTitle,_that.organizationName,_that.issuedAt,_that.certificateNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool valid, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'organization_name')  String organizationName, @JsonKey(name: 'issued_at')  DateTime issuedAt, @JsonKey(name: 'certificate_number')  String certificateNumber)  $default,) {final _that = this;
switch (_that) {
case _CertificateVerificationDto():
return $default(_that.valid,_that.studentName,_that.courseTitle,_that.organizationName,_that.issuedAt,_that.certificateNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool valid, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'course_title')  String courseTitle, @JsonKey(name: 'organization_name')  String organizationName, @JsonKey(name: 'issued_at')  DateTime issuedAt, @JsonKey(name: 'certificate_number')  String certificateNumber)?  $default,) {final _that = this;
switch (_that) {
case _CertificateVerificationDto() when $default != null:
return $default(_that.valid,_that.studentName,_that.courseTitle,_that.organizationName,_that.issuedAt,_that.certificateNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificateVerificationDto implements CertificateVerificationDto {
  const _CertificateVerificationDto({required this.valid, @JsonKey(name: 'student_name') required this.studentName, @JsonKey(name: 'course_title') required this.courseTitle, @JsonKey(name: 'organization_name') required this.organizationName, @JsonKey(name: 'issued_at') required this.issuedAt, @JsonKey(name: 'certificate_number') required this.certificateNumber});
  factory _CertificateVerificationDto.fromJson(Map<String, dynamic> json) => _$CertificateVerificationDtoFromJson(json);

@override final  bool valid;
@override@JsonKey(name: 'student_name') final  String studentName;
@override@JsonKey(name: 'course_title') final  String courseTitle;
@override@JsonKey(name: 'organization_name') final  String organizationName;
@override@JsonKey(name: 'issued_at') final  DateTime issuedAt;
@override@JsonKey(name: 'certificate_number') final  String certificateNumber;

/// Create a copy of CertificateVerificationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateVerificationDtoCopyWith<_CertificateVerificationDto> get copyWith => __$CertificateVerificationDtoCopyWithImpl<_CertificateVerificationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateVerificationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificateVerificationDto&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt)&&(identical(other.certificateNumber, certificateNumber) || other.certificateNumber == certificateNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,valid,studentName,courseTitle,organizationName,issuedAt,certificateNumber);

@override
String toString() {
  return 'CertificateVerificationDto(valid: $valid, studentName: $studentName, courseTitle: $courseTitle, organizationName: $organizationName, issuedAt: $issuedAt, certificateNumber: $certificateNumber)';
}


}

/// @nodoc
abstract mixin class _$CertificateVerificationDtoCopyWith<$Res> implements $CertificateVerificationDtoCopyWith<$Res> {
  factory _$CertificateVerificationDtoCopyWith(_CertificateVerificationDto value, $Res Function(_CertificateVerificationDto) _then) = __$CertificateVerificationDtoCopyWithImpl;
@override @useResult
$Res call({
 bool valid,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'course_title') String courseTitle,@JsonKey(name: 'organization_name') String organizationName,@JsonKey(name: 'issued_at') DateTime issuedAt,@JsonKey(name: 'certificate_number') String certificateNumber
});




}
/// @nodoc
class __$CertificateVerificationDtoCopyWithImpl<$Res>
    implements _$CertificateVerificationDtoCopyWith<$Res> {
  __$CertificateVerificationDtoCopyWithImpl(this._self, this._then);

  final _CertificateVerificationDto _self;
  final $Res Function(_CertificateVerificationDto) _then;

/// Create a copy of CertificateVerificationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? valid = null,Object? studentName = null,Object? courseTitle = null,Object? organizationName = null,Object? issuedAt = null,Object? certificateNumber = null,}) {
  return _then(_CertificateVerificationDto(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime,certificateNumber: null == certificateNumber ? _self.certificateNumber : certificateNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NotificationDto {

 String get id; String get type; String get title; String get body; Map<String, dynamic> get data;@JsonKey(name: 'read_at') DateTime? get readAt;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDtoCopyWith<NotificationDto> get copyWith => _$NotificationDtoCopyWithImpl<NotificationDto>(this as NotificationDto, _$identity);

  /// Serializes this NotificationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,body,const DeepCollectionEquality().hash(data),readAt,createdAt);

@override
String toString() {
  return 'NotificationDto(id: $id, type: $type, title: $title, body: $body, data: $data, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationDtoCopyWith<$Res>  {
  factory $NotificationDtoCopyWith(NotificationDto value, $Res Function(NotificationDto) _then) = _$NotificationDtoCopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, String body, Map<String, dynamic> data,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._self, this._then);

  final NotificationDto _self;
  final $Res Function(NotificationDto) _then;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? data = null,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationDto].
extension NotificationDtoPatterns on NotificationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String body,  Map<String, dynamic> data, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.data,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String body,  Map<String, dynamic> data, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationDto():
return $default(_that.id,_that.type,_that.title,_that.body,_that.data,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  String body,  Map<String, dynamic> data, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.data,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDto implements NotificationDto {
  const _NotificationDto({required this.id, required this.type, required this.title, required this.body, final  Map<String, dynamic> data = const <String, dynamic>{}, @JsonKey(name: 'read_at') this.readAt, @JsonKey(name: 'created_at') required this.createdAt}): _data = data;
  factory _NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);

@override final  String id;
@override final  String type;
@override final  String title;
@override final  String body;
 final  Map<String, dynamic> _data;
@override@JsonKey() Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@JsonKey(name: 'read_at') final  DateTime? readAt;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDtoCopyWith<_NotificationDto> get copyWith => __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,body,const DeepCollectionEquality().hash(_data),readAt,createdAt);

@override
String toString() {
  return 'NotificationDto(id: $id, type: $type, title: $title, body: $body, data: $data, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationDtoCopyWith<$Res> implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(_NotificationDto value, $Res Function(_NotificationDto) _then) = __$NotificationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, String body, Map<String, dynamic> data,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(this._self, this._then);

  final _NotificationDto _self;
  final $Res Function(_NotificationDto) _then;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? data = null,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(_NotificationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ProblemDetails {

 String get type; String get title; int get status; String? get detail; String? get instance;@JsonKey(name: 'request_id') String? get requestId; List<FieldErrorDto> get errors;
/// Create a copy of ProblemDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemDetailsCopyWith<ProblemDetails> get copyWith => _$ProblemDetailsCopyWithImpl<ProblemDetails>(this as ProblemDetails, _$identity);

  /// Serializes this ProblemDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemDetails&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.instance, instance) || other.instance == instance)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,status,detail,instance,requestId,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ProblemDetails(type: $type, title: $title, status: $status, detail: $detail, instance: $instance, requestId: $requestId, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ProblemDetailsCopyWith<$Res>  {
  factory $ProblemDetailsCopyWith(ProblemDetails value, $Res Function(ProblemDetails) _then) = _$ProblemDetailsCopyWithImpl;
@useResult
$Res call({
 String type, String title, int status, String? detail, String? instance,@JsonKey(name: 'request_id') String? requestId, List<FieldErrorDto> errors
});




}
/// @nodoc
class _$ProblemDetailsCopyWithImpl<$Res>
    implements $ProblemDetailsCopyWith<$Res> {
  _$ProblemDetailsCopyWithImpl(this._self, this._then);

  final ProblemDetails _self;
  final $Res Function(ProblemDetails) _then;

/// Create a copy of ProblemDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? status = null,Object? detail = freezed,Object? instance = freezed,Object? requestId = freezed,Object? errors = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,instance: freezed == instance ? _self.instance : instance // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<FieldErrorDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProblemDetails].
extension ProblemDetailsPatterns on ProblemDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProblemDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProblemDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProblemDetails value)  $default,){
final _that = this;
switch (_that) {
case _ProblemDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProblemDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ProblemDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String title,  int status,  String? detail,  String? instance, @JsonKey(name: 'request_id')  String? requestId,  List<FieldErrorDto> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProblemDetails() when $default != null:
return $default(_that.type,_that.title,_that.status,_that.detail,_that.instance,_that.requestId,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String title,  int status,  String? detail,  String? instance, @JsonKey(name: 'request_id')  String? requestId,  List<FieldErrorDto> errors)  $default,) {final _that = this;
switch (_that) {
case _ProblemDetails():
return $default(_that.type,_that.title,_that.status,_that.detail,_that.instance,_that.requestId,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String title,  int status,  String? detail,  String? instance, @JsonKey(name: 'request_id')  String? requestId,  List<FieldErrorDto> errors)?  $default,) {final _that = this;
switch (_that) {
case _ProblemDetails() when $default != null:
return $default(_that.type,_that.title,_that.status,_that.detail,_that.instance,_that.requestId,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProblemDetails implements ProblemDetails {
  const _ProblemDetails({required this.type, required this.title, required this.status, this.detail, this.instance, @JsonKey(name: 'request_id') this.requestId, final  List<FieldErrorDto> errors = const <FieldErrorDto>[]}): _errors = errors;
  factory _ProblemDetails.fromJson(Map<String, dynamic> json) => _$ProblemDetailsFromJson(json);

@override final  String type;
@override final  String title;
@override final  int status;
@override final  String? detail;
@override final  String? instance;
@override@JsonKey(name: 'request_id') final  String? requestId;
 final  List<FieldErrorDto> _errors;
@override@JsonKey() List<FieldErrorDto> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ProblemDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemDetailsCopyWith<_ProblemDetails> get copyWith => __$ProblemDetailsCopyWithImpl<_ProblemDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemDetails&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.instance, instance) || other.instance == instance)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,status,detail,instance,requestId,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ProblemDetails(type: $type, title: $title, status: $status, detail: $detail, instance: $instance, requestId: $requestId, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ProblemDetailsCopyWith<$Res> implements $ProblemDetailsCopyWith<$Res> {
  factory _$ProblemDetailsCopyWith(_ProblemDetails value, $Res Function(_ProblemDetails) _then) = __$ProblemDetailsCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, int status, String? detail, String? instance,@JsonKey(name: 'request_id') String? requestId, List<FieldErrorDto> errors
});




}
/// @nodoc
class __$ProblemDetailsCopyWithImpl<$Res>
    implements _$ProblemDetailsCopyWith<$Res> {
  __$ProblemDetailsCopyWithImpl(this._self, this._then);

  final _ProblemDetails _self;
  final $Res Function(_ProblemDetails) _then;

/// Create a copy of ProblemDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? status = null,Object? detail = freezed,Object? instance = freezed,Object? requestId = freezed,Object? errors = null,}) {
  return _then(_ProblemDetails(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,instance: freezed == instance ? _self.instance : instance // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<FieldErrorDto>,
  ));
}


}


/// @nodoc
mixin _$FieldErrorDto {

 String get field; String get message;
/// Create a copy of FieldErrorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldErrorDtoCopyWith<FieldErrorDto> get copyWith => _$FieldErrorDtoCopyWithImpl<FieldErrorDto>(this as FieldErrorDto, _$identity);

  /// Serializes this FieldErrorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldErrorDto&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,message);

@override
String toString() {
  return 'FieldErrorDto(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class $FieldErrorDtoCopyWith<$Res>  {
  factory $FieldErrorDtoCopyWith(FieldErrorDto value, $Res Function(FieldErrorDto) _then) = _$FieldErrorDtoCopyWithImpl;
@useResult
$Res call({
 String field, String message
});




}
/// @nodoc
class _$FieldErrorDtoCopyWithImpl<$Res>
    implements $FieldErrorDtoCopyWith<$Res> {
  _$FieldErrorDtoCopyWithImpl(this._self, this._then);

  final FieldErrorDto _self;
  final $Res Function(FieldErrorDto) _then;

/// Create a copy of FieldErrorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? message = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldErrorDto].
extension FieldErrorDtoPatterns on FieldErrorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldErrorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldErrorDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldErrorDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldErrorDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldErrorDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldErrorDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldErrorDto() when $default != null:
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field,  String message)  $default,) {final _that = this;
switch (_that) {
case _FieldErrorDto():
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field,  String message)?  $default,) {final _that = this;
switch (_that) {
case _FieldErrorDto() when $default != null:
return $default(_that.field,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldErrorDto implements FieldErrorDto {
  const _FieldErrorDto({required this.field, required this.message});
  factory _FieldErrorDto.fromJson(Map<String, dynamic> json) => _$FieldErrorDtoFromJson(json);

@override final  String field;
@override final  String message;

/// Create a copy of FieldErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldErrorDtoCopyWith<_FieldErrorDto> get copyWith => __$FieldErrorDtoCopyWithImpl<_FieldErrorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldErrorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldErrorDto&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,message);

@override
String toString() {
  return 'FieldErrorDto(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FieldErrorDtoCopyWith<$Res> implements $FieldErrorDtoCopyWith<$Res> {
  factory _$FieldErrorDtoCopyWith(_FieldErrorDto value, $Res Function(_FieldErrorDto) _then) = __$FieldErrorDtoCopyWithImpl;
@override @useResult
$Res call({
 String field, String message
});




}
/// @nodoc
class __$FieldErrorDtoCopyWithImpl<$Res>
    implements _$FieldErrorDtoCopyWith<$Res> {
  __$FieldErrorDtoCopyWithImpl(this._self, this._then);

  final _FieldErrorDto _self;
  final $Res Function(_FieldErrorDto) _then;

/// Create a copy of FieldErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? message = null,}) {
  return _then(_FieldErrorDto(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
