import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage(this._preferences);

  static const _themeModeKey = 'is_dark_mode';
  static const _rememberEmailKey = 'remembered_email';
  static const _languageCodeKey = 'language_code';
  static const _examAttemptPrefix = 'exam_attempt_v1_';
  static const _examDraftPrefix = 'exam_draft_v1_';

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

  String? examAttemptId(String examId) =>
      _preferences.getString('$_examAttemptPrefix$examId');

  Future<void> saveExamAttemptId(String examId, String attemptId) =>
      _preferences.setString('$_examAttemptPrefix$examId', attemptId);

  Map<String, dynamic> examDraft(String examId) {
    final raw = _preferences.getString('$_examDraftPrefix$examId');
    if (raw == null) return {};
    final decoded = jsonDecode(raw);
    return decoded is Map ? Map<String, dynamic>.from(decoded) : {};
  }

  Future<void> saveExamDraft(String examId, Map<String, dynamic> draft) =>
      _preferences.setString('$_examDraftPrefix$examId', jsonEncode(draft));

  Future<void> clearExamAttempt(String examId) async {
    await _preferences.remove('$_examAttemptPrefix$examId');
    await _preferences.remove('$_examDraftPrefix$examId');
  }

  Future<void> clearSession() async {
    final sessionKeys = _preferences
        .getKeys()
        .where(
          (key) =>
              key.startsWith(_examAttemptPrefix) ||
              key.startsWith(_examDraftPrefix) ||
              key.startsWith('offline_'),
        )
        .toList();
    for (final key in sessionKeys) {
      await _preferences.remove(key);
    }
  }
}
