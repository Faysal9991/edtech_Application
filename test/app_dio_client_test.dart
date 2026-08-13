import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:edtech_application/core/auth/secure_token_storage.dart';
import 'package:edtech_application/core/network/app_dio_client.dart';
import 'package:edtech_application/core/session/organization_context.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('concurrent 401 responses share one rotating refresh', () async {
    final storage = SecureTokenStorage.inMemory();
    await storage.save(
      const AuthTokenPair(
        accessToken: 'old-access',
        refreshToken: 'old-refresh',
      ),
    );
    var refreshes = 0;
    final refreshStarted = Completer<void>();
    final releaseRefresh = Completer<void>();
    final client = AppDioClient(
      tokenStorage: storage,
      refreshToken: (refreshToken) async {
        refreshes++;
        expect(refreshToken, 'old-refresh');
        if (!refreshStarted.isCompleted) refreshStarted.complete();
        await releaseRefresh.future;
        return const AuthTokenPair(
          accessToken: 'new-access',
          refreshToken: 'new-refresh',
        );
      },
    );
    final adapter = _AuthAdapter();
    client.dio.httpClientAdapter = adapter;

    final first = client.dio.get<Map<String, dynamic>>(
      '/api/v1/student/dashboard',
    );
    final second = client.dio.get<Map<String, dynamic>>(
      '/api/v1/student/results',
    );
    await adapter.bothUnauthorizedRequests.future;
    await refreshStarted.future;
    releaseRefresh.complete();

    final responses = await Future.wait([first, second]);
    expect(responses.every((response) => response.statusCode == 200), isTrue);
    expect(refreshes, 1);
    expect(await storage.refreshToken, 'new-refresh');
    expect(storage.accessToken, 'new-access');
  });

  test('public endpoint 401 never triggers session refresh', () async {
    final storage = SecureTokenStorage.inMemory();
    await storage.save(
      const AuthTokenPair(
        accessToken: 'old-access',
        refreshToken: 'old-refresh',
      ),
    );
    var refreshes = 0;
    final client = AppDioClient(
      tokenStorage: storage,
      refreshToken: (_) async {
        refreshes++;
        return null;
      },
    );
    client.dio.httpClientAdapter = _AlwaysUnauthorizedAdapter();

    await expectLater(
      client.dio.get<Map<String, dynamic>>('/api/v1/courses'),
      throwsA(isA<DioException>()),
    );
    expect(refreshes, 0);
  });

  test('refresh 401 clears session and emits forced logout', () async {
    final storage = SecureTokenStorage.inMemory();
    await storage.save(
      const AuthTokenPair(
        accessToken: 'old-access',
        refreshToken: 'old-refresh',
      ),
    );
    var forcedLogouts = 0;
    final client = AppDioClient(
      tokenStorage: storage,
      refreshToken: (_) async {
        final options = RequestOptions(path: '/api/v1/auth/refresh');
        throw DioException(
          requestOptions: options,
          response: Response<void>(requestOptions: options, statusCode: 401),
        );
      },
      onSessionExpired: () async => forcedLogouts++,
    );
    client.dio.httpClientAdapter = _AlwaysUnauthorizedAdapter();

    await expectLater(
      client.dio.get<Map<String, dynamic>>('/api/v1/student/dashboard'),
      throwsA(isA<DioException>()),
    );
    expect(storage.accessToken, isNull);
    expect(await storage.refreshToken, isNull);
    expect(forcedLogouts, 1);
  });

  test(
    'organization header is scoped and excluded from public/auth calls',
    () async {
      final storage = SecureTokenStorage.inMemory();
      await storage.save(
        const AuthTokenPair(accessToken: 'access', refreshToken: 'refresh'),
      );
      final organization = OrganizationContext()..select('organization-1');
      final client = AppDioClient(
        tokenStorage: storage,
        organizationContext: organization,
      );
      final adapter = _HeaderCaptureAdapter();
      client.dio.httpClientAdapter = adapter;

      await client.dio.get<Map<String, dynamic>>('/api/v1/teacher/dashboard');
      await client.dio.get<Map<String, dynamic>>('/api/v1/auth/me');
      await client.dio.get<Map<String, dynamic>>('/api/v1/courses');
      await client.dio.post<Map<String, dynamic>>(
        '/api/v1/guardian/invitations/accept',
        data: {'token': 'redacted-in-test'},
      );

      expect(
        adapter.requests[0].headers['X-Organization-ID'],
        'organization-1',
      );
      expect(adapter.requests[0].headers['Authorization'], 'Bearer access');
      expect(adapter.requests[1].headers, isNot(contains('X-Organization-ID')));
      expect(adapter.requests[2].headers, isNot(contains('X-Organization-ID')));
      expect(adapter.requests[2].headers, isNot(contains('Authorization')));
      expect(adapter.requests[3].headers, isNot(contains('X-Organization-ID')));
      expect(adapter.requests[3].headers['Authorization'], 'Bearer access');
    },
  );
}

class _HeaderCaptureAdapter implements HttpClientAdapter {
  final List<RequestOptions> requests = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    return ResponseBody.fromString(
      '{"ok":true}',
      200,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

class _AuthAdapter implements HttpClientAdapter {
  final Completer<void> bothUnauthorizedRequests = Completer<void>();
  int _oldTokenRequests = 0;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final token = options.headers['Authorization'];
    if (token == 'Bearer old-access') {
      _oldTokenRequests++;
      if (_oldTokenRequests == 2 && !bothUnauthorizedRequests.isCompleted) {
        bothUnauthorizedRequests.complete();
      }
      await bothUnauthorizedRequests.future;
    }
    return ResponseBody.fromString(
      token == 'Bearer new-access' ? '{"ok":true}' : '{"status":401}',
      token == 'Bearer new-access' ? 200 : 401,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

class _AlwaysUnauthorizedAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async => ResponseBody.fromString(
    jsonEncode({'status': 401}),
    401,
    headers: {
      Headers.contentTypeHeader: ['application/problem+json'],
    },
  );

  @override
  void close({bool force = false}) {}
}
