import 'package:dio/dio.dart';
import 'package:edtech_application/core/auth/secure_token_storage.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_constants.dart';
import 'package:edtech_application/core/session/organization_context.dart';
import 'package:flutter/foundation.dart';

typedef TokenRefreshCallback =
    Future<AuthTokenPair?> Function(String refreshToken);
typedef SessionExpiredCallback = Future<void> Function();

class AppDioClient {
  AppDioClient({
    required SecureTokenStorage tokenStorage,
    OrganizationContext? organizationContext,
    TokenRefreshCallback? refreshToken,
    SessionExpiredCallback? onSessionExpired,
  }) : _tokenStorage = tokenStorage,
       _organizationContext = organizationContext ?? OrganizationContext(),
       _refreshToken = refreshToken,
       _onSessionExpired = onSessionExpired {
    _dio = Dio(
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

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _attachAccessToken,
        onError: _handleUnauthorized,
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(_SafeNetworkLogInterceptor());
    }
  }

  static const _retriedKey = 'auth_request_retried';
  static const _noRefreshPaths = <String>{
    '/api/v1/auth/register',
    '/api/v1/auth/login',
    '/api/v1/auth/forgot-password',
    '/api/v1/auth/reset-password',
    '/api/v1/auth/verify-email',
    '/api/v1/auth/resend-verification',
    '/api/v1/auth/logout',
    '/api/v1/auth/logout-all',
  };
  static const _publicExactPaths = <String>{
    '/health/live',
    '/health/ready',
    '/metrics',
    '/openapi.yaml',
    '/api/v1/auth/register',
    '/api/v1/auth/login',
    '/api/v1/auth/refresh',
    '/api/v1/auth/forgot-password',
    '/api/v1/auth/reset-password',
    '/api/v1/auth/verify-email',
    '/api/v1/auth/resend-verification',
  };
  static const _publicPathPrefixes = <String>{
    '/api/v1/academic/',
    '/api/v1/certificates/verify/',
    '/api/v1/public/',
  };

  final SecureTokenStorage _tokenStorage;
  final OrganizationContext _organizationContext;
  final TokenRefreshCallback? _refreshToken;
  final SessionExpiredCallback? _onSessionExpired;
  late final Dio _dio;
  Future<AuthTokenPair?>? _refreshOperation;

  Dio get dio => _dio;

  void _attachAccessToken(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (_isPublicRequest(options)) {
      handler.next(options);
      return;
    }
    final token = _tokenStorage.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    if (_isOrganizationScoped(options)) {
      final organizationId = _organizationContext.organizationId;
      if (organizationId != null && organizationId.isNotEmpty) {
        options.headers['X-Organization-ID'] = organizationId;
      }
    }
    handler.next(options);
  }

  Future<void> _handleUnauthorized(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    final request = error.requestOptions;
    final shouldRefresh =
        error.response?.statusCode == 401 &&
        request.extra[_retriedKey] != true &&
        request.headers.containsKey('Authorization') &&
        !_noRefreshPaths.contains(request.uri.path) &&
        _refreshToken != null;

    if (!shouldRefresh) {
      handler.next(error);
      return;
    }

    // Another request may already have completed a rotating refresh before
    // this 401 reached the interceptor. Reuse that newer access token instead
    // of spending (and rotating) the new refresh token a second time.
    final currentAccessToken = _tokenStorage.accessToken;
    final failedAuthorization = request.headers['Authorization'];
    if (currentAccessToken != null &&
        currentAccessToken.isNotEmpty &&
        failedAuthorization != 'Bearer $currentAccessToken') {
      try {
        handler.resolve(
          await _retryWithAccessToken(request, currentAccessToken),
        );
      } on DioException catch (retryError) {
        handler.next(retryError);
      }
      return;
    }

    final storedRefreshToken = await _tokenStorage.refreshToken;
    if (storedRefreshToken == null || storedRefreshToken.isEmpty) {
      handler.next(error);
      return;
    }

    try {
      final tokens = await _singleFlightRefresh(storedRefreshToken);
      if (tokens == null) {
        handler.next(error);
        return;
      }

      await _tokenStorage.save(tokens);
      handler.resolve(await _retryWithAccessToken(request, tokens.accessToken));
    } catch (refreshError) {
      if (_isUnauthorizedRefreshFailure(refreshError)) {
        await _tokenStorage.clear();
        await _onSessionExpired?.call();
      }
      handler.next(error);
    }
  }

  Future<AuthTokenPair?> _singleFlightRefresh(String refreshToken) {
    final inFlight = _refreshOperation;
    if (inFlight != null) return inFlight;

    late final Future<AuthTokenPair?> operation;
    operation = _refreshToken!(refreshToken).whenComplete(() {
      if (identical(_refreshOperation, operation)) {
        _refreshOperation = null;
      }
    });
    _refreshOperation = operation;
    return operation;
  }

  Future<Response<dynamic>> _retryWithAccessToken(
    RequestOptions request,
    String accessToken,
  ) => _dio.fetch<dynamic>(
    request.copyWith(
      headers: {...request.headers, 'Authorization': 'Bearer $accessToken'},
      extra: {...request.extra, _retriedKey: true},
    ),
  );

  static bool _isUnauthorizedRefreshFailure(Object error) =>
      (error is DioException && error.response?.statusCode == 401) ||
      (error is AppException && error.statusCode == 401);

  static bool _isPublicRequest(RequestOptions request) {
    final path = request.uri.path;
    if (_publicExactPaths.contains(path)) return true;
    if (_publicPathPrefixes.any(path.startsWith)) return true;
    // Course reads are public; POST /courses/{id}/enroll is authenticated.
    return request.method.toUpperCase() == 'GET' &&
        (path == '/api/v1/courses' || path.startsWith('/api/v1/courses/'));
  }

  static bool _isOrganizationScoped(RequestOptions request) {
    final path = request.uri.path;
    if (_isPublicRequest(request) || path.startsWith('/api/v1/auth/')) {
      return false;
    }
    if (path == '/api/v1/guardian/invitations/accept') return false;
    return path.startsWith('/api/v1/');
  }
}

class _SafeNetworkLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('[API] ${options.method} ${options.uri.path}');
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    debugPrint(
      '[API] ${response.statusCode} ${response.requestOptions.uri.path}',
    );
    handler.next(response);
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    debugPrint(
      '[API] ${error.response?.statusCode ?? 'ERR'} '
      '${error.requestOptions.uri.path}',
    );
    handler.next(error);
  }
}
