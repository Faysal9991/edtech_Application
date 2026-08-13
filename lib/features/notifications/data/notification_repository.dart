import 'package:dio/dio.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/network/api_service.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';

class NotificationRepository {
  const NotificationRepository({required ApiService api}) : _api = api;
  final ApiService _api;

  Future<List<NotificationDto>> list() => _guard(() async {
    final result = <NotificationDto>[];
    final seen = <String>{};
    String? cursor;
    do {
      final page = await _api.getNotifications(cursor, 100);
      result.addAll(page.items.map(NotificationDto.fromJson));
      cursor = page.nextCursor;
    } while (cursor != null && cursor.isNotEmpty && seen.add(cursor));
    return result;
  });

  Future<int> unreadCount() => _guard(() async {
    final value = (await _api.getUnreadNotificationCount()).value['count'];
    return value is int ? value : int.tryParse('$value') ?? 0;
  });

  Future<void> markRead(String id) => _guard(() async {
    await _api.markNotificationRead(id);
  });

  Future<void> markAllRead() => _guard(_api.markAllNotificationsRead);

  Future<T> _guard<T>(Future<T> Function() request) async {
    try {
      return await request();
    } on DioException catch (error) {
      throw AppException.fromDioException(error);
    } on FormatException {
      throw const AppException('Notification response বোঝা যায়নি।');
    }
  }
}
