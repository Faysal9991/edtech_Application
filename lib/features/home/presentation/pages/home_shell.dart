import 'package:edtech_application/features/assessments/presentation/pages/assessments_page.dart';
import 'package:edtech_application/features/courses/presentation/pages/courses_page.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/home/presentation/pages/home_page.dart';
import 'package:edtech_application/features/learning/presentation/pages/learning_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/profile_page.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/role_navigation_shell.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<StudentLmsController>().loadInitialData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RoleNavigationShell(
      destinations: [
        RoleDestination(
          label: context.l10n.tr('nav.home'),
          icon: AppIcons.home,
          page: const HomePage(),
        ),
        RoleDestination(
          label: context.l10n.tr('nav.explore'),
          icon: AppIcons.explore,
          page: const CoursesPage(),
        ),
        RoleDestination(
          label: context.l10n.tr('nav.learning'),
          icon: AppIcons.learning,
          page: const LearningPage(),
        ),
        RoleDestination(
          label: context.l10n.tr('home.todayTasks'),
          icon: AppIcons.task,
          page: const AssessmentsPage(),
        ),
        RoleDestination(
          label: context.l10n.tr('nav.profile'),
          icon: AppIcons.profile,
          page: const ProfilePage(),
        ),
      ],
    );
  }
}
