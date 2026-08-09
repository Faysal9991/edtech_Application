import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  ThemeController(this._storage) : _isDark = _storage.isDarkMode;

  final LocalStorage _storage;
  bool _isDark;

  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;
  bool get isDark => _isDark;

  Future<void> toggleTheme() async {
    _isDark = !_isDark;
    notifyListeners();
    await _storage.saveThemeMode(isDark: _isDark);
  }
}
