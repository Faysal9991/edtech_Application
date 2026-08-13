import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Student dashboard: every card is backed by the current LMS response.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthController>().user;
    final lms = context.watch<StudentLmsController>();
    final firstName =
        user?.name.split(' ').first ?? context.l10n.tr('profile.fallbackName');
    final dashboard = lms.dashboard;
    final continueItem = dashboard?.continueLearning.isNotEmpty == true
        ? dashboard!.continueLearning.first
        : null;
    final continueCourse = continueItem != null
        ? Course(
            id: continueItem.courseId,
            slug: continueItem.courseSlug,
            title: continueItem.courseTitle,
            category: context.l10n.tr('home.continueLearning'),
            instructor: '',
            duration: '',
            lessons: 100,
            completedLessons: continueItem.completionPercentage
                .clamp(0, 100)
                .round(),
            rating: 0,
            colorValue: AppColors.primary.toARGB32(),
            subject: continueItem.lessonTitle,
            thumbnailAssetId: continueItem.thumbnailAssetId,
            enrollmentId: continueItem.enrollmentId,
          )
        : lms.enrollments.isEmpty
        ? null
        : lms.enrollments.first;
    final upcomingLive = dashboard?.upcomingLiveClasses.isNotEmpty == true
        ? dashboard!.upcomingLiveClasses.first
        : null;
    final displayCourses = dashboard?.recommendedCourses.isNotEmpty == true
        ? dashboard!.recommendedCourses
              .map(
                (item) => Course(
                  id: item.id,
                  slug: item.slug,
                  title: item.title,
                  category: item.reason,
                  instructor: '',
                  duration: '',
                  lessons: 0,
                  rating: 0,
                  colorValue: AppColors.primaryLight.toARGB32(),
                  language: item.language,
                  priceMinor: item.priceMinor,
                  isFree: item.isFree,
                  overview: item.description,
                  currency: item.currency,
                  thumbnailAssetId: item.thumbnailAssetId,
                ),
              )
              .toList()
        : lms.courses;

    return AppPage(
      padding: EdgeInsets.zero,
      child: RefreshIndicator(
        onRefresh: lms.loadInitialData,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: AppLayout.pagePadding(context),
              sliver: SliverList.list(
                children: [
                  _HomeHeader(
                    firstName: firstName,
                    unreadCount: lms.unreadNotifications,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Semantics(
                    button: true,
                    label: context.l10n.tr('home.searchHint'),
                    child: TextField(
                      readOnly: true,
                      onTap: () => _showCourseBrowser(context, displayCourses),
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
                  const SizedBox(height: AppSpacing.lg),
                  if (continueCourse != null)
                    _ContinueLearningCard(
                      course: continueCourse,
                      onTap: () => _openCourse(context, continueCourse),
                    )
                  else
                    _HomeEmptyCard(
                      icon: AppIcons.learning,
                      title: context.l10n.tr('home.startJourney'),
                      subtitle: context.l10n.tr('home.startJourneySubtitle'),
                      onTap: () => _showCourseBrowser(context, displayCourses),
                    ),
                  const SizedBox(height: AppSpacing.md),
                  if (upcomingLive == null)
                    _HomeEmptyCard(
                      icon: AppIcons.live,
                      title: context.l10n.tr('home.upcomingLive'),
                      subtitle: context.l10n.tr('home.liveApiMissing'),
                    )
                  else
                    _UpcomingLiveCard(
                      title: upcomingLive.title,
                      courseTitle: upcomingLive.courseTitle,
                      startsAt: upcomingLive.scheduledStartAt,
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutes.liveRoom,
                        arguments: upcomingLive.id,
                      ),
                    ),
                  const SizedBox(height: AppSpacing.xxl),
                  SectionHeader(
                    title: context.l10n.tr('home.todayTasks'),
                    subtitle: context.l10n.tr('home.todayTasksSubtitle'),
                    actionLabel: context.l10n.tr('common.viewAll'),
                    onAction: () =>
                        Navigator.pushNamed(context, AppRoutes.assessments),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  if (dashboard != null &&
                      (dashboard.dueAssignments.isNotEmpty ||
                          dashboard.availableQuizzes.isNotEmpty))
                    _TodayTaskCard(
                      assignment: dashboard.dueAssignments.isEmpty
                          ? null
                          : dashboard.dueAssignments.first,
                      quiz: dashboard.availableQuizzes.isEmpty
                          ? null
                          : dashboard.availableQuizzes.first,
                    )
                  else
                    _HomeEmptyCard(
                      icon: AppIcons.task,
                      title: context.l10n.tr('home.noTasks'),
                      subtitle: context.l10n.tr('home.tasksApiMissing'),
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.assessments),
                    ),
                  const SizedBox(height: AppSpacing.xl),
                  SectionHeader(
                    title: context.l10n.tr('home.popularCourses'),
                    subtitle: context.l10n.tr('home.popularSubtitle'),
                    actionLabel: context.l10n.tr('common.viewAll'),
                    onAction: () => _showCourseBrowser(context, displayCourses),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  if (lms.isLoadingCourses && displayCourses.isEmpty)
                    const AppLoadingView(compact: true)
                  else if (lms.coursesError != null && displayCourses.isEmpty)
                    AppStateView(
                      icon: AppIcons.cloudOff,
                      title: context.l10n.tr('home.courseLoadFailed'),
                      message: lms.coursesError!,
                      actionLabel: context.l10n.tr('notifications.retry'),
                      onAction: lms.loadCourses,
                      compact: true,
                      tone: AppStateTone.error,
                    )
                  else if (displayCourses.isEmpty)
                    AppStateView(
                      icon: AppIcons.empty,
                      title: context.l10n.tr('home.noPublishedCourse'),
                      message: context.l10n.tr('home.noPublishedSubtitle'),
                      compact: true,
                    )
                  else
                    SizedBox(
                      height: 244,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: displayCourses.length,
                        padding: const EdgeInsets.only(right: AppSpacing.xs),
                        separatorBuilder: (_, _) =>
                            const SizedBox(width: AppSpacing.sm),
                        itemBuilder: (context, index) {
                          final course = displayCourses[index];
                          return StaggeredAnimation(
                            index: index,
                            type: EntranceType.fadeInRight,
                            child: _PopularCourseCard(
                              course: course,
                              onTap: () => _openCourse(context, course),
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
      ),
    );
  }

  void _openCourse(BuildContext context, Course course) {
    Navigator.pushNamed(context, AppRoutes.courseDetails, arguments: course);
  }

  Future<void> _showCourseBrowser(
    BuildContext context,
    List<Course> courses,
  ) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: DraggableScrollableSheet(
          expand: false,
          initialChildSize: .62,
          minChildSize: .35,
          maxChildSize: .9,
          builder: (context, controller) => ListView.separated(
            controller: controller,
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.xs,
              AppSpacing.lg,
              AppSpacing.xxl,
            ),
            itemCount: courses.isEmpty ? 2 : courses.length + 1,
            separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.xs),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: Text(
                    context.l10n.tr('home.popularCourses'),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              }
              if (courses.isEmpty) {
                return AppStateView(
                  icon: AppIcons.empty,
                  title: context.l10n.tr('home.noPublishedCourse'),
                  message: context.l10n.tr('home.noPublishedSubtitle'),
                  compact: true,
                );
              }
              final course = courses[index - 1];
              return Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: AppSpacing.xs,
                  ),
                  leading: const AppIconBadge(icon: AppIcons.book),
                  title: Text(
                    course.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    course.category,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const AppIcon(AppIcons.arrowRight, size: 20),
                  onTap: () {
                    Navigator.pop(sheetContext);
                    _openCourse(context, course);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
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
                const SizedBox(height: AppSpacing.xxs),
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
    return Semantics(
      button: true,
      label: '${context.l10n.tr('home.continueLearning')}: ${course.title}',
      child: PressableScale(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppRadius.xl),
          child: Ink(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(AppRadius.xl),
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
                    color: AppColors.primaryLight,
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    letterSpacing: .9,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  course.subject,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.textOnPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  children: [
                    Expanded(
                      child: AnimatedProgressBar(
                        value: progress,
                        height: 7,
                        backgroundColor: AppColors.textOnPrimary.withValues(
                          alpha: .20,
                        ),
                        color: AppColors.secondaryLight,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      context.l10n.percent((progress * 100).round()),
                      style: const TextStyle(
                        color: AppColors.textOnPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        course.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: AppColors.textOnPrimary),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    IconButton.filled(
                      onPressed: onTap,
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.surface,
                        foregroundColor: AppColors.primary,
                      ),
                      icon: const AppIcon(AppIcons.play),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UpcomingLiveCard extends StatelessWidget {
  const _UpcomingLiveCard({
    required this.title,
    required this.courseTitle,
    required this.startsAt,
    required this.onTap,
  });

  final String title;
  final String courseTitle;
  final DateTime startsAt;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final localStart = startsAt.toLocal();
    final localizations = MaterialLocalizations.of(context);
    final when =
        '${localizations.formatMediumDate(localStart)} • '
        '${localizations.formatTimeOfDay(TimeOfDay.fromDateTime(localStart))}';
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            const AppIconBadge(
              icon: AppIcons.live,
              backgroundColor: AppColors.errorBackground,
              foregroundColor: AppColors.error,
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    courseTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    when,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            FilledButton.tonal(
              onPressed: onTap,
              child: Text(context.l10n.tr('live.joinNow')),
            ),
          ],
        ),
      ),
    );
  }
}

class _TodayTaskCard extends StatelessWidget {
  const _TodayTaskCard({this.assignment, this.quiz});

  final DashboardAssignmentDto? assignment;
  final DashboardQuizDto? quiz;

  @override
  Widget build(BuildContext context) => Card(
    child: Column(
      children: [
        if (quiz != null)
          ListTile(
            leading: const AppIconBadge(icon: AppIcons.quiz, size: 44),
            title: Text(
              quiz!.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              quiz!.courseTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const AppIcon(AppIcons.arrowRight, size: 19),
            onTap: () => Navigator.pushNamed(
              context,
              AppRoutes.quiz,
              arguments: quiz!.id,
            ),
          ),
        if (quiz != null && assignment != null)
          const Divider(height: 1, indent: 72),
        if (assignment != null)
          ListTile(
            leading: const AppIconBadge(icon: AppIcons.assignment, size: 44),
            title: Text(
              assignment!.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              assignment!.courseTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const AppIcon(AppIcons.arrowRight, size: 19),
            onTap: () => Navigator.pushNamed(
              context,
              AppRoutes.assignment,
              arguments: assignment!.id,
            ),
          ),
      ],
    ),
  );
}

class _HomeEmptyCard extends StatelessWidget {
  const _HomeEmptyCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      contentPadding: const EdgeInsets.all(AppSpacing.md),
      leading: AppIconBadge(
        icon: icon,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: AppSpacing.xxs),
        child: Text(subtitle),
      ),
      trailing: onTap == null ? null : const AppIcon(AppIcons.arrowRight),
      onTap: onTap,
    ),
  );
}

class _PopularCourseCard extends StatelessWidget {
  const _PopularCourseCard({required this.course, required this.onTap});

  final Course course;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: 250,
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
                    color: colors.primaryContainer,
                    child: Center(
                      child: AppIcon(
                        AppIcons.book,
                        size: 42,
                        color: colors.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              course.educationLevel,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                          if (course.rating > 0) ...[
                            const Icon(
                              Icons.star_rounded,
                              size: 17,
                              color: AppColors.warning,
                            ),
                            const SizedBox(width: 3),
                            Text(course.rating.toStringAsFixed(1)),
                          ],
                        ],
                      ),
                      const SizedBox(height: AppSpacing.xs),
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
