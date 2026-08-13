import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/notifications/data/notification_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:edtech_application/shared/state/safe_change_notifier.dart';

class NotificationController extends ChangeNotifier with SafeChangeNotifier {
  NotificationController({required NotificationRepository repository})
    : _repository = repository;
  final NotificationRepository _repository;

  List<NotificationDto> items = const [];
  int unreadCount = 0;
  bool loading = false;
  String? error;

  Future<void> load() async {
    if (loading) return;
    loading = true;
    error = null;
    notifyListeners();
    try {
      final values = await Future.wait<Object>([
        _repository.list(),
        _repository.unreadCount(),
      ]);
      items = values[0] as List<NotificationDto>;
      unreadCount = values[1] as int;
    } on AppException catch (exception) {
      error = exception.message;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> markRead(String id) async {
    await _repository.markRead(id);
    items = items
        .map(
          (item) => item.id == id
              ? item.copyWith(readAt: DateTime.now().toUtc())
              : item,
        )
        .toList();
    unreadCount = items.where((item) => item.readAt == null).length;
    notifyListeners();
  }

  Future<void> markAllRead() async {
    await _repository.markAllRead();
    items = items
        .map((item) => item.copyWith(readAt: DateTime.now().toUtc()))
        .toList();
    unreadCount = 0;
    notifyListeners();
  }
}
