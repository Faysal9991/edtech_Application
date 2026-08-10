// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
          _$LoginRequestImpl value, $Res Function(_$LoginRequestImpl) then) =
      __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
      _$LoginRequestImpl _value, $Res Function(_$LoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl({required this.email, required this.password});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {required final String email,
      required final String password}) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return _RegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this RegisterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterRequestCopyWith<RegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestCopyWith<$Res> {
  factory $RegisterRequestCopyWith(
          RegisterRequest value, $Res Function(RegisterRequest) then) =
      _$RegisterRequestCopyWithImpl<$Res, RegisterRequest>;
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class _$RegisterRequestCopyWithImpl<$Res, $Val extends RegisterRequest>
    implements $RegisterRequestCopyWith<$Res> {
  _$RegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterRequestImplCopyWith<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  factory _$$RegisterRequestImplCopyWith(_$RegisterRequestImpl value,
          $Res Function(_$RegisterRequestImpl) then) =
      __$$RegisterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class __$$RegisterRequestImplCopyWithImpl<$Res>
    extends _$RegisterRequestCopyWithImpl<$Res, _$RegisterRequestImpl>
    implements _$$RegisterRequestImplCopyWith<$Res> {
  __$$RegisterRequestImplCopyWithImpl(
      _$RegisterRequestImpl _value, $Res Function(_$RegisterRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_$RegisterRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRequestImpl implements _RegisterRequest {
  const _$RegisterRequestImpl(
      {required this.email,
      required this.password,
      @JsonKey(name: 'display_name') required this.displayName});

  factory _$RegisterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

  @override
  String toString() {
    return 'RegisterRequest(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, displayName);

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestImplCopyWith<_$RegisterRequestImpl> get copyWith =>
      __$$RegisterRequestImplCopyWithImpl<_$RegisterRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRequestImplToJson(
      this,
    );
  }
}

abstract class _RegisterRequest implements RegisterRequest {
  const factory _RegisterRequest(
          {required final String email,
          required final String password,
          @JsonKey(name: 'display_name') required final String displayName}) =
      _$RegisterRequestImpl;

  factory _RegisterRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestImplCopyWith<_$RegisterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequest {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res, RefreshTokenRequest>;
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res, $Val extends RefreshTokenRequest>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenRequestImplCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$$RefreshTokenRequestImplCopyWith(_$RefreshTokenRequestImpl value,
          $Res Function(_$RefreshTokenRequestImpl) then) =
      __$$RefreshTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$RefreshTokenRequestImplCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res, _$RefreshTokenRequestImpl>
    implements _$$RefreshTokenRequestImplCopyWith<$Res> {
  __$$RefreshTokenRequestImplCopyWithImpl(_$RefreshTokenRequestImpl _value,
      $Res Function(_$RefreshTokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenRequestImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenRequestImpl implements _RefreshTokenRequest {
  const _$RefreshTokenRequestImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$RefreshTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenRequestImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      __$$RefreshTokenRequestImplCopyWithImpl<_$RefreshTokenRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest(
      {@JsonKey(name: 'refresh_token')
      required final String refreshToken}) = _$RefreshTokenRequestImpl;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenRequestImpl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangePasswordRequest _$ChangePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequest {
  @JsonKey(name: 'current_password')
  String get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value,
          $Res Function(ChangePasswordRequest) then) =
      _$ChangePasswordRequestCopyWithImpl<$Res, ChangePasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res,
        $Val extends ChangePasswordRequest>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestImplCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$$ChangePasswordRequestImplCopyWith(
          _$ChangePasswordRequestImpl value,
          $Res Function(_$ChangePasswordRequestImpl) then) =
      __$$ChangePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$ChangePasswordRequestImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestCopyWithImpl<$Res,
        _$ChangePasswordRequestImpl>
    implements _$$ChangePasswordRequestImplCopyWith<$Res> {
  __$$ChangePasswordRequestImplCopyWithImpl(_$ChangePasswordRequestImpl _value,
      $Res Function(_$ChangePasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordRequestImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestImpl implements _ChangePasswordRequest {
  const _$ChangePasswordRequestImpl(
      {@JsonKey(name: 'current_password') required this.currentPassword,
      @JsonKey(name: 'new_password') required this.newPassword});

  factory _$ChangePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'current_password')
  final String currentPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequest(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
      get copyWith => __$$ChangePasswordRequestImplCopyWithImpl<
          _$ChangePasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest(
      {@JsonKey(name: 'current_password') required final String currentPassword,
      @JsonKey(name: 'new_password')
      required final String newPassword}) = _$ChangePasswordRequestImpl;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'current_password')
  String get currentPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordRequest {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this ForgotPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordRequestCopyWith<ForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordRequestCopyWith<$Res> {
  factory $ForgotPasswordRequestCopyWith(ForgotPasswordRequest value,
          $Res Function(ForgotPasswordRequest) then) =
      _$ForgotPasswordRequestCopyWithImpl<$Res, ForgotPasswordRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordRequestCopyWithImpl<$Res,
        $Val extends ForgotPasswordRequest>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  _$ForgotPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordRequestImplCopyWith<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  factory _$$ForgotPasswordRequestImplCopyWith(
          _$ForgotPasswordRequestImpl value,
          $Res Function(_$ForgotPasswordRequestImpl) then) =
      __$$ForgotPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordRequestImplCopyWithImpl<$Res>
    extends _$ForgotPasswordRequestCopyWithImpl<$Res,
        _$ForgotPasswordRequestImpl>
    implements _$$ForgotPasswordRequestImplCopyWith<$Res> {
  __$$ForgotPasswordRequestImplCopyWithImpl(_$ForgotPasswordRequestImpl _value,
      $Res Function(_$ForgotPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordRequestImpl implements _ForgotPasswordRequest {
  const _$ForgotPasswordRequestImpl({required this.email});

  factory _$ForgotPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordRequestImplCopyWith<_$ForgotPasswordRequestImpl>
      get copyWith => __$$ForgotPasswordRequestImplCopyWithImpl<
          _$ForgotPasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordRequest implements ForgotPasswordRequest {
  const factory _ForgotPasswordRequest({required final String email}) =
      _$ForgotPasswordRequestImpl;

  factory _ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordRequestImpl.fromJson;

  @override
  String get email;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordRequestImplCopyWith<_$ForgotPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) {
  return _ResetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordRequest {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordRequestCopyWith<ResetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequestCopyWith<$Res> {
  factory $ResetPasswordRequestCopyWith(ResetPasswordRequest value,
          $Res Function(ResetPasswordRequest) then) =
      _$ResetPasswordRequestCopyWithImpl<$Res, ResetPasswordRequest>;
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$ResetPasswordRequestCopyWithImpl<$Res,
        $Val extends ResetPasswordRequest>
    implements $ResetPasswordRequestCopyWith<$Res> {
  _$ResetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordRequestImplCopyWith<$Res>
    implements $ResetPasswordRequestCopyWith<$Res> {
  factory _$$ResetPasswordRequestImplCopyWith(_$ResetPasswordRequestImpl value,
          $Res Function(_$ResetPasswordRequestImpl) then) =
      __$$ResetPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$ResetPasswordRequestImplCopyWithImpl<$Res>
    extends _$ResetPasswordRequestCopyWithImpl<$Res, _$ResetPasswordRequestImpl>
    implements _$$ResetPasswordRequestImplCopyWith<$Res> {
  __$$ResetPasswordRequestImplCopyWithImpl(_$ResetPasswordRequestImpl _value,
      $Res Function(_$ResetPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestImpl implements _ResetPasswordRequest {
  const _$ResetPasswordRequestImpl(
      {required this.token,
      @JsonKey(name: 'new_password') required this.newPassword});

  factory _$ResetPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordRequestImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'ResetPasswordRequest(token: $token, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, newPassword);

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequestImplCopyWith<_$ResetPasswordRequestImpl>
      get copyWith =>
          __$$ResetPasswordRequestImplCopyWithImpl<_$ResetPasswordRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordRequest implements ResetPasswordRequest {
  const factory _ResetPasswordRequest(
          {required final String token,
          @JsonKey(name: 'new_password') required final String newPassword}) =
      _$ResetPasswordRequestImpl;

  factory _ResetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordRequestImplCopyWith<_$ResetPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenRequest _$TokenRequestFromJson(Map<String, dynamic> json) {
  return _TokenRequest.fromJson(json);
}

/// @nodoc
mixin _$TokenRequest {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this TokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenRequestCopyWith<TokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRequestCopyWith<$Res> {
  factory $TokenRequestCopyWith(
          TokenRequest value, $Res Function(TokenRequest) then) =
      _$TokenRequestCopyWithImpl<$Res, TokenRequest>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TokenRequestCopyWithImpl<$Res, $Val extends TokenRequest>
    implements $TokenRequestCopyWith<$Res> {
  _$TokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenRequestImplCopyWith<$Res>
    implements $TokenRequestCopyWith<$Res> {
  factory _$$TokenRequestImplCopyWith(
          _$TokenRequestImpl value, $Res Function(_$TokenRequestImpl) then) =
      __$$TokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TokenRequestImplCopyWithImpl<$Res>
    extends _$TokenRequestCopyWithImpl<$Res, _$TokenRequestImpl>
    implements _$$TokenRequestImplCopyWith<$Res> {
  __$$TokenRequestImplCopyWithImpl(
      _$TokenRequestImpl _value, $Res Function(_$TokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenRequestImpl implements _TokenRequest {
  const _$TokenRequestImpl({required this.token});

  factory _$TokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenRequestImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TokenRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of TokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRequestImplCopyWith<_$TokenRequestImpl> get copyWith =>
      __$$TokenRequestImplCopyWithImpl<_$TokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRequestImplToJson(
      this,
    );
  }
}

abstract class _TokenRequest implements TokenRequest {
  const factory _TokenRequest({required final String token}) =
      _$TokenRequestImpl;

  factory _TokenRequest.fromJson(Map<String, dynamic> json) =
      _$TokenRequestImpl.fromJson;

  @override
  String get token;

  /// Create a copy of TokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenRequestImplCopyWith<_$TokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenPairDto _$TokenPairDtoFromJson(Map<String, dynamic> json) {
  return _TokenPairDto.fromJson(json);
}

/// @nodoc
mixin _$TokenPairDto {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this TokenPairDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenPairDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenPairDtoCopyWith<TokenPairDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPairDtoCopyWith<$Res> {
  factory $TokenPairDtoCopyWith(
          TokenPairDto value, $Res Function(TokenPairDto) then) =
      _$TokenPairDtoCopyWithImpl<$Res, TokenPairDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class _$TokenPairDtoCopyWithImpl<$Res, $Val extends TokenPairDto>
    implements $TokenPairDtoCopyWith<$Res> {
  _$TokenPairDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenPairDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenPairDtoImplCopyWith<$Res>
    implements $TokenPairDtoCopyWith<$Res> {
  factory _$$TokenPairDtoImplCopyWith(
          _$TokenPairDtoImpl value, $Res Function(_$TokenPairDtoImpl) then) =
      __$$TokenPairDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_at') DateTime expiresAt});
}

/// @nodoc
class __$$TokenPairDtoImplCopyWithImpl<$Res>
    extends _$TokenPairDtoCopyWithImpl<$Res, _$TokenPairDtoImpl>
    implements _$$TokenPairDtoImplCopyWith<$Res> {
  __$$TokenPairDtoImplCopyWithImpl(
      _$TokenPairDtoImpl _value, $Res Function(_$TokenPairDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenPairDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresAt = null,
  }) {
    return _then(_$TokenPairDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
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
class _$TokenPairDtoImpl implements _TokenPairDto {
  const _$TokenPairDtoImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'expires_at') required this.expiresAt});

  factory _$TokenPairDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenPairDtoImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  @override
  String toString() {
    return 'TokenPairDto(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenPairDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, tokenType, expiresAt);

  /// Create a copy of TokenPairDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenPairDtoImplCopyWith<_$TokenPairDtoImpl> get copyWith =>
      __$$TokenPairDtoImplCopyWithImpl<_$TokenPairDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenPairDtoImplToJson(
      this,
    );
  }
}

abstract class _TokenPairDto implements TokenPairDto {
  const factory _TokenPairDto(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'token_type') required final String tokenType,
          @JsonKey(name: 'expires_at') required final DateTime expiresAt}) =
      _$TokenPairDtoImpl;

  factory _TokenPairDto.fromJson(Map<String, dynamic> json) =
      _$TokenPairDtoImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt;

  /// Create a copy of TokenPairDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenPairDtoImplCopyWith<_$TokenPairDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthUserDto _$AuthUserDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthUserDto {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;

  /// Serializes this AuthUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserDtoCopyWith<AuthUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserDtoCopyWith<$Res> {
  factory $AuthUserDtoCopyWith(
          AuthUserDto value, $Res Function(AuthUserDto) then) =
      _$AuthUserDtoCopyWithImpl<$Res, AuthUserDto>;
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'display_name') String displayName,
      String status,
      List<String> roles,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt});
}

/// @nodoc
class _$AuthUserDtoCopyWithImpl<$Res, $Val extends AuthUserDto>
    implements $AuthUserDtoCopyWith<$Res> {
  _$AuthUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = null,
    Object? status = null,
    Object? roles = null,
    Object? emailVerifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserDtoImplCopyWith<$Res>
    implements $AuthUserDtoCopyWith<$Res> {
  factory _$$AuthUserDtoImplCopyWith(
          _$AuthUserDtoImpl value, $Res Function(_$AuthUserDtoImpl) then) =
      __$$AuthUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'display_name') String displayName,
      String status,
      List<String> roles,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt});
}

/// @nodoc
class __$$AuthUserDtoImplCopyWithImpl<$Res>
    extends _$AuthUserDtoCopyWithImpl<$Res, _$AuthUserDtoImpl>
    implements _$$AuthUserDtoImplCopyWith<$Res> {
  __$$AuthUserDtoImplCopyWithImpl(
      _$AuthUserDtoImpl _value, $Res Function(_$AuthUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = null,
    Object? status = null,
    Object? roles = null,
    Object? emailVerifiedAt = freezed,
  }) {
    return _then(_$AuthUserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserDtoImpl extends _AuthUserDto {
  const _$AuthUserDtoImpl(
      {required this.id,
      required this.email,
      @JsonKey(name: 'display_name') required this.displayName,
      required this.status,
      final List<String> roles = const <String>[],
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt})
      : _roles = roles,
        super._();

  factory _$AuthUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  final String status;
  final List<String> _roles;
  @override
  @JsonKey()
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;

  @override
  String toString() {
    return 'AuthUserDto(id: $id, email: $email, displayName: $displayName, status: $status, roles: $roles, emailVerifiedAt: $emailVerifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, displayName, status,
      const DeepCollectionEquality().hash(_roles), emailVerifiedAt);

  /// Create a copy of AuthUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserDtoImplCopyWith<_$AuthUserDtoImpl> get copyWith =>
      __$$AuthUserDtoImplCopyWithImpl<_$AuthUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthUserDto extends AuthUserDto {
  const factory _AuthUserDto(
      {required final String id,
      required final String email,
      @JsonKey(name: 'display_name') required final String displayName,
      required final String status,
      final List<String> roles,
      @JsonKey(name: 'email_verified_at')
      final DateTime? emailVerifiedAt}) = _$AuthUserDtoImpl;
  const _AuthUserDto._() : super._();

  factory _AuthUserDto.fromJson(Map<String, dynamic> json) =
      _$AuthUserDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  String get status;
  @override
  List<String> get roles;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;

  /// Create a copy of AuthUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserDtoImplCopyWith<_$AuthUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistrationResponseDto _$RegistrationResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _RegistrationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponseDto {
  AuthUserDto get user => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_token')
  String? get verificationToken => throw _privateConstructorUsedError;

  /// Serializes this RegistrationResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationResponseDtoCopyWith<RegistrationResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseDtoCopyWith<$Res> {
  factory $RegistrationResponseDtoCopyWith(RegistrationResponseDto value,
          $Res Function(RegistrationResponseDto) then) =
      _$RegistrationResponseDtoCopyWithImpl<$Res, RegistrationResponseDto>;
  @useResult
  $Res call(
      {AuthUserDto user,
      String message,
      @JsonKey(name: 'verification_token') String? verificationToken});

  $AuthUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$RegistrationResponseDtoCopyWithImpl<$Res,
        $Val extends RegistrationResponseDto>
    implements $RegistrationResponseDtoCopyWith<$Res> {
  _$RegistrationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
    Object? verificationToken = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: freezed == verificationToken
          ? _value.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserDtoCopyWith<$Res> get user {
    return $AuthUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationResponseDtoImplCopyWith<$Res>
    implements $RegistrationResponseDtoCopyWith<$Res> {
  factory _$$RegistrationResponseDtoImplCopyWith(
          _$RegistrationResponseDtoImpl value,
          $Res Function(_$RegistrationResponseDtoImpl) then) =
      __$$RegistrationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthUserDto user,
      String message,
      @JsonKey(name: 'verification_token') String? verificationToken});

  @override
  $AuthUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegistrationResponseDtoImplCopyWithImpl<$Res>
    extends _$RegistrationResponseDtoCopyWithImpl<$Res,
        _$RegistrationResponseDtoImpl>
    implements _$$RegistrationResponseDtoImplCopyWith<$Res> {
  __$$RegistrationResponseDtoImplCopyWithImpl(
      _$RegistrationResponseDtoImpl _value,
      $Res Function(_$RegistrationResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
    Object? verificationToken = freezed,
  }) {
    return _then(_$RegistrationResponseDtoImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      verificationToken: freezed == verificationToken
          ? _value.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationResponseDtoImpl implements _RegistrationResponseDto {
  const _$RegistrationResponseDtoImpl(
      {required this.user,
      required this.message,
      @JsonKey(name: 'verification_token') this.verificationToken});

  factory _$RegistrationResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationResponseDtoImplFromJson(json);

  @override
  final AuthUserDto user;
  @override
  final String message;
  @override
  @JsonKey(name: 'verification_token')
  final String? verificationToken;

  @override
  String toString() {
    return 'RegistrationResponseDto(user: $user, message: $message, verificationToken: $verificationToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationResponseDtoImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, message, verificationToken);

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationResponseDtoImplCopyWith<_$RegistrationResponseDtoImpl>
      get copyWith => __$$RegistrationResponseDtoImplCopyWithImpl<
          _$RegistrationResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _RegistrationResponseDto implements RegistrationResponseDto {
  const factory _RegistrationResponseDto(
      {required final AuthUserDto user,
      required final String message,
      @JsonKey(name: 'verification_token')
      final String? verificationToken}) = _$RegistrationResponseDtoImpl;

  factory _RegistrationResponseDto.fromJson(Map<String, dynamic> json) =
      _$RegistrationResponseDtoImpl.fromJson;

  @override
  AuthUserDto get user;
  @override
  String get message;
  @override
  @JsonKey(name: 'verification_token')
  String? get verificationToken;

  /// Create a copy of RegistrationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationResponseDtoImplCopyWith<_$RegistrationResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
