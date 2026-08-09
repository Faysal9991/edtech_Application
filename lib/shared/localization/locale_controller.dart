import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:flutter/material.dart';

class LocaleController extends ChangeNotifier {
  LocaleController(this._storage) : _locale = Locale(_storage.languageCode);

  final LocalStorage _storage;
  Locale _locale;

  Locale get locale => _locale;
  bool get isBangla => _locale.languageCode == 'bn';

  Future<void> setLanguage(String languageCode) async {
    if (_locale.languageCode == languageCode) return;
    _locale = Locale(languageCode);
    notifyListeners();
    await _storage.saveLanguageCode(languageCode);
  }
}
