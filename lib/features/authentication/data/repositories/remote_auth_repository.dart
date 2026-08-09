import 'package:dio/dio.dart';
import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/auth/secure_token_storage.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/authentication/data/models/auth_dto.dart';
import 'package:edtech_application/shared/models/app_user.dart';

typedef SessionTokenRefresher = Future<AuthTokenPair> Function(String token);

class RemoteAuthRepository implements AuthRepository {
  const RemoteAuthRepository({
    required ApiService api,
    required SecureTokenStorage tokenStorage,
    required SessionTokenRefresher refreshTokens,
  }) : _api = api,
       _tokenStorage = tokenStorage,
       _refreshTokens = refreshTokens;

  final ApiService _api;
  final SecureTokenStorage _tokenStorage;
  final SessionTokenRefresher _refreshTokens;

  @override
  Future<AppUser?> restoreSession() async {
    final refreshToken = await _tokenStorage.refreshToken;
    if (refreshToken == null || refreshToken.isEmpty) return null;
    try {
      final tokens = await _refreshTokens(refreshToken);
      await _tokenStorage.save(tokens);
      return AuthUserDto.fromJson(
        (await _api.getCurrentProfile()).value,
      ).toDomain();
    } on AppException catch (error) {
      await _tokenStorage.clear();
      if (error.statusCode == 401) return null;
      rethrow;
    } on DioException catch (error) {
      await _tokenStorage.clear();
      if (error.response?.statusCode == 401) return null;
      throw AppException.fromDioException(error);
    }
  }

  @override
  Future<AppUser> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _api.login(
        LoginRequest(email: email, password: password),
      );
      await _tokenStorage.save(
        AuthTokenPair(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
        ),
      );
      return (await _api.me()).toDomain();
    } on DioException catch (error) {
      await _tokenStorage.clear();
      throw AppException.fromDioException(error);
    } on FormatException {
      await _tokenStorage.clear();
      throw const AppException('Login response বোঝা যায়নি।');
    }
  }

  @override
  Future<RegistrationResult> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _api.register(
        RegisterRequest(email: email, password: password, displayName: name),
      );
      return RegistrationResult(
        user: response.user.toDomain(),
        message: response.message,
        verificationToken: response.verificationToken,
      );
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    }
  }

  @override
  Future<void> signOut() async {
    final refreshToken = await _tokenStorage.refreshToken;
    try {
      if (refreshToken != null && refreshToken.isNotEmpty) {
        await _api.logout(RefreshTokenRequest(refreshToken: refreshToken));
      }
    } on DioException catch (error) {
      if (error.response?.statusCode != 401) {
        throw AppException.fromDioException(error);
      }
    } finally {
      await _tokenStorage.clear();
    }
  }

  @override
  Future<void> forgotPassword(String email) =>
      _guard(() => _api.forgotPassword(ForgotPasswordRequest(email: email)));

  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) => _guard(
    () => _api.resetPassword(
      ResetPasswordRequest(token: token, newPassword: newPassword),
    ),
  );

  @override
  Future<void> verifyEmail(String token) =>
      _guard(() => _api.verifyEmail(TokenRequest(token: token)));

  @override
  Future<void> resendVerification(String email) => _guard(() async {
    await _api.resendVerification(ForgotPasswordRequest(email: email));
  });

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    await _guard(
      () => _api.changePassword(
        ChangePasswordRequest(
          currentPassword: currentPassword,
          newPassword: newPassword,
        ),
      ),
    );
    await _tokenStorage.clear();
  }

  @override
  Future<AppUser> updateProfile({
    required String displayName,
    String? firstName,
    String? lastName,
    String? phone,
    String? timezone,
    String? locale,
    String? biography,
  }) async {
    try {
      await _api.updateProfile(
        ProfileWriteRequest(
          displayName: displayName,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          timezone: timezone,
          locale: locale,
          biography: biography,
        ),
      );
      return AuthUserDto.fromJson(
        (await _api.getCurrentProfile()).value,
      ).toDomain();
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    }
  }

  Future<void> _guard(Future<void> Function() operation) async {
    try {
      await operation();
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    }
  }
}
