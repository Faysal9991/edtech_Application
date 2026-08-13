import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/learning/presentation/pages/lesson_page.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({required this.course, super.key});

  final Course course;

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  Future<Course>? _courseFuture;
  String? _expandedModuleId;
  bool _isEnrolling = false;

  @override
  Widget build(BuildContext context) {
    _courseFuture ??= context.read<StudentLmsController>().getCourse(
      widget.course,
    );
    return FutureBuilder<Course>(
      future: _courseFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(title: Text(context.l10n.tr('course.details'))),
            body: Center(
              child: AppLoadingView(label: context.l10n.tr('common.loading')),
            ),
          );
        }
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: Text(context.l10n.tr('course.details'))),
            body: Center(
              child: AppStateView(
                icon: AppIcons.cloudOff,
                title: context.l10n.tr('course.details'),
                message: _loadFailureMessage(context),
                tone: AppStateTone.error,
                actionLabel: context.l10n.tr('common.retry'),
                onAction: _reload,
              ),
            ),
          );
        }
        return _details(snapshot.data ?? widget.course);
      },
    );
  }

  void _reload() {
    setState(() {
      _courseFuture = context.read<StudentLmsController>().getCourse(
        widget.course,
      );
    });
  }

  Widget _details(Course course) {
    final enrolled =
        course.enrollmentId?.isNotEmpty == true || course.completedLessons > 0;
    final progress = course.lessons > 0
        ? (course.completedLessons / course.lessons).clamp(0.0, 1.0)
        : 0.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.tr('course.details')),
        actions: [
          IconButton(
            tooltip: context.l10n.tr('course.share'),
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: course.slug));
              if (mounted) _message(context.l10n.tr('course.slugCopied'));
            },
            icon: const AppIcon(HugeIcons.strokeRoundedShare01, size: 22),
          ),
          IconButton(
            tooltip: context.l10n.tr('course.save'),
            onPressed: () =>
                _message(context.l10n.tr('course.bookmarkMissing')),
            icon: AppIcon(
              AppIcons.bookmark,
              size: 22,
              strokeWidth: course.isBookmarked ? 2.4 : 1.8,
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppLayout.maxContentWidth,
            ),
            child: ListView(
              padding: const EdgeInsets.only(bottom: 128),
              children: [
                _CourseThumbnail(course: course),
                Padding(
                  padding: AppLayout.pagePadding(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: AppSpacing.xs,
                        runSpacing: AppSpacing.xs,
                        children: [
                          if (course.educationLevel.isNotEmpty)
                            _Tag(course.educationLevel),
                          if (course.subject.isNotEmpty) _Tag(course.subject),
                          if (course.language.isNotEmpty) _Tag(course.language),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Text(
                        course.title,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              height: 1.25,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      _Instructor(name: course.instructor),
                      const SizedBox(height: AppSpacing.lg),
                      _CourseStats(course: course),
                      if (enrolled && course.lessons > 0) ...[
                        const SizedBox(height: AppSpacing.lg),
                        Semantics(
                          label: _courseProgressLabel(
                            context,
                            course,
                            progress,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.pill),
                            child: LinearProgressIndicator(
                              value: progress,
                              minHeight: 8,
                            ),
                          ),
                        ),
                      ],
                      const SizedBox(height: AppSpacing.xl),
                      _SectionTitle(title: context.l10n.tr('course.about')),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        course.overview.isEmpty
                            ? _overviewUnavailableMessage(context)
                            : course.overview,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      Row(
                        children: [
                          Expanded(
                            child: _SectionTitle(
                              title: context.l10n.tr('course.curriculum'),
                            ),
                          ),
                          Text(
                            context.l10n.tr(
                              'course.lessonCount',
                              args: {
                                'count': context.l10n.number(course.lessons),
                              },
                            ),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      if (course.modules.isEmpty)
                        _CurriculumEmpty()
                      else
                        ...course.modules.asMap().entries.map((entry) {
                          final module = entry.value;
                          final expanded = _expandedModuleId == null
                              ? entry.key == 0
                              : _expandedModuleId == module.id;
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.sm,
                            ),
                            child: _CurriculumModule(
                              module: module,
                              expanded: expanded,
                              enrolled: enrolled,
                              onToggle: () => setState(
                                () => _expandedModuleId = expanded
                                    ? ''
                                    : module.id,
                              ),
                              onLesson: (lesson) =>
                                  _openLesson(course, lesson, enrolled),
                            ),
                          );
                        }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _CourseActionBar(
        course: course,
        enrolled: enrolled,
        loading: _isEnrolling,
        onPressed: () => _primaryAction(course, enrolled),
      ),
    );
  }

  Future<void> _primaryAction(Course course, bool enrolled) async {
    if (enrolled) {
      Navigator.pushNamed(context, AppRoutes.lesson, arguments: course);
      return;
    }
    if (!course.isFree) {
      Navigator.pushNamed(context, AppRoutes.payments, arguments: course);
      return;
    }
    setState(() => _isEnrolling = true);
    try {
      final controller = context.read<StudentLmsController>();
      final enrolledCourse = await controller.enroll(course);
      if (!mounted) return;
      _message(context.l10n.tr('course.enrolled'));
      Navigator.pushNamed(context, AppRoutes.lesson, arguments: enrolledCourse);
    } catch (_) {
      if (mounted) _message(_enrollmentFailureMessage(context));
    } finally {
      if (mounted) setState(() => _isEnrolling = false);
    }
  }

  void _openLesson(Course course, CourseLesson lesson, bool enrolled) {
    if (!lesson.isPublished) {
      _message(_lessonUnavailableMessage(context));
      return;
    }
    if (!enrolled && !lesson.isPreview) {
      _message(context.l10n.tr('course.enrollFirst'));
      return;
    }
    if (lesson.type == 'quiz' || lesson.type == 'assignment') {
      _message(
        context.l10n.tr('course.resourceMissing', args: {'type': lesson.type}),
      );
      return;
    }
    Navigator.pushNamed(
      context,
      AppRoutes.lesson,
      arguments: LessonRouteArguments(
        course: course,
        initialLessonId: lesson.id,
      ),
    );
  }

  void _message(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _CourseThumbnail extends StatelessWidget {
  const _CourseThumbnail({required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Semantics(
      label: course.title,
      image: true,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: colors.primaryContainer,
          child: Stack(
            children: [
              Center(
                child: AppIcon(
                  _subjectIcon(course.subject),
                  color: colors.onPrimaryContainer.withValues(alpha: .88),
                  size: 88,
                  strokeWidth: 1.3,
                ),
              ),
              Positioned(
                left: AppSpacing.lg,
                bottom: AppSpacing.lg,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppIcon(AppIcons.play, size: 19, color: colors.primary),
                        const SizedBox(width: AppSpacing.xs),
                        Text(
                          context.l10n.tr('course.previewLesson'),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(color: colors.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<List<dynamic>> _subjectIcon(String subject) =>
      switch (subject.toLowerCase()) {
        'physics' => AppIcons.physics,
        'chemistry' => AppIcons.chemistry,
        'biology' => AppIcons.biology,
        'english 1st paper' => AppIcons.translate,
        _ => AppIcons.book,
      };
}

class _Tag extends StatelessWidget {
  const _Tag(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: colors.secondaryContainer,
        borderRadius: BorderRadius.circular(AppRadius.sm),
      ),
      child: Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: colors.onSecondaryContainer),
      ),
    );
  }
}

class _Instructor extends StatelessWidget {
  const _Instructor({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final initial = name.trim().isEmpty ? '?' : name.trim().substring(0, 1);
    final colors = Theme.of(context).colorScheme;
    return Semantics(
      label: '${context.l10n.tr('course.teacher')}: $name',
      child: Row(
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: colors.primaryContainer,
            foregroundColor: colors.onPrimaryContainer,
            child: Text(initial),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.tr('course.teacher'),
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
                Text(name, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),
          AppIcon(AppIcons.verified, color: colors.secondary, size: 21),
        ],
      ),
    );
  }
}

class _CourseStats extends StatelessWidget {
  const _CourseStats({required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        border: Border.all(color: colors.outlineVariant),
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Row(
        children: [
          _Stat(
            icon: AppIcons.students,
            value: '${context.l10n.number(course.studentCount)}+',
            label: context.l10n.tr('course.students'),
          ),
          const SizedBox(height: 46, child: VerticalDivider(width: 1)),
          _Stat(
            icon: AppIcons.clock,
            value: course.duration,
            label: context.l10n.tr('course.duration'),
          ),
          const SizedBox(height: 46, child: VerticalDivider(width: 1)),
          _Stat(
            icon: AppIcons.analytics,
            value: context.l10n.number(course.rating),
            label: context.l10n.tr('course.rating'),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.icon, required this.value, required this.label});

  final List<List<dynamic>> icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Expanded(
      child: Semantics(
        label: '$label: $value',
        child: Column(
          children: [
            AppIcon(icon, size: 20, color: colors.primary),
            const SizedBox(height: AppSpacing.xs),
            Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: colors.onSurfaceVariant),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Text(
    title,
    style: Theme.of(
      context,
    ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
  );
}

class _CurriculumEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
    margin: EdgeInsets.zero,
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          AppIconBadge(icon: AppIcons.book, size: 44, iconSize: 21),
          const SizedBox(width: AppSpacing.sm),
          Expanded(child: Text(context.l10n.tr('course.curriculumEmpty'))),
        ],
      ),
    ),
  );
}

class _CurriculumModule extends StatelessWidget {
  const _CurriculumModule({
    required this.module,
    required this.expanded,
    required this.enrolled,
    required this.onToggle,
    required this.onLesson,
  });

  final CourseModule module;
  final bool expanded;
  final bool enrolled;
  final VoidCallback onToggle;
  final ValueChanged<CourseLesson> onLesson;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Semantics(
            button: true,
            expanded: expanded,
            child: ListTile(
              minVerticalPadding: AppSpacing.sm,
              onTap: onToggle,
              leading: AppIconBadge(
                icon: AppIcons.book,
                size: 42,
                iconSize: 20,
              ),
              title: Text(
                module.title,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                context.l10n.tr(
                  'course.lessonCount',
                  args: {'count': context.l10n.number(module.lessons.length)},
                ),
              ),
              trailing: AppIcon(
                expanded ? AppIcons.arrowDown : AppIcons.arrowRight,
                color: colors.onSurfaceVariant,
                size: 21,
              ),
            ),
          ),
          if (expanded) ...[
            const Divider(height: 1),
            ...module.lessons.map(
              (lesson) => _LessonTile(
                icon: _lessonIcon(lesson.type),
                title: lesson.title,
                meta: _lessonMeta(context, lesson),
                preview: lesson.isPreview,
                unlocked: enrolled || lesson.isPreview,
                published: lesson.isPublished,
                onTap: () => onLesson(lesson),
              ),
            ),
          ],
        ],
      ),
    );
  }

  List<List<dynamic>> _lessonIcon(String type) => switch (type) {
    'video' => AppIcons.play,
    'pdf' => AppIcons.book,
    'quiz' => AppIcons.quiz,
    'assignment' => AppIcons.assignment,
    'live' => AppIcons.live,
    _ => AppIcons.book,
  };

  String _lessonMeta(BuildContext context, CourseLesson lesson) {
    final duration = lesson.durationSeconds;
    final minutes = duration == null ? null : (duration / 60).ceil();
    final durationLabel = minutes == null
        ? ''
        : ' · ${context.l10n.tr('course.minutes', args: {'count': context.l10n.number(minutes)})}';
    return '${_lessonTypeLabel(context, lesson.type)}$durationLabel';
  }
}

class _LessonTile extends StatelessWidget {
  const _LessonTile({
    required this.icon,
    required this.title,
    required this.meta,
    required this.published,
    this.preview = false,
    this.unlocked = false,
    this.onTap,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String meta;
  final bool preview;
  final bool unlocked;
  final bool published;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isAvailable = published && unlocked;
    return Semantics(
      button: true,
      enabled: isAvailable,
      label: '$title, $meta',
      child: ListTile(
        enabled: published,
        onTap: onTap,
        leading: AppIcon(
          icon,
          color: published ? colors.primary : colors.onSurfaceVariant,
          size: 22,
        ),
        title: Text(title),
        subtitle: Text(meta),
        trailing: preview
            ? Text(
                context.l10n.tr('course.preview'),
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(color: colors.primary),
              )
            : isAvailable
            ? AppIcon(
                AppIcons.arrowRight,
                size: 19,
                color: colors.onSurfaceVariant,
              )
            : AppIcon(AppIcons.lock, size: 18, color: colors.onSurfaceVariant),
      ),
    );
  }
}

class _CourseActionBar extends StatelessWidget {
  const _CourseActionBar({
    required this.course,
    required this.enrolled,
    required this.loading,
    required this.onPressed,
  });

  final Course course;
  final bool enrolled;
  final bool loading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      top: false,
      child: Material(
        color: colors.surface,
        elevation: 8,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppLayout.maxContentWidth,
            ),
            child: Padding(
              padding: AppLayout.pagePadding(
                context,
              ).copyWith(top: AppSpacing.sm, bottom: AppSpacing.md),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final compact = constraints.maxWidth < 420;
                  final price = !enrolled
                      ? _PriceSummary(course: course)
                      : const SizedBox.shrink();
                  final action = FilledButton.icon(
                    onPressed: loading ? null : onPressed,
                    icon: loading
                        ? const SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.2,
                              color: Colors.white,
                            ),
                          )
                        : AppIcon(
                            enrolled ? AppIcons.play : AppIcons.lock,
                            size: 20,
                          ),
                    label: Text(
                      enrolled
                          ? context.l10n.tr('course.continue')
                          : course.isFree
                          ? context.l10n.tr('course.enrollFree')
                          : context.l10n.tr('course.buy'),
                    ),
                  );
                  if (enrolled) {
                    return SizedBox(width: double.infinity, child: action);
                  }
                  if (compact) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        price,
                        const SizedBox(height: AppSpacing.sm),
                        action,
                      ],
                    );
                  }
                  return Row(
                    children: [
                      price,
                      const SizedBox(width: AppSpacing.lg),
                      Expanded(child: action),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PriceSummary extends StatelessWidget {
  const _PriceSummary({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        context.l10n.tr('course.price'),
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      Text(
        course.displayPrice,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
      ),
    ],
  );
}

String _lessonTypeLabel(BuildContext context, String type) {
  return switch (type) {
    'video' => context.l10n.tr('lesson.type.video'),
    'pdf' => context.l10n.tr('lesson.type.pdf'),
    'quiz' => context.l10n.tr('lesson.type.quiz'),
    'assignment' => context.l10n.tr('lesson.type.assignment'),
    'live' => context.l10n.tr('lesson.type.live'),
    _ => context.l10n.tr('lesson.type.text'),
  };
}

String _loadFailureMessage(BuildContext context) =>
    context.l10n.tr('course.loadFailed');

String _overviewUnavailableMessage(BuildContext context) =>
    context.l10n.tr('course.overviewUnavailable');

String _enrollmentFailureMessage(BuildContext context) =>
    context.l10n.tr('course.enrollmentFailed');

String _lessonUnavailableMessage(BuildContext context) =>
    context.l10n.tr('course.lessonUnavailable');

String _courseProgressLabel(
  BuildContext context,
  Course course,
  double progress,
) {
  final completed = context.l10n.number(course.completedLessons);
  final total = context.l10n.number(course.lessons);
  final percent = context.l10n.percent((progress * 100).round());
  return context.l10n.tr(
    'course.progressSemantics',
    args: {'completed': completed, 'total': total, 'percent': percent},
  );
}
