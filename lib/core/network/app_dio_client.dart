import 'package:dio/dio.dart';
import 'package:edtech_application/core/auth/secure_token_storage.dart';
import 'package:edtech_application/core/network/api_constants.dart';
import 'package:flutter/foundation.dart';

typedef TokenRefreshCallback =
    Future<AuthTokenPair?> Function(String refreshToken);

class AppDioClient {
  AppDioClient({
    required SecureTokenStorage tokenStorage,
    TokenRefreshCallback? refreshToken,
  }) : _tokenStorage = tokenStorage,
       _refreshToken = refreshToken {
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
    '/api/v1/auth/logout',
    '/api/v1/auth/logout-all',
  };

  final SecureTokenStorage _tokenStorage;
  final TokenRefreshCallback? _refreshToken;
  late final Dio _dio;
  Future<AuthTokenPair?>? _refreshOperation;

  Dio get dio => _dio;

  void _attachAccessToken(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final token = _tokenStorage.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
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
      final retryRequest = request.copyWith(
        headers: {
          ...request.headers,
          'Authorization': 'Bearer ${tokens.accessToken}',
        },
        extra: {...request.extra, _retriedKey: true},
      );
      final response = await _dio.fetch<dynamic>(retryRequest);
      handler.resolve(response);
    } catch (_) {
      await _tokenStorage.clear();
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
