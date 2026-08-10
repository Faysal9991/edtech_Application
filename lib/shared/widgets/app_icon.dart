import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

/// The app-wide HugeIcons wrapper keeps stroke, size, and color consistent.
class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    this.size = 24,
    this.color,
    this.strokeWidth = 1.8,
    this.semanticLabel,
    super.key,
  });

  final IconData icon;
  final double size;
  final Color? color;
  final double strokeWidth;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      image: semanticLabel != null,
      excludeSemantics: semanticLabel == null,
      child: HugeIcon(
        icon: icon,
        size: size,
        color: color ?? IconTheme.of(context).color ?? Colors.black,
      ),
    );
  }
}

/// A quiet icon surface for cards, empty states, and feature lists.
class AppIconBadge extends StatelessWidget {
  const AppIconBadge({
    required this.icon,
    this.size = 48,
    this.iconSize = 24,
    this.backgroundColor,
    this.foregroundColor,
    this.semanticLabel,
    super.key,
  });

  final IconData icon;
  final double size;
  final double iconSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.primaryContainer,
        borderRadius: BorderRadius.circular(size * .32),
        border: Border.all(color: colors.primary.withValues(alpha: .08)),
      ),
      child: AppIcon(
        icon,
        size: iconSize,
        color: foregroundColor ?? colors.primary,
        strokeWidth: 1.9,
        semanticLabel: semanticLabel,
      ),
    );
  }
}

/// Curated aliases stop individual screens from guessing icon names.
abstract final class AppIcons {
  static const home = HugeIcons.strokeRoundedHome01;
  static const explore = HugeIcons.strokeRoundedSearch01;
  static const learning = HugeIcons.strokeRoundedCourse;
  static const results = HugeIcons.strokeRoundedChartEvaluation;
  static const profile = HugeIcons.strokeRoundedUser;
  static const notification = HugeIcons.strokeRoundedNotification02;
  static const search = HugeIcons.strokeRoundedSearch01;
  static const filter = HugeIcons.strokeRoundedFilterHorizontal;
  static const book = HugeIcons.strokeRoundedBookOpen01;
  static const play = HugeIcons.strokeRoundedPlayCircle;
  static const live = HugeIcons.strokeRoundedVideo01;
  static const task = HugeIcons.strokeRoundedTaskDone01;
  static const empty = HugeIcons.strokeRoundedSearchRemove;
  static const cloudOff = HugeIcons.strokeRoundedCloud;
  static const streak = HugeIcons.strokeRoundedFire;
  static const check = HugeIcons.strokeRoundedTick02;
  static const bookmark = HugeIcons.strokeRoundedBookmark02;
  static const certificate = HugeIcons.strokeRoundedCertificate02;
  static const verified = HugeIcons.strokeRoundedCheckmarkBadge01;
  static const analytics = HugeIcons.strokeRoundedAnalytics01;
  static const moon = HugeIcons.strokeRoundedMoon02;
  static const language = HugeIcons.strokeRoundedLanguageCircle;
  static const settings = HugeIcons.strokeRoundedSettings02;
  static const password = HugeIcons.strokeRoundedSquareLockPassword;
  static const help = HugeIcons.strokeRoundedHelpCircle;
  static const info = HugeIcons.strokeRoundedInformationCircle;
  static const logout = HugeIcons.strokeRoundedLogout02;
  static const edit = HugeIcons.strokeRoundedUserEdit01;
  static const arrowRight = HugeIcons.strokeRoundedArrowRight01;
}
