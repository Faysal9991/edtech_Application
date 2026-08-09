import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // Core brand palette supplied for the product.
  static const Color green50 = Color(0xFFE8F5E9);
  static const Color green200 = Color(0xFFA5D6A7);
  static const Color green400 = Color(0xFF66BB6A);
  static const Color green900 = Color(0xFF1B5E20);

  // Neutral foundation keeps the green palette from overwhelming the UI.
  static const Color white = Color(0xFFFFFFFF);
  static const Color canvas = Color(0xFFF8FAF8);
  static const Color ink = Color(0xFF142118);
  static const Color textSecondary = Color(0xFF526157);
  static const Color textMuted = Color(0xFF758279);
  static const Color border = Color(0xFFD7E3D9);
  static const Color divider = Color(0xFFE7EEE8);
  static const Color disabled = Color(0xFFB9C5BB);
  static const Color transparent = Colors.transparent;

  // Brand roles: forest green carries actions; brighter green is an accent.
  static const Color primary = green900;
  static const Color primaryDark = green900;
  static const Color primaryLight = green50;
  static const Color secondary = green400;
  static const Color secondaryDark = green900;
  static const Color secondaryLight = green200;
  static const Color accent = green400;

  // Surface and content roles.
  static const Color scaffold = canvas;
  static const Color surface = white;
  static const Color surfaceSoft = green50;
  static const Color surfaceSelected = green50;
  static const Color fieldFill = Color(0xFFF1F6F2);
  static const Color textPrimary = ink;
  static const Color textOnPrimary = white;
  static const Color textOnSecondary = ink;

  // Semantic colors are reserved for feedback, not brand decoration.
  static const Color success = green900;
  static const Color successBackground = green50;
  static const Color info = Color(0xFF2F6B55);
  static const Color infoBackground = Color(0xFFE5F3EC);
  static const Color warning = Color(0xFF8A5A00);
  static const Color warningBackground = Color(0xFFFFF1D2);
  static const Color danger = Color(0xFFB3261E);
  static const Color dangerBackground = Color(0xFFFCE8E6);

  // Balanced dark theme neutrals with the original greens as accents.
  static const Color darkScaffold = Color(0xFF0D1510);
  static const Color darkSurface = Color(0xFF151F18);
  static const Color darkSurfaceSoft = Color(0xFF1C2A20);
  static const Color darkSurfaceSelected = Color(0xFF243A2A);
  static const Color darkPrimary = green200;
  static const Color darkSecondary = green400;
  static const Color darkTextPrimary = Color(0xFFF5FBF6);
  static const Color darkTextSecondary = Color(0xFFBED0C1);
  static const Color darkTextMuted = Color(0xFF91A895);
  static const Color darkBorder = Color(0xFF304136);

  static const Color shadow = Color(0x1F152218);
  static const Color overlay = Color(0x99152218);
}
