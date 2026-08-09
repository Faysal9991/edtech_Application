import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthController>().user;
    final lms = context.watch<StudentLmsController>();
    final firstName =
        user?.name.split(' ').first ?? context.l10n.tr('profile.fallbackName');
    final continueCourse = lms.enrollments.isEmpty
        ? null
        : lms.enrollments.first;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _HomeHeader(
              firstName: firstName,
              unreadCount: lms.unreadNotifications,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
            sliver: SliverList.list(
              children: [
                AppEntrance.fadeInLeft(
                  delay: const Duration(milliseconds: 70),
                  child: TextField(
                    readOnly: true,
                    onTap: () => _message(
                      context,
                      context.l10n.tr('home.searchMessage'),
                    ),
                    decoration: InputDecoration(
                      hintText: context.l10n.tr('home.searchHint'),
                      prefixIcon: const Center(
                        widthFactor: 1,
                        child: AppIcon(AppIcons.search, size: 21),
                      ),
                      suffixIcon: const Center(
                        widthFactor: 1,
                        child: AppIcon(AppIcons.filter, size: 21),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                if (continueCourse != null)
                  AppEntrance.fadeInUp(
                    delay: const Duration(milliseconds: 120),
                    child: _ContinueLearningCard(
                      course: continueCourse,
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutes.courseDetails,
                        arguments: continueCourse,
                      ),
                    ),
                  )
                else
                  _HomeEmptyCard(
                    icon: AppIcons.learning,
                    title: context.l10n.tr('home.startJourney'),
                    subtitle: context.l10n.tr('home.startJourneySubtitle'),
                  ),
                const SizedBox(height: 16),
                AppEntrance(
                  type: EntranceType.fadeInUp,
                  delay: const Duration(milliseconds: 170),
                  child: _HomeEmptyCard(
                    icon: AppIcons.live,
                    title: context.l10n.tr('home.upcomingLive'),
                    subtitle: context.l10n.tr('home.liveApiMissing'),
                  ),
                ),
                const SizedBox(height: 28),
                SectionHeader(
                  title: context.l10n.tr('home.todayTasks'),
                  subtitle: context.l10n.tr('home.todayTasksSubtitle'),
                ),
                const SizedBox(height: 12),
                _HomeEmptyCard(
                  icon: AppIcons.task,
                  title: context.l10n.tr('home.noTasks'),
                  subtitle: context.l10n.tr('home.tasksApiMissing'),
                ),
                const SizedBox(height: 18),
                SectionHeader(
                  title: context.l10n.tr('home.popularCourses'),
                  subtitle: context.l10n.tr('home.popularSubtitle'),
                  actionLabel: context.l10n.tr('common.viewAll'),
                  onAction: () => _message(
                    context,
                    context.l10n.tr('home.allCoursesMessage'),
                  ),
                ),
                const SizedBox(height: 12),
                if (lms.isLoadingCourses && lms.courses.isEmpty)
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                else if (lms.coursesError != null && lms.courses.isEmpty)
                  _HomeEmptyCard(
                    icon: AppIcons.cloudOff,
                    title: context.l10n.tr('home.courseLoadFailed'),
                    subtitle: lms.coursesError!,
                  )
                else if (lms.courses.isEmpty)
                  _HomeEmptyCard(
                    icon: AppIcons.empty,
                    title: context.l10n.tr('home.noPublishedCourse'),
                    subtitle: context.l10n.tr('home.noPublishedSubtitle'),
                  )
                else
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: lms.courses.length,
                      separatorBuilder: (_, _) => const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        final course = lms.courses[index];
                        return StaggeredAnimation(
                          index: index,
                          type: EntranceType.fadeInRight,
                          child: _PopularCourseCard(
                            course: course,
                            onTap: () => Navigator.pushNamed(
                              context,
                              AppRoutes.courseDetails,
                              arguments: course,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _message(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({required this.firstName, required this.unreadCount});

  final String firstName;
  final int unreadCount;

  @override
  Widget build(BuildContext context) {
    return AppEntrance.fadeInDown(
      distance: 14,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.tr('home.greeting', args: {'name': firstName}),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.tr('home.subtitle'),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Badge(
              isLabelVisible: unreadCount > 0,
              label: Text(
                unreadCount > 99
                    ? '${context.l10n.number(99)}+'
                    : context.l10n.number(unreadCount),
              ),
              child: IconButton.filledTonal(
                tooltip: context.l10n.tr('home.notifications'),
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.notifications),
                icon: const AppIcon(AppIcons.notification),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContinueLearningCard extends StatelessWidget {
  const _ContinueLearningCard({required this.course, required this.onTap});

  final Course course;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final progress = course.lessons == 0
        ? 0.0
        : (course.completedLessons / course.lessons).clamp(0.0, 1.0);
    return PressableScale(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 18,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.tr('home.continueLearning').toUpperCase(),
              style: const TextStyle(
                color: AppColors.green200,
                fontSize: 11,
                fontWeight: FontWeight.w800,
                letterSpacing: .9,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              course.subject,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: AppColors.white),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: AnimatedProgressBar(
                    value: progress,
                    height: 7,
                    backgroundColor: Color(0x33FFFFFF),
                    color: AppColors.green200,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  context.l10n.percent((progress * 100).round()),
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: Text(
                    course.title,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                IconButton.filled(
                  onPressed: onTap,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primary,
                  ),
                  icon: const AppIcon(AppIcons.play),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeEmptyCard extends StatelessWidget {
  const _HomeEmptyCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: AppIconBadge(
          icon: icon,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(subtitle),
        ),
      ),
    );
  }
}

class _PopularCourseCard extends StatelessWidget {
  const _PopularCourseCard({required this.course, required this.onTap});

  final Course course;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final thumbnailColor = Color(course.colorValue);
    final thumbnailForeground =
        ThemeData.estimateBrightnessForColor(thumbnailColor) == Brightness.dark
        ? AppColors.white
        : AppColors.primary;
    return SizedBox(
      width: 238,
      child: PressableScale(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 7.5,
                  child: ColoredBox(
                    color: thumbnailColor,
                    child: Center(
                      child: AppIcon(
                        AppIcons.book,
                        size: 42,
                        color: thumbnailForeground,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Chip(label: Text(course.educationLevel)),
                          const Spacer(),
                          const Icon(
                            Icons.star_rounded,
                            size: 17,
                            color: AppColors.secondary,
                          ),
                          const SizedBox(width: 3),
                          Text(course.rating.toStringAsFixed(1)),
                        ],
                      ),
                      const SizedBox(height: 7),
                      Text(
                        course.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
