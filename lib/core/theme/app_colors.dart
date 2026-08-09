import 'package:flutter/material.dart';

/// Academic Blue + Progress Green + Clean Neutral.
///
/// Blue owns navigation, actions, links, focus, and selection. Green is
/// intentionally reserved for progress, completion, success, and verification.
abstract final class AppColors {
  // Brand — buttons, active tabs, links, focus, and selected states.
  static const Color primary = Color(0xFF155EEF);
  static const Color primaryDark = Color(0xFF0B4CC4);
  static const Color primaryLight = Color(0xFFEAF2FF);

  // Progress — completion, success, verified states, and progress indicators.
  static const Color secondary = Color(0xFF0F9F80);
  static const Color secondaryDark = Color(0xFF087A63);
  static const Color secondaryLight = Color(0xFFE7F8F3);

  // Background and surfaces.
  static const Color background = Color(0xFFF7F9FC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceMuted = Color(0xFFF1F5F9);

  // Text.
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);
  static const Color textMuted = Color(0xFF64748B);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Borders and dividers.
  static const Color border = Color(0xFFE2E8F0);
  static const Color borderFocused = primary;
  static const Color divider = Color(0xFFEDF1F5);

  // Semantic colors — never used as brand decoration.
  static const Color success = Color(0xFF16A34A);
  static const Color successBackground = Color(0xFFECFDF3);
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningBackground = Color(0xFFFFF7E6);
  static const Color error = Color(0xFFDC2626);
  static const Color errorBackground = Color(0xFFFEF2F2);
  static const Color info = Color(0xFF0284C7);
  static const Color infoBackground = Color(0xFFEFF8FF);

  // Overlay and shadow.
  static const Color overlay = Color(0x660F172A);
  static const Color shadow = Color(0x140F172A);

  // System support tokens.
  static const Color disabled = Color(0xFF94A3B8);
  static const Color transparent = Colors.transparent;

  // Accessible dark-mode equivalents of the same semantic roles.
  static const Color darkBackground = Color(0xFF0B1220);
  static const Color darkSurface = Color(0xFF111827);
  static const Color darkSurfaceMuted = Color(0xFF1E293B);
  static const Color darkPrimaryContainer = Color(0xFF172554);
  static const Color darkSecondaryContainer = Color(0xFF063E35);
  static const Color darkPrimary = Color(0xFF8AB4FF);
  static const Color darkSecondary = Color(0xFF5ED9BE);
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFFCBD5E1);
  static const Color darkTextMuted = Color(0xFF94A3B8);
  static const Color darkBorder = Color(0xFF334155);
  static const Color darkSuccess = Color(0xFF4ADE80);
  static const Color darkSuccessBackground = Color(0xFF052E1A);
  static const Color darkWarning = Color(0xFFFBBF24);
  static const Color darkWarningBackground = Color(0xFF422006);
  static const Color darkError = Color(0xFFF87171);
  static const Color darkErrorBackground = Color(0xFF450A0A);
  static const Color darkInfo = Color(0xFF38BDF8);
  static const Color darkInfoBackground = Color(0xFF082F49);
}
