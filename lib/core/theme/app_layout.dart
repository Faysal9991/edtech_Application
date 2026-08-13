import 'package:flutter/material.dart';

/// Shared 4/8-point layout rhythm used by every role workspace.
abstract final class AppSpacing {
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 20;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 40;
}

abstract final class AppRadius {
  static const double sm = 10;
  static const double md = 14;
  static const double lg = 18;
  static const double xl = 24;
  static const double pill = 999;
}

abstract final class AppBreakpoints {
  static const double tablet = 720;
  static const double navigationRail = 880;
  static const double wide = 1180;
}

abstract final class AppLayout {
  static const double maxContentWidth = 1120;
  static const double maxReadingWidth = 720;
  static const double maxFormWidth = 520;
  static const double minTouchTarget = 48;

  static EdgeInsets pagePadding(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return EdgeInsets.symmetric(
      horizontal: width >= AppBreakpoints.tablet
          ? AppSpacing.xxl
          : AppSpacing.lg,
      vertical: AppSpacing.lg,
    );
  }
}
