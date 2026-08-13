import 'package:edtech_application/shared/models/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String email,
    required String password,
    @JsonKey(name: 'display_name') required String displayName,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @JsonKey(name: 'current_password') required String currentPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ForgotPasswordRequest with _$ForgotPasswordRequest {
  const factory ForgotPasswordRequest({required String email}) =
      _ForgotPasswordRequest;

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    required String token,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class TokenRequest with _$TokenRequest {
  const factory TokenRequest({required String token}) = _TokenRequest;

  factory TokenRequest.fromJson(Map<String, dynamic> json) =>
      _$TokenRequestFromJson(json);

  @override
  Map<String, dynamic> toJson();
}

@freezed
abstract class TokenPairDto with _$TokenPairDto {
  const factory TokenPairDto({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
  }) = _TokenPairDto;

  factory TokenPairDto.fromJson(Map<String, dynamic> json) =>
      _$TokenPairDtoFromJson(json);
}

@freezed
abstract class AuthUserDto with _$AuthUserDto {
  const AuthUserDto._();

  const factory AuthUserDto({
    required String id,
    required String email,
    @JsonKey(name: 'display_name') required String displayName,
    required String status,
    @Default(<String>[]) List<String> roles,
    @Default(<OrganizationMembership>[])
    List<OrganizationMembership> memberships,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
  }) = _AuthUserDto;

  factory AuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDtoFromJson(json);

  AppUser toDomain() => AppUser(
    id: id,
    name: displayName,
    email: email,
    status: status,
    roles: roles,
    memberships: memberships,
    role: roles.isEmpty ? 'unknown' : roles.first,
    emailVerifiedAt: emailVerifiedAt,
  );
}

@freezed
abstract class RegistrationResponseDto with _$RegistrationResponseDto {
  const factory RegistrationResponseDto({
    required AuthUserDto user,
    required String message,
    @JsonKey(name: 'verification_token') String? verificationToken,
  }) = _RegistrationResponseDto;

  factory RegistrationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseDtoFromJson(json);
}
