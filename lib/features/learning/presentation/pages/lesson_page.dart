import 'dart:async';

import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/learning/data/services/lesson_progress_tracker.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class LessonRouteArguments {
  const LessonRouteArguments({required this.course, this.initialLessonId});

  final Course course;
  final String? initialLessonId;
}

class LessonPage extends StatefulWidget {
  const LessonPage({required this.course, this.initialLessonId, super.key});

  final Course course;
  final String? initialLessonId;

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> with WidgetsBindingObserver {
  late final List<CourseLesson> _lessons;
  late final LessonProgressTracker _progressTracker;
  CourseLesson? _selectedLesson;
  VideoPlayerController? _videoController;
  int _positionSeconds = 0;
  int _mediaRequestGeneration = 0;
  bool _isPlaying = false;
  bool _openingMedia = false;
  bool _preparingVideo = false;
  bool _isCompleting = false;
  String? _mediaError;
  String? _feedbackMessage;
  AppStateTone _feedbackTone = AppStateTone.info;
  final Set<String> _completedLessonIds = <String>{};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _lessons = widget.course.modules
        .expand((module) => module.lessons)
        .where((lesson) => lesson.isPublished)
        .toList();
    _selectedLesson = _initialLesson();
    final repository = context.read<StudentLmsRepository?>();
    _progressTracker = LessonProgressTracker(
      reporter:
          ({required positionSeconds, required watchedSecondsDelta}) async {
            final lesson = _selectedLesson;
            final enrollmentId = widget.course.enrollmentId;
            if (repository == null || lesson == null || enrollmentId == null) {
              return;
            }
            await repository.updateProgress(
              enrollmentId: enrollmentId,
              lessonId: lesson.id,
              positionSeconds: positionSeconds,
              watchedSecondsDelta: watchedSecondsDelta,
            );
          },
    );
    if (_selectedLesson != null && widget.course.enrollmentId != null) {
      _progressTracker.start(() => _positionSeconds);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final lesson = _selectedLesson;
      if (mounted && lesson != null) unawaited(_prepareVideo(lesson));
    });
  }

  CourseLesson? _initialLesson() {
    if (_lessons.isEmpty) return null;
    final requestedId = widget.initialLessonId;
    if (requestedId != null) {
      for (final lesson in _lessons) {
        if (lesson.id == requestedId) return lesson;
      }
    }
    return _lessons.first;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      unawaited(_videoController?.pause());
      unawaited(_safeReport());
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _mediaRequestGeneration++;
    _videoController?.dispose();
    unawaited(_safeStop());
    _progressTracker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lesson = _selectedLesson;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.course.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: lesson == null ? _emptyCurriculum() : _lessonBody(lesson),
    );
  }

  Widget _emptyCurriculum() => Center(
    child: AppStateView(
      icon: AppIcons.book,
      title: context.l10n.tr('lesson.courseContent'),
      message: context.l10n.tr('lesson.noPublished'),
    ),
  );

  Widget _lessonBody(CourseLesson lesson) {
    final video = _videoController;
    final videoReady =
        video != null && video.value.isInitialized && lesson.type == 'video';
    final totalSeconds = videoReady
        ? video.value.duration.inSeconds.clamp(1, 86400)
        : (lesson.durationSeconds ?? 1);
    final progress = (_positionSeconds / totalSeconds).clamp(0.0, 1.0);

    return SafeArea(
      top: false,
      bottom: false,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppLayout.maxContentWidth,
          ),
          child: ListView(
            padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
            children: [
              _LessonStage(
                lesson: lesson,
                video: video,
                videoReady: videoReady,
                preparing: _preparingVideo,
                isPlaying: _isPlaying,
                positionSeconds: _positionSeconds,
                totalSeconds: totalSeconds,
                progress: progress,
                onPlayPause: _togglePlayback,
                typeLabel: _lessonTypeLabel(context, lesson.type),
                timeLabel: _time,
              ),
              Padding(
                padding: AppLayout.pagePadding(context),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: AppLayout.maxReadingWidth,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _TypeChip(type: lesson.type),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        lesson.title,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.w800,
                              height: 1.25,
                            ),
                      ),
                      if (lesson.description.isNotEmpty) ...[
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          lesson.description,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                height: 1.55,
                              ),
                        ),
                      ],
                      if (_feedbackMessage != null) ...[
                        const SizedBox(height: AppSpacing.md),
                        AppStatusBanner(
                          message: _feedbackMessage!,
                          tone: _feedbackTone,
                          icon: _feedbackTone == AppStateTone.success
                              ? AppIcons.check
                              : AppIcons.warning,
                        ),
                      ],
                      if (_mediaError != null) ...[
                        const SizedBox(height: AppSpacing.md),
                        AppStatusBanner(
                          message: _mediaError!,
                          tone: AppStateTone.error,
                          icon: AppIcons.cloudOff,
                        ),
                      ],
                      if (lesson.mediaAssetId == null &&
                          (lesson.type == 'video' || lesson.type == 'pdf')) ...[
                        const SizedBox(height: AppSpacing.md),
                        AppStatusBanner(
                          message: _mediaUnavailableMessage(context),
                          tone: AppStateTone.warning,
                          icon: AppIcons.warning,
                        ),
                      ],
                      if (lesson.body?.isNotEmpty == true) ...[
                        const SizedBox(height: AppSpacing.xl),
                        Semantics(
                          label: lesson.title,
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: Padding(
                              padding: const EdgeInsets.all(AppSpacing.lg),
                              child: SelectableText(
                                lesson.body!,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(height: 1.65),
                              ),
                            ),
                          ),
                        ),
                      ],
                      if (lesson.mediaAssetId != null ||
                          widget.course.enrollmentId != null) ...[
                        const SizedBox(height: AppSpacing.lg),
                        _LessonActions(
                          showMedia: lesson.mediaAssetId != null,
                          openingMedia: _openingMedia,
                          canComplete: widget.course.enrollmentId != null,
                          completing: _isCompleting,
                          completed: _completedLessonIds.contains(lesson.id),
                          onOpenMedia: () => _openMedia(lesson),
                          onComplete: () => _completeLesson(lesson),
                        ),
                      ],
                      const SizedBox(height: AppSpacing.xxl),
                      Text(
                        context.l10n.tr('lesson.courseContent'),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      _CourseContentList(
                        lessons: _lessons,
                        selectedLessonId: lesson.id,
                        onSelect: _selectLesson,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openMedia(CourseLesson lesson) async {
    final repository = context.read<StudentLmsRepository?>();
    final assetId = lesson.mediaAssetId;
    if (repository == null || assetId == null || _openingMedia) return;
    setState(() {
      _openingMedia = true;
      _feedbackMessage = null;
    });
    try {
      final url = await repository.getMediaAccessUrl(assetId);
      final opened = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!opened) throw StateError('media launch unavailable');
    } catch (_) {
      if (mounted) {
        setState(() {
          _feedbackMessage = _mediaOpenFailureMessage(context);
          _feedbackTone = AppStateTone.error;
        });
      }
    } finally {
      if (mounted) setState(() => _openingMedia = false);
    }
  }

  Future<void> _completeLesson(CourseLesson lesson) async {
    final repository = context.read<StudentLmsRepository?>();
    final enrollmentId = widget.course.enrollmentId;
    if (repository == null ||
        enrollmentId == null ||
        _isCompleting ||
        _completedLessonIds.contains(lesson.id)) {
      return;
    }
    setState(() {
      _isCompleting = true;
      _feedbackMessage = null;
    });
    try {
      await repository.updateProgress(
        enrollmentId: enrollmentId,
        lessonId: lesson.id,
        positionSeconds: _positionSeconds,
        watchedSecondsDelta: 0,
        manualComplete: true,
      );
      if (mounted) {
        setState(() {
          _completedLessonIds.add(lesson.id);
          _feedbackMessage = context.l10n.tr('lesson.completed');
          _feedbackTone = AppStateTone.success;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _feedbackMessage = _completionFailureMessage(context);
          _feedbackTone = AppStateTone.error;
        });
      }
    } finally {
      if (mounted) setState(() => _isCompleting = false);
    }
  }

  Future<void> _selectLesson(CourseLesson lesson) async {
    if (_selectedLesson?.id == lesson.id) return;
    await _videoController?.pause();
    await _safeReport();
    if (!mounted) return;
    _progressTracker.reset();
    setState(() {
      _selectedLesson = lesson;
      _positionSeconds = 0;
      _isPlaying = false;
      _mediaError = null;
      _feedbackMessage = null;
    });
    await _prepareVideo(lesson);
  }

  Future<void> _togglePlayback() async {
    final controller = _videoController;
    if (controller == null || !controller.value.isInitialized) return;
    if (controller.value.isPlaying) {
      await controller.pause();
      await _safeReport();
    } else {
      await controller.play();
    }
    if (mounted && identical(_videoController, controller)) {
      setState(() => _isPlaying = controller.value.isPlaying);
    }
  }

  Future<void> _prepareVideo(CourseLesson lesson) async {
    final request = ++_mediaRequestGeneration;
    final repository = context.read<StudentLmsRepository?>();
    final previous = _videoController;
    _videoController = null;
    await previous?.dispose();
    if (!_isCurrentMediaRequest(request, lesson)) return;
    if (lesson.type != 'video' || lesson.mediaAssetId == null) {
      if (mounted) setState(() => _preparingVideo = false);
      return;
    }
    if (repository == null) {
      if (mounted) {
        setState(() => _mediaError = _mediaUnavailableMessage(context));
      }
      return;
    }
    setState(() {
      _preparingVideo = true;
      _mediaError = null;
    });
    try {
      final playback = await repository.getMediaPlayback(lesson.mediaAssetId!);
      final url = Uri.tryParse(playback.url);
      if (url == null || !url.hasScheme) {
        throw const FormatException('Invalid playback URL');
      }
      final controller = VideoPlayerController.networkUrl(url);
      await controller.initialize();
      if (!_isCurrentMediaRequest(request, lesson)) {
        await controller.dispose();
        return;
      }
      controller.addListener(() {
        if (!mounted || !identical(_videoController, controller)) return;
        final position = controller.value.position.inSeconds;
        final playing = controller.value.isPlaying;
        if (position != _positionSeconds || playing != _isPlaying) {
          setState(() {
            _positionSeconds = position;
            _isPlaying = playing;
          });
        }
      });
      setState(() => _videoController = controller);
    } catch (_) {
      if (mounted && _isCurrentMediaRequest(request, lesson)) {
        setState(() => _mediaError = _mediaLoadFailureMessage(context));
      }
    } finally {
      if (mounted && _isCurrentMediaRequest(request, lesson)) {
        setState(() => _preparingVideo = false);
      }
    }
  }

  bool _isCurrentMediaRequest(int request, CourseLesson lesson) =>
      mounted &&
      request == _mediaRequestGeneration &&
      _selectedLesson?.id == lesson.id;

  Future<void> _safeReport() async {
    try {
      await _progressTracker.report(_positionSeconds);
    } catch (_) {
      // Progress is retried on the next scheduled report or lifecycle event.
    }
  }

  Future<void> _safeStop() async {
    try {
      await _progressTracker.stop(_positionSeconds);
    } catch (_) {
      // Disposal must never surface an asynchronous network error.
    }
  }

  String _time(int seconds) {
    final minute = (seconds ~/ 60).toString().padLeft(2, '0');
    final second = (seconds % 60).toString().padLeft(2, '0');
    return '$minute:$second';
  }
}

class _LessonStage extends StatelessWidget {
  const _LessonStage({
    required this.lesson,
    required this.video,
    required this.videoReady,
    required this.preparing,
    required this.isPlaying,
    required this.positionSeconds,
    required this.totalSeconds,
    required this.progress,
    required this.onPlayPause,
    required this.typeLabel,
    required this.timeLabel,
  });

  final CourseLesson lesson;
  final VideoPlayerController? video;
  final bool videoReady;
  final bool preparing;
  final bool isPlaying;
  final int positionSeconds;
  final int totalSeconds;
  final double progress;
  final VoidCallback onPlayPause;
  final String typeLabel;
  final String Function(int seconds) timeLabel;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isVideo = lesson.type == 'video';
    return Semantics(
      label: '$typeLabel: ${lesson.title}',
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ColoredBox(
          color: colors.inverseSurface,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (videoReady)
                Center(
                  child: AspectRatio(
                    aspectRatio: video!.value.aspectRatio,
                    child: VideoPlayer(video!),
                  ),
                )
              else
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIcon(
                      _lessonIcon(lesson.type),
                      color: colors.onInverseSurface.withValues(alpha: .9),
                      size: 54,
                      strokeWidth: 1.4,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      typeLabel,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: colors.onInverseSurface,
                      ),
                    ),
                  ],
                ),
              if (preparing)
                CircularProgressIndicator(color: colors.onInverseSurface)
              else if (isVideo)
                IconButton.filled(
                  tooltip: isPlaying
                      ? context.l10n.tr('lesson.pause')
                      : context.l10n.tr('lesson.play'),
                  onPressed: videoReady ? onPlayPause : null,
                  style: IconButton.styleFrom(
                    backgroundColor: colors.surface,
                    foregroundColor: colors.primary,
                    fixedSize: const Size(64, 64),
                  ),
                  icon: isPlaying
                      ? const AppIcon(HugeIcons.strokeRoundedPause, size: 30)
                      : const AppIcon(AppIcons.play, size: 30),
                ),
              if (isVideo)
                Positioned(
                  left: AppSpacing.md,
                  right: AppSpacing.md,
                  bottom: AppSpacing.sm,
                  child: Semantics(
                    label: _progressLabel(context, progress),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppRadius.pill),
                          child: LinearProgressIndicator(
                            value: progress,
                            minHeight: 5,
                            color: colors.onInverseSurface,
                            backgroundColor: colors.onInverseSurface.withValues(
                              alpha: .28,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xxs),
                        Row(
                          children: [
                            Text(
                              timeLabel(positionSeconds),
                              style: TextStyle(color: colors.onInverseSurface),
                            ),
                            const Spacer(),
                            Text(
                              timeLabel(totalSeconds),
                              style: TextStyle(color: colors.onInverseSurface),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TypeChip extends StatelessWidget {
  const _TypeChip({required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(
            _lessonIcon(type),
            size: 17,
            color: colors.onPrimaryContainer,
          ),
          const SizedBox(width: AppSpacing.xs),
          Text(
            _lessonTypeLabel(context, type),
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(color: colors.onPrimaryContainer),
          ),
        ],
      ),
    );
  }
}

class _LessonActions extends StatelessWidget {
  const _LessonActions({
    required this.showMedia,
    required this.openingMedia,
    required this.canComplete,
    required this.completing,
    required this.completed,
    required this.onOpenMedia,
    required this.onComplete,
  });

  final bool showMedia;
  final bool openingMedia;
  final bool canComplete;
  final bool completing;
  final bool completed;
  final VoidCallback onOpenMedia;
  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    final openMedia = OutlinedButton.icon(
      onPressed: openingMedia ? null : onOpenMedia,
      icon: openingMedia
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const AppIcon(AppIcons.arrowRight, size: 19),
      label: Text(context.l10n.tr('lesson.openMedia')),
    );
    final complete = FilledButton.tonalIcon(
      onPressed: completing || completed ? null : onComplete,
      icon: completing
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const AppIcon(AppIcons.check, size: 19),
      label: Text(
        completed
            ? context.l10n.tr('lesson.completed')
            : context.l10n.tr('lesson.complete'),
      ),
    );
    if (!showMedia) return SizedBox(width: double.infinity, child: complete);
    if (!canComplete) return SizedBox(width: double.infinity, child: openMedia);
    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth < 460
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                openMedia,
                const SizedBox(height: AppSpacing.sm),
                complete,
              ],
            )
          : Row(
              children: [
                Expanded(child: openMedia),
                const SizedBox(width: AppSpacing.sm),
                Expanded(child: complete),
              ],
            ),
    );
  }
}

class _CourseContentList extends StatelessWidget {
  const _CourseContentList({
    required this.lessons,
    required this.selectedLessonId,
    required this.onSelect,
  });

  final List<CourseLesson> lessons;
  final String selectedLessonId;
  final ValueChanged<CourseLesson> onSelect;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: lessons.asMap().entries.map((entry) {
          final item = entry.value;
          final selected = item.id == selectedLessonId;
          return Column(
            children: [
              if (entry.key > 0) const Divider(height: 1, indent: 62),
              Semantics(
                selected: selected,
                button: true,
                label: '${_lessonTypeLabel(context, item.type)}: ${item.title}',
                child: ListTile(
                  selected: selected,
                  selectedTileColor: colors.primaryContainer,
                  onTap: () => onSelect(item),
                  leading: AppIconBadge(
                    icon: _lessonIcon(item.type),
                    size: 42,
                    iconSize: 20,
                    backgroundColor: selected
                        ? colors.surface
                        : colors.surfaceContainerHighest,
                  ),
                  title: Text(
                    item.title,
                    style: selected
                        ? Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                          )
                        : null,
                  ),
                  subtitle: Text(_lessonTypeLabel(context, item.type)),
                  trailing: selected
                      ? AppIcon(AppIcons.check, size: 20, color: colors.primary)
                      : item.isPreview
                      ? Text(
                          context.l10n.tr('lesson.preview'),
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(color: colors.primary),
                        )
                      : AppIcon(
                          AppIcons.arrowRight,
                          size: 19,
                          color: colors.onSurfaceVariant,
                        ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

List<List<dynamic>> _lessonIcon(String type) => switch (type) {
  'video' => AppIcons.play,
  'pdf' => AppIcons.book,
  'quiz' => AppIcons.quiz,
  'assignment' => AppIcons.assignment,
  'live' => AppIcons.live,
  _ => AppIcons.book,
};

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

String _progressLabel(BuildContext context, double progress) {
  final percent = context.l10n.percent((progress * 100).round());
  return context.l10n.tr('lesson.videoProgress', args: {'percent': percent});
}

String _mediaUnavailableMessage(BuildContext context) =>
    context.l10n.tr('lesson.mediaUnavailable');

String _mediaLoadFailureMessage(BuildContext context) =>
    context.l10n.tr('lesson.mediaLoadFailed');

String _mediaOpenFailureMessage(BuildContext context) =>
    context.l10n.tr('lesson.mediaOpenFailed');

String _completionFailureMessage(BuildContext context) =>
    context.l10n.tr('lesson.completionFailed');
