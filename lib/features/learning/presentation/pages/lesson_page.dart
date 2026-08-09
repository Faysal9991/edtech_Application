import 'dart:async';

import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/learning/data/services/lesson_progress_tracker.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({required this.course, super.key});

  final Course course;

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> with WidgetsBindingObserver {
  late final List<CourseLesson> _lessons;
  late final LessonProgressTracker _progressTracker;
  CourseLesson? _selectedLesson;
  VideoPlayerController? _videoController;
  int _positionSeconds = 0;
  bool _isPlaying = false;
  bool _openingMedia = false;
  bool _preparingVideo = false;
  String? _mediaError;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _lessons = widget.course.modules
        .expand((module) => module.lessons)
        .where((lesson) => lesson.isPublished)
        .toList();
    _selectedLesson = _lessons.isEmpty ? null : _lessons.first;
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

  Widget _emptyCurriculum() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.menu_book_outlined, size: 58),
            const SizedBox(height: 12),
            Text(context.l10n.tr('lesson.noPublished')),
          ],
        ),
      ),
    );
  }

  Widget _lessonBody(CourseLesson lesson) {
    final video = _videoController;
    final videoReady =
        video != null && video.value.isInitialized && lesson.type == 'video';
    final totalSeconds = videoReady
        ? video.value.duration.inSeconds.clamp(1, 86400)
        : (lesson.durationSeconds ?? 1);
    final progress = (_positionSeconds / totalSeconds).clamp(0.0, 1.0);
    return ListView(
      padding: const EdgeInsets.only(bottom: 28),
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ColoredBox(
            color: Color(widget.course.colorValue),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (videoReady)
                  Center(
                    child: AspectRatio(
                      aspectRatio: video.value.aspectRatio,
                      child: VideoPlayer(video),
                    ),
                  ),
                if (_preparingVideo)
                  const CircularProgressIndicator(color: Colors.white)
                else
                  IconButton.filled(
                    tooltip: _isPlaying
                        ? context.l10n.tr('lesson.pause')
                        : context.l10n.tr('lesson.play'),
                    onPressed: videoReady ? _togglePlayback : null,
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.primary,
                      fixedSize: const Size(68, 68),
                    ),
                    iconSize: 34,
                    icon: Icon(_mediaIcon(lesson.type, playing: _isPlaying)),
                  ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 12,
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: progress,
                        color: AppColors.white,
                        backgroundColor: AppColors.white.withValues(alpha: .3),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            _time(_positionSeconds),
                            style: const TextStyle(color: Colors.white),
                          ),
                          const Spacer(),
                          Text(
                            _time(totalSeconds),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lesson.type.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                lesson.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              if (lesson.description.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(lesson.description),
              ],
              if (_mediaError != null) ...[
                const SizedBox(height: 10),
                Text(
                  _mediaError!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
              if (lesson.mediaAssetId == null &&
                  (lesson.type == 'video' || lesson.type == 'pdf')) ...[
                const SizedBox(height: 10),
                Text(
                  context.l10n.tr('lesson.mediaMissing'),
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
              ],
              if (lesson.body?.isNotEmpty == true) ...[
                const SizedBox(height: 18),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Text(lesson.body!),
                  ),
                ),
              ],
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: lesson.mediaAssetId == null || _openingMedia
                          ? null
                          : () => _openMedia(lesson),
                      icon: _openingMedia
                          ? const SizedBox.square(
                              dimension: 17,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.open_in_new_rounded),
                      label: Text(context.l10n.tr('lesson.openMedia')),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FilledButton.tonalIcon(
                      onPressed: widget.course.enrollmentId == null
                          ? null
                          : () => _completeLesson(lesson),
                      icon: const Icon(Icons.task_alt_rounded),
                      label: Text(context.l10n.tr('lesson.complete')),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Text(
                context.l10n.tr('lesson.courseContent'),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Card(
                margin: EdgeInsets.zero,
                child: Column(
                  children: _lessons.asMap().entries.map((entry) {
                    final item = entry.value;
                    return Column(
                      children: [
                        if (entry.key > 0) const Divider(height: 1, indent: 58),
                        ListTile(
                          selected: item.id == lesson.id,
                          selectedTileColor: AppColors.green50,
                          onTap: () => _selectLesson(item),
                          leading: Icon(
                            _mediaIcon(item.type),
                            color: AppColors.primary,
                          ),
                          title: Text(item.title),
                          subtitle: Text(item.type.toUpperCase()),
                          trailing: item.isPreview
                              ? Text(
                                  context.l10n.tr('lesson.preview'),
                                  style: const TextStyle(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              : null,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _openMedia(CourseLesson lesson) async {
    final repository = context.read<StudentLmsRepository?>();
    final assetId = lesson.mediaAssetId;
    if (repository == null || assetId == null) return;
    setState(() => _openingMedia = true);
    try {
      final url = await repository.getMediaAccessUrl(assetId);
      final opened = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!opened) throw Exception('Media URL open failed');
    } catch (error) {
      if (mounted) _message('$error');
    } finally {
      if (mounted) setState(() => _openingMedia = false);
    }
  }

  Future<void> _completeLesson(CourseLesson lesson) async {
    final repository = context.read<StudentLmsRepository?>();
    final enrollmentId = widget.course.enrollmentId;
    if (repository == null || enrollmentId == null) return;
    try {
      await repository.updateProgress(
        enrollmentId: enrollmentId,
        lessonId: lesson.id,
        positionSeconds: _positionSeconds,
        watchedSecondsDelta: 0,
        manualComplete: true,
      );
      if (mounted) _message(context.l10n.tr('lesson.completed'));
    } catch (error) {
      if (mounted) _message('$error');
    }
  }

  Future<void> _selectLesson(CourseLesson lesson) async {
    await _videoController?.pause();
    await _safeReport();
    if (!mounted) return;
    _progressTracker.reset();
    setState(() {
      _selectedLesson = lesson;
      _positionSeconds = 0;
      _isPlaying = false;
      _mediaError = null;
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
    if (mounted) setState(() => _isPlaying = controller.value.isPlaying);
  }

  Future<void> _prepareVideo(CourseLesson lesson) async {
    final repository = context.read<StudentLmsRepository?>();
    final previous = _videoController;
    _videoController = null;
    await previous?.dispose();
    if (lesson.type != 'video' || lesson.mediaAssetId == null) {
      if (mounted) setState(() => _preparingVideo = false);
      return;
    }
    if (repository == null) return;
    setState(() {
      _preparingVideo = true;
      _mediaError = null;
    });
    try {
      final url = await repository.getMediaAccessUrl(lesson.mediaAssetId!);
      final controller = VideoPlayerController.networkUrl(url);
      await controller.initialize();
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
      if (!mounted || _selectedLesson?.id != lesson.id) {
        await controller.dispose();
        return;
      }
      setState(() => _videoController = controller);
    } catch (error) {
      if (mounted) setState(() => _mediaError = '$error');
    } finally {
      if (mounted) setState(() => _preparingVideo = false);
    }
  }

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

  IconData _mediaIcon(String type, {bool playing = false}) => switch (type) {
    'video' => playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
    'pdf' => Icons.picture_as_pdf_outlined,
    'quiz' => Icons.quiz_outlined,
    'assignment' => Icons.assignment_outlined,
    'live' => Icons.videocam_outlined,
    _ => Icons.article_outlined,
  };

  String _time(int seconds) {
    final minute = (seconds ~/ 60).toString().padLeft(2, '0');
    final second = (seconds % 60).toString().padLeft(2, '0');
    return '$minute:$second';
  }

  void _message(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
