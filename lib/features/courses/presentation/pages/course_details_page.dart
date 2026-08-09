import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            body: const Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: Text(context.l10n.tr('course.details'))),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.cloud_off_rounded, size: 56),
                    const SizedBox(height: 12),
                    Text('${snapshot.error}', textAlign: TextAlign.center),
                    const SizedBox(height: 16),
                    FilledButton.tonal(
                      onPressed: () => setState(() {
                        _courseFuture = context
                            .read<StudentLmsController>()
                            .getCourse(widget.course);
                      }),
                      child: Text(context.l10n.tr('common.retry')),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return _details(snapshot.data ?? widget.course);
      },
    );
  }

  Widget _details(Course course) {
    final enrolled =
        course.enrollmentId?.isNotEmpty == true || course.completedLessons > 0;

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
            icon: const Icon(Icons.ios_share_rounded),
          ),
          IconButton(
            tooltip: context.l10n.tr('course.save'),
            onPressed: () =>
                _message(context.l10n.tr('course.bookmarkMissing')),
            icon: Icon(
              course.isBookmarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 116),
        children: [
          _CourseThumbnail(course: course),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _Tag(course.educationLevel),
                    _Tag(course.subject),
                    _Tag(course.language),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  course.title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    height: 1.35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 16),
                _Instructor(name: course.instructor),
                const SizedBox(height: 18),
                _CourseStats(course: course),
                const SizedBox(height: 24),
                _SectionTitle(title: context.l10n.tr('course.about')),
                const SizedBox(height: 10),
                Text(
                  course.overview,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),
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
                        args: {'count': context.l10n.number(course.lessons)},
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (course.modules.isEmpty)
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.menu_book_outlined),
                      title: Text(context.l10n.tr('course.curriculumEmpty')),
                    ),
                  )
                else
                  ...course.modules.asMap().entries.map((entry) {
                    final module = entry.value;
                    final expanded = _expandedModuleId == null
                        ? entry.key == 0
                        : _expandedModuleId == module.id;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: _CurriculumModule(
                        module: module,
                        expanded: expanded,
                        enrolled: enrolled,
                        onToggle: () => setState(
                          () => _expandedModuleId = expanded ? '' : module.id,
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
      bottomSheet: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              if (!enrolled) ...[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.tr('course.price'),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      course.displayPrice,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 18),
              ],
              Expanded(
                child: FilledButton.icon(
                  onPressed: _isEnrolling
                      ? null
                      : () => _primaryAction(course, enrolled),
                  icon: Icon(
                    enrolled
                        ? Icons.play_arrow_rounded
                        : Icons.lock_open_rounded,
                  ),
                  label: _isEnrolling
                      ? const SizedBox.square(
                          dimension: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          enrolled
                              ? context.l10n.tr('course.continue')
                              : course.isFree
                              ? context.l10n.tr('course.enrollFree')
                              : context.l10n.tr('course.buy'),
                        ),
                ),
              ),
            ],
          ),
        ),
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
    } catch (error) {
      if (mounted) _message('$error');
    } finally {
      if (mounted) setState(() => _isEnrolling = false);
    }
  }

  void _openLesson(Course course, CourseLesson lesson, bool enrolled) {
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
    Navigator.pushNamed(context, AppRoutes.lesson, arguments: course);
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
    final color = colors.primaryContainer;
    final foreground = colors.onPrimaryContainer;
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: color,
        child: Stack(
          children: [
            Center(
              child: Icon(
                _subjectIcon(course.subject),
                color: foreground.withValues(alpha: .9),
                size: 92,
              ),
            ),
            Positioned(
              left: 18,
              bottom: 18,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_circle_outline_rounded,
                      size: 19,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      context.l10n.tr('course.previewLesson'),
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _subjectIcon(String subject) {
    return switch (subject.toLowerCase()) {
      'physics' => Icons.science_rounded,
      'chemistry' => Icons.biotech_rounded,
      'biology' => Icons.eco_rounded,
      'english 1st paper' => Icons.translate_rounded,
      _ => Icons.auto_stories_rounded,
    };
  }
}

class _Tag extends StatelessWidget {
  const _Tag(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _Instructor extends StatelessWidget {
  const _Instructor({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          child: Text(name.substring(0, 1)),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.tr('course.teacher'),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 12,
                ),
              ),
              Text(name, style: const TextStyle(fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        Icon(
          Icons.verified_rounded,
          color: Theme.of(context).colorScheme.secondary,
          size: 20,
        ),
      ],
    );
  }
}

class _CourseStats extends StatelessWidget {
  const _CourseStats({required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _Stat(
            icon: Icons.groups_2_outlined,
            value: '${context.l10n.number(course.studentCount)}+',
            label: context.l10n.tr('course.students'),
          ),
          const SizedBox(height: 42, child: VerticalDivider(width: 1)),
          _Stat(
            icon: Icons.schedule_outlined,
            value: course.duration,
            label: context.l10n.tr('course.duration'),
          ),
          const SizedBox(height: 42, child: VerticalDivider(width: 1)),
          _Stat(
            icon: Icons.star_rounded,
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

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, size: 20, color: AppColors.primary),
          const SizedBox(height: 5),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
          ),
          Text(
            label,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }
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
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          ListTile(
            onTap: onToggle,
            title: Text(
              module.title,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              context.l10n.tr(
                'course.lessonCount',
                args: {'count': context.l10n.number(module.lessons.length)},
              ),
            ),
            trailing: Icon(
              expanded
                  ? Icons.keyboard_arrow_up_rounded
                  : Icons.keyboard_arrow_down_rounded,
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
                onTap: () => onLesson(lesson),
              ),
            ),
          ],
        ],
      ),
    );
  }

  IconData _lessonIcon(String type) => switch (type) {
    'video' => Icons.play_circle_outline_rounded,
    'pdf' => Icons.picture_as_pdf_outlined,
    'quiz' => Icons.quiz_outlined,
    'assignment' => Icons.assignment_outlined,
    'live' => Icons.videocam_outlined,
    _ => Icons.article_outlined,
  };

  String _lessonMeta(BuildContext context, CourseLesson lesson) {
    final duration = lesson.durationSeconds;
    final minutes = duration == null ? null : (duration / 60).ceil();
    final durationLabel = minutes == null
        ? ''
        : ' • ${context.l10n.tr('course.minutes', args: {'count': context.l10n.number(minutes)})}';
    return '${lesson.type.toUpperCase()}$durationLabel';
  }
}

class _LessonTile extends StatelessWidget {
  const _LessonTile({
    required this.icon,
    required this.title,
    required this.meta,
    this.preview = false,
    this.unlocked = false,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String meta;
  final bool preview;
  final bool unlocked;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: AppColors.primary),
      title: Text(title),
      subtitle: Text(meta),
      trailing: preview
          ? Text(
              context.l10n.tr('course.preview'),
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            )
          : unlocked
          ? const Icon(Icons.chevron_right_rounded, size: 18)
          : const Icon(Icons.lock_outline_rounded, size: 18),
    );
  }
}
