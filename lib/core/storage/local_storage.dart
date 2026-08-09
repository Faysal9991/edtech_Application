import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage(this._preferences);

  static const _themeModeKey = 'is_dark_mode';
  static const _rememberEmailKey = 'remembered_email';
  static const _languageCodeKey = 'language_code';

  final SharedPreferences _preferences;

  bool get isDarkMode => _preferences.getBool(_themeModeKey) ?? false;
  String? get rememberedEmail => _preferences.getString(_rememberEmailKey);
  String get languageCode => _preferences.getString(_languageCodeKey) ?? 'bn';

  Future<void> saveThemeMode({required bool isDark}) async {
    await _preferences.setBool(_themeModeKey, isDark);
  }

  Future<void> saveRememberedEmail(String? email) async {
    if (email == null || email.isEmpty) {
      await _preferences.remove(_rememberEmailKey);
      return;
    }
    await _preferences.setString(_rememberEmailKey, email);
  }

  Future<void> saveLanguageCode(String languageCode) async {
    await _preferences.setString(_languageCodeKey, languageCode);
  }

  Future<void> clearSession() => Future<void>.value();
}
