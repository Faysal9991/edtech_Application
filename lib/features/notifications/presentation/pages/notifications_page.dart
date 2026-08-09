import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.tr('notifications.title')),
        actions: [
          if (state.unreadNotifications > 0)
            TextButton(
              onPressed: state.markAllNotificationsRead,
              child: Text(context.l10n.tr('notifications.markAll')),
            ),
        ],
      ),
      body: _body(context, state),
    );
  }

  Widget _body(BuildContext context, StudentLmsController state) {
    if (state.isLoadingStudentData && state.notifications.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.studentDataError != null && state.notifications.isEmpty) {
      return Center(
        child: FilledButton.tonal(
          onPressed: () =>
              context.read<StudentLmsController>().loadStudentData(),
          child: Text(context.l10n.tr('notifications.retry')),
        ),
      );
    }
    if (state.notifications.isEmpty) {
      return Center(child: Text(context.l10n.tr('notifications.empty')));
    }
    return RefreshIndicator(
      onRefresh: state.loadStudentData,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
        itemCount: state.notifications.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final item = state.notifications[index];
          return StaggeredAnimation(
            index: index,
            type: EntranceType.fadeInRight,
            child: _NotificationCard(
              item: item,
              onTap: item.readAt == null
                  ? () => _markRead(context, item.id)
                  : null,
            ),
          );
        },
      ),
    );
  }

  Future<void> _markRead(BuildContext context, String id) async {
    try {
      await context.read<StudentLmsController>().markNotificationRead(id);
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.l10n.tr(
                'notifications.readFailed',
                args: {'error': error},
              ),
            ),
          ),
        );
      }
    }
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({required this.item, this.onTap});

  final NotificationDto item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final unread = item.readAt == null;
    return Card(
      color: unread ? AppColors.primary.withValues(alpha: .07) : null,
      child: ListTile(
        contentPadding: const EdgeInsets.all(14),
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(
            _iconFor(item.type),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(
          item.title,
          style: TextStyle(
            fontWeight: unread ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(item.body),
        ),
        trailing: unread
            ? const Icon(Icons.circle, color: AppColors.primary, size: 9)
            : null,
      ),
    );
  }

  IconData _iconFor(String type) => switch (type.toLowerCase()) {
    'live_class' || 'live' => Icons.videocam_outlined,
    'quiz' || 'result' => Icons.emoji_events_outlined,
    'assignment' => Icons.assignment_outlined,
    'payment' => Icons.receipt_long_outlined,
    _ => Icons.notifications_outlined,
  };
}
