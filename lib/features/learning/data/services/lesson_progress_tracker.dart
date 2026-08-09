import 'dart:async';

typedef ProgressReporter =
    Future<void> Function({
      required int positionSeconds,
      required int watchedSecondsDelta,
    });

/// Batches lesson progress while guaranteeing the backend delta never exceeds
/// the documented 120-second limit.
class LessonProgressTracker {
  LessonProgressTracker({required ProgressReporter reporter})
    : _reporter = reporter;

  final ProgressReporter _reporter;
  Timer? _timer;
  int _lastReportedPosition = 0;

  void start(int Function() currentPosition) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 45), (_) {
      report(currentPosition());
    });
  }

  Future<void> report(int positionSeconds) async {
    final delta = (positionSeconds - _lastReportedPosition).clamp(0, 120);
    await _reporter(
      positionSeconds: positionSeconds,
      watchedSecondsDelta: delta,
    );
    _lastReportedPosition = positionSeconds;
  }

  Future<void> stop(int positionSeconds) async {
    _timer?.cancel();
    _timer = null;
    await report(positionSeconds);
  }

  void reset([int positionSeconds = 0]) {
    _lastReportedPosition = positionSeconds;
  }

  void dispose() {
    _timer?.cancel();
  }
}
