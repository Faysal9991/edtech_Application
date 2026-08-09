import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
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

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          PageHeader(
            title: context.l10n.tr('learning.title'),
            subtitle: context.l10n.tr('learning.subtitle'),
          ),
          AppEntrance.scaleIn(
            delay: const Duration(milliseconds: 90),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.green50,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: AppColors.primary,
                      child: AppIcon(AppIcons.streak, color: Colors.white),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.tr('learning.streak'),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(context.l10n.tr('learning.streakSubtitle')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SectionHeader(
              title: context.l10n.tr('learning.activeCourses'),
              subtitle: context.l10n.tr('learning.activeSubtitle'),
            ),
          ),
          const SizedBox(height: 14),
          if (state.isLoadingStudentData && activeCourses.isEmpty)
            const Padding(
              padding: EdgeInsets.all(32),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (state.studentDataError != null && activeCourses.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(state.studentDataError!, textAlign: TextAlign.center),
                  const SizedBox(height: 12),
                  FilledButton.tonal(
                    onPressed: () =>
                        context.read<StudentLmsController>().loadStudentData(),
                    child: Text(context.l10n.tr('common.retry')),
                  ),
                ],
              ),
            )
          else if (activeCourses.isEmpty)
            Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: Text(context.l10n.tr('learning.notEnrolled')),
              ),
            )
          else
            ...activeCourses.asMap().entries.map(
              (entry) => StaggeredAnimation(
                index: entry.key,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
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
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SectionHeader(
              title: context.l10n.tr('learning.thisWeek'),
              subtitle: context.l10n.tr('learning.weeklyGoal'),
            ),
          ),
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: _WeeklyActivity(),
          ),
        ],
      ),
    );
  }
}

class _WeeklyActivity extends StatelessWidget {
  const _WeeklyActivity();

  @override
  Widget build(BuildContext context) {
    const completed = [true, true, true, true, false, false, false];
    final labels = [
      context.l10n.tr('day.mon'),
      context.l10n.tr('day.tue'),
      context.l10n.tr('day.wed'),
      context.l10n.tr('day.thu'),
      context.l10n.tr('day.fri'),
      context.l10n.tr('day.sat'),
      context.l10n.tr('day.sun'),
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(labels.length, (index) {
            final done = completed[index];
            return Column(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: done
                        ? AppColors.primary
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    shape: BoxShape.circle,
                  ),
                  child: done
                      ? const AppIcon(
                          AppIcons.check,
                          size: 18,
                          color: Colors.white,
                        )
                      : Container(
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline,
                              width: 1.5,
                            ),
                          ),
                        ),
                ),
                const SizedBox(height: 8),
                Text(
                  labels[index],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
