// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'display_name': instance.displayName,
    };

_$RefreshTokenRequestImpl _$$RefreshTokenRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenRequestImpl(
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenRequestImplToJson(
        _$RefreshTokenRequestImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
    };

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordRequestImpl(
      currentPassword: json['current_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(
        _$ChangePasswordRequestImpl instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };

_$ForgotPasswordRequestImpl _$$ForgotPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordRequestImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$ForgotPasswordRequestImplToJson(
        _$ForgotPasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$ResetPasswordRequestImpl _$$ResetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestImpl(
      token: json['token'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$ResetPasswordRequestImplToJson(
        _$ResetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'new_password': instance.newPassword,
    };

_$TokenRequestImpl _$$TokenRequestImplFromJson(Map<String, dynamic> json) =>
    _$TokenRequestImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$TokenRequestImplToJson(_$TokenRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$TokenPairDtoImpl _$$TokenPairDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenPairDtoImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$TokenPairDtoImplToJson(_$TokenPairDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'expires_at': instance.expiresAt.toIso8601String(),
    };

_$AuthUserDtoImpl _$$AuthUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserDtoImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['display_name'] as String,
      status: json['status'] as String,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
    );

Map<String, dynamic> _$$AuthUserDtoImplToJson(_$AuthUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'display_name': instance.displayName,
      'status': instance.status,
      'roles': instance.roles,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
    };

_$RegistrationResponseDtoImpl _$$RegistrationResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationResponseDtoImpl(
      user: AuthUserDto.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String,
      verificationToken: json['verification_token'] as String?,
    );

Map<String, dynamic> _$$RegistrationResponseDtoImplToJson(
        _$RegistrationResponseDtoImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
      'verification_token': instance.verificationToken,
    };
