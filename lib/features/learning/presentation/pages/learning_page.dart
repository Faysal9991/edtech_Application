import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/course_card.dart';
import 'package:edtech_application/shared/widgets/page_header.dart';
import 'package:edtech_application/shared/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    final activeCourses = state.enrollments;

    return AppScrollablePage(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
      onRefresh: state.loadStudentData,
      children: [
        PageHeader(
          title: context.l10n.tr('learning.title'),
          subtitle: context.l10n.tr('learning.subtitle'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            AppSpacing.xs,
            AppSpacing.lg,
            AppSpacing.xl,
          ),
          child: _ResultsAction(
            onTap: () => Navigator.pushNamed(context, AppRoutes.results),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: SectionHeader(
            title: context.l10n.tr('learning.activeCourses'),
            subtitle: context.l10n.tr('learning.activeSubtitle'),
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        if (state.isLoadingStudentData && activeCourses.isEmpty)
          AppLoadingView(label: context.l10n.tr('common.loading'))
        else if (state.studentDataError != null && activeCourses.isEmpty)
          AppStateView(
            icon: AppIcons.cloudOff,
            title: context.l10n.tr('learning.activeCourses'),
            message: state.studentDataError!,
            actionLabel: context.l10n.tr('common.retry'),
            onAction: state.loadStudentData,
            tone: AppStateTone.error,
          )
        else if (activeCourses.isEmpty)
          AppStateView(
            icon: AppIcons.learning,
            title: context.l10n.tr('learning.activeCourses'),
            message: context.l10n.tr('learning.notEnrolled'),
          )
        else ...[
          if (state.studentDataError != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.lg,
                0,
                AppSpacing.lg,
                AppSpacing.sm,
              ),
              child: AppStatusBanner(
                message: state.studentDataError!,
                icon: AppIcons.cloudOff,
                tone: AppStateTone.error,
                actionLabel: context.l10n.tr('common.retry'),
                onAction: state.loadStudentData,
              ),
            ),
          ...activeCourses.asMap().entries.map(
            (entry) => StaggeredAnimation(
              key: ValueKey(entry.value.id),
              index: entry.key,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.lg,
                  0,
                  AppSpacing.lg,
                  AppSpacing.sm,
                ),
                child: CourseCard(
                  course: entry.value,
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRoutes.courseDetails,
                    arguments: entry.value,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _ResultsAction extends StatelessWidget {
  const _ResultsAction({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.all(AppSpacing.md),
        leading: const AppIconBadge(icon: AppIcons.results),
        title: Text(
          context.l10n.tr('results.title'),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: AppSpacing.xxs),
          child: Text(context.l10n.tr('results.subtitle')),
        ),
        trailing: const AppIcon(AppIcons.arrowRight, size: 20),
      ),
    );
  }
}
