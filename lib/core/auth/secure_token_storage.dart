import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthTokenPair {
  const AuthTokenPair({required this.accessToken, required this.refreshToken});

  final String accessToken;
  final String refreshToken;
}

class SecureTokenStorage {
  SecureTokenStorage({FlutterSecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  static const _refreshTokenKey = 'auth_refresh_token';

  final FlutterSecureStorage _secureStorage;
  String? _accessToken;

  // The short-lived access token intentionally remains in memory only.
  String? get accessToken => _accessToken;

  Future<String?> get refreshToken =>
      _secureStorage.read(key: _refreshTokenKey);

  Future<void> save(AuthTokenPair tokens) async {
    _accessToken = tokens.accessToken;
    await _secureStorage.write(
      key: _refreshTokenKey,
      value: tokens.refreshToken,
    );
  }

  void updateAccessToken(String token) {
    _accessToken = token;
  }

  Future<void> clear() async {
    _accessToken = null;
    await _secureStorage.delete(key: _refreshTokenKey);
  }
}
