import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthTokenPair {
  const AuthTokenPair({required this.accessToken, required this.refreshToken});

  final String accessToken;
  final String refreshToken;
}

class SecureTokenStorage {
  SecureTokenStorage({FlutterSecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? const FlutterSecureStorage(),
      _memoryOnly = false;

  SecureTokenStorage.inMemory({String? refreshToken})
    : _secureStorage = null,
      _memoryOnly = true,
      _memoryRefreshToken = refreshToken;

  static const _refreshTokenKey = 'auth_refresh_token';

  final FlutterSecureStorage? _secureStorage;
  final bool _memoryOnly;
  String? _accessToken;
  String? _memoryRefreshToken;

  // The short-lived access token intentionally remains in memory only.
  String? get accessToken => _accessToken;

  Future<String?> get refreshToken => _memoryOnly
      ? Future.value(_memoryRefreshToken)
      : _secureStorage!.read(key: _refreshTokenKey);

  Future<void> save(AuthTokenPair tokens) async {
    // Persist the rotating refresh token first. If secure storage fails, the
    // currently usable in-memory access token is left untouched rather than
    // creating a half-replaced token pair.
    if (_memoryOnly) {
      _memoryRefreshToken = tokens.refreshToken;
    } else {
      await _secureStorage!.write(
        key: _refreshTokenKey,
        value: tokens.refreshToken,
      );
    }
    _accessToken = tokens.accessToken;
  }

  void updateAccessToken(String token) {
    _accessToken = token;
  }

  Future<void> clear() async {
    _accessToken = null;
    if (_memoryOnly) {
      _memoryRefreshToken = null;
    } else {
      await _secureStorage!.delete(key: _refreshTokenKey);
    }
  }
}
