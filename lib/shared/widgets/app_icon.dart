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

  final List<List<dynamic>> icon;
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
        color: color ?? IconTheme.of(context).color,
        strokeWidth: strokeWidth,
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

  final List<List<dynamic>> icon;
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
  static const dashboard = HugeIcons.strokeRoundedDashboardSquare01;
  static const explore = HugeIcons.strokeRoundedSearch01;
  static const learning = HugeIcons.strokeRoundedCourse;
  static const results = HugeIcons.strokeRoundedChartEvaluation;
  static const progress = HugeIcons.strokeRoundedAnalyticsUp;
  static const activity = HugeIcons.strokeRoundedActivity03;
  static const profile = HugeIcons.strokeRoundedUser;
  static const students = HugeIcons.strokeRoundedStudents;
  static const teacher = HugeIcons.strokeRoundedTeacher;
  static const student = HugeIcons.strokeRoundedStudent;
  static const guardian = HugeIcons.strokeRoundedUserMultiple03;
  static const organization = HugeIcons.strokeRoundedBuilding06;
  static const switchUser = HugeIcons.strokeRoundedUserSwitch;
  static const notification = HugeIcons.strokeRoundedNotification02;
  static const search = HugeIcons.strokeRoundedSearch01;
  static const filter = HugeIcons.strokeRoundedFilterHorizontal;
  static const book = HugeIcons.strokeRoundedBookOpen01;
  static const school = HugeIcons.strokeRoundedSchool01;
  static const physics = HugeIcons.strokeRoundedAtom01;
  static const chemistry = HugeIcons.strokeRoundedChemistry01;
  static const biology = HugeIcons.strokeRoundedLeaf01;
  static const translate = HugeIcons.strokeRoundedTranslate;
  static const calendar = HugeIcons.strokeRoundedCalendar03;
  static const schedule = HugeIcons.strokeRoundedDateTime;
  static const clock = HugeIcons.strokeRoundedClock03;
  static const attendance = HugeIcons.strokeRoundedCalendarCheckIn01;
  static const clipboard = HugeIcons.strokeRoundedClipboard;
  static const checklist = HugeIcons.strokeRoundedCheckList;
  static const assignment = HugeIcons.strokeRoundedAssignments;
  static const quiz = HugeIcons.strokeRoundedQuiz02;
  static const work = HugeIcons.strokeRoundedBriefcase06;
  static const play = HugeIcons.strokeRoundedPlayCircle;
  static const live = HugeIcons.strokeRoundedVideo01;
  static const microphone = HugeIcons.strokeRoundedMic01;
  static const microphoneOff = HugeIcons.strokeRoundedMicOff01;
  static const video = HugeIcons.strokeRoundedVideo01;
  static const videoOff = HugeIcons.strokeRoundedVideoOff;
  static const callEnd = HugeIcons.strokeRoundedCallEnd01;
  static const audioWave = HugeIcons.strokeRoundedAudioWave01;
  static const task = HugeIcons.strokeRoundedTaskDone01;
  static const empty = HugeIcons.strokeRoundedSearchRemove;
  static const cloudOff = HugeIcons.strokeRoundedCloudOff;
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
  static const lock = HugeIcons.strokeRoundedSecurityLock;
  static const shield = HugeIcons.strokeRoundedSecurityCheck;
  static const mail = HugeIcons.strokeRoundedMail02;
  static const visible = HugeIcons.strokeRoundedView;
  static const hidden = HugeIcons.strokeRoundedViewOff;
  static const help = HugeIcons.strokeRoundedHelpCircle;
  static const info = HugeIcons.strokeRoundedInformationCircle;
  static const warning = HugeIcons.strokeRoundedAlertCircle;
  static const error = HugeIcons.strokeRoundedCancelCircle;
  static const refresh = HugeIcons.strokeRoundedRefresh;
  static const add = HugeIcons.strokeRoundedAdd01;
  static const delete = HugeIcons.strokeRoundedDelete02;
  static const more = HugeIcons.strokeRoundedMoreVertical;
  static const arrowDown = HugeIcons.strokeRoundedArrowDown01;
  static const arrowLeft = HugeIcons.strokeRoundedArrowLeft01;
  static const logout = HugeIcons.strokeRoundedLogout02;
  static const logoutAll = HugeIcons.strokeRoundedUserBlock01;
  static const edit = HugeIcons.strokeRoundedUserEdit01;
  static const arrowRight = HugeIcons.strokeRoundedArrowRight01;
}
