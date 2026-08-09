import 'package:dio/dio.dart';
import 'package:edtech_application/core/auth/secure_token_storage.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_constants.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/app_dio_client.dart';
import 'package:edtech_application/features/authentication/data/models/auth_dto.dart';
import 'package:edtech_application/features/authentication/data/repositories/remote_auth_repository.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';

/// Owns the live API graph. The refresh client is intentionally separate so a
/// failed access token can never recursively trigger another refresh request.
class AppDependencies {
  AppDependencies._({
    required this.authRepository,
    required this.studentRepository,
  });

  final RemoteAuthRepository authRepository;
  final StudentLmsRepository studentRepository;

  factory AppDependencies.live() {
    final tokenStorage = SecureTokenStorage();
    final refreshDio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        headers: const {
          'Accept': 'application/json, application/problem+json',
          'Content-Type': 'application/json',
        },
      ),
    );

    Future<AuthTokenPair> refreshTokens(String refreshToken) async {
      try {
        final response = await refreshDio.post<Map<String, dynamic>>(
          '/api/v1/auth/refresh',
          data: RefreshTokenRequest(refreshToken: refreshToken).toJson(),
        );
        final data = response.data;
        if (data == null) {
          throw const AppException('Token refresh response খালি।');
        }
        final tokens = TokenPairDto.fromJson(data);
        return AuthTokenPair(
          accessToken: tokens.accessToken,
          refreshToken: tokens.refreshToken,
        );
      } on DioException catch (error) {
        throw AppException.fromDioException(error);
      } on FormatException {
        throw const AppException('Token refresh response বোঝা যায়নি।');
      }
    }

    final client = AppDioClient(
      tokenStorage: tokenStorage,
      refreshToken: refreshTokens,
    );
    final api = ApiService(client.dio);

    return AppDependencies._(
      authRepository: RemoteAuthRepository(
        api: api,
        tokenStorage: tokenStorage,
        refreshTokens: refreshTokens,
      ),
      studentRepository: StudentLmsRepository(
        api: api,
        uploadDio: Dio(
          BaseOptions(
            connectTimeout: ApiConstants.connectTimeout,
            receiveTimeout: ApiConstants.receiveTimeout,
          ),
        ),
      ),
    );
  }
}
