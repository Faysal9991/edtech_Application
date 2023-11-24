import 'package:edtech_application/util/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  final SharedPreferences sharedPreferences;

  ThemeProvider({required this.sharedPreferences}) {
    loadCurrentTheme();
  }

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    sharedPreferences.setBool(AppConstant.theme, _darkTheme);

    notifyListeners();
  }

  void loadCurrentTheme() async {
    _darkTheme = sharedPreferences.getBool(AppConstant.theme) ?? false;
    //notifyListeners();
  }
}