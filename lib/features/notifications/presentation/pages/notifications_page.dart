import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/routing/internal_deep_link.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/notifications/presentation/controllers/notification_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NotificationController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.tr('notifications.title')),
        actions: [
          if (state.unreadCount > 0)
            TextButton(
              onPressed: () => _markAllRead(context, state),
              child: Text(context.l10n.tr('notifications.markAll')),
            ),
        ],
      ),
      body: _body(context, state),
    );
  }

  Widget _body(BuildContext context, NotificationController state) {
    if (state.loading && state.items.isEmpty) {
      return const Center(child: AppLoadingView());
    }
    if (state.error != null && state.items.isEmpty) {
      return Center(
        child: AppStateView(
          icon: AppIcons.cloudOff,
          title: context.l10n.tr('notifications.unavailable'),
          message: context.l10n.tr('notifications.unavailableBody'),
          actionLabel: context.l10n.tr('notifications.retry'),
          onAction: state.load,
          tone: AppStateTone.error,
        ),
      );
    }
    if (state.items.isEmpty) {
      return Center(
        child: AppStateView(
          icon: AppIcons.notification,
          title: context.l10n.tr('notifications.title'),
          message: context.l10n.tr('notifications.empty'),
          compact: true,
        ),
      );
    }
    return AppPage(
      safeTop: false,
      padding: EdgeInsets.zero,
      child: RefreshIndicator(
        onRefresh: state.load,
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
          itemCount: state.items.length + (state.error == null ? 0 : 1),
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            if (state.error != null && index == 0) {
              return AppStatusBanner(
                icon: AppIcons.warning,
                message: context.l10n.tr('notifications.unavailableBody'),
                tone: AppStateTone.warning,
                actionLabel: context.l10n.tr('notifications.retry'),
                onAction: state.load,
              );
            }
            final item = state.items[index - (state.error == null ? 0 : 1)];
            return _NotificationCard(
              item: item,
              onTap: () => _open(context, item),
            );
          },
        ),
      ),
    );
  }

  Future<void> _markAllRead(
    BuildContext context,
    NotificationController state,
  ) async {
    try {
      await state.markAllRead();
    } catch (_) {
      if (!context.mounted) return;
      _message(context, context.l10n.tr('notifications.readFailed'));
    }
  }

  Future<void> _open(BuildContext context, NotificationDto item) async {
    try {
      if (item.readAt == null) {
        await context.read<NotificationController>().markRead(item.id);
      }
      if (!context.mounted) return;
      final target = InternalDeepLink.tryParse(item.deepLink);
      if (target == null) return;
      final switched = await _alignTargetContext(context, target);
      if (!context.mounted || switched == null) return;
      if (switched) {
        final navigator = Navigator.of(context);
        navigator.popUntil((route) => route.settings.name == AppRoutes.home);
        await navigator.pushNamed(target.route, arguments: target.argument);
        return;
      }
      await Navigator.pushNamed(
        context,
        target.route,
        arguments: target.argument,
      );
    } catch (_) {
      if (context.mounted) {
        _message(context, context.l10n.tr('notifications.readFailed'));
      }
    }
  }

  Future<bool?> _alignTargetContext(
    BuildContext context,
    InternalDeepLink target,
  ) async {
    final auth = context.read<AuthController>();
    final targetOrganization = target.organizationId;
    var membership = auth.activeMembership;
    if (targetOrganization != null &&
        membership?.organizationId != targetOrganization) {
      membership = auth.activeMemberships
          .where((item) => item.organizationId == targetOrganization)
          .firstOrNull;
      if (membership == null) {
        _message(
          context,
          context.l10n.tr('notifications.organizationUnavailable'),
        );
        return null;
      }
    }
    final role = target.requiredRole;
    if (role != null &&
        (membership == null || !auth.rolesFor(membership).contains(role))) {
      _message(context, context.l10n.tr('notifications.roleUnavailable'));
      return null;
    }
    final organizationChanges =
        targetOrganization != null &&
        auth.activeMembership?.organizationId != targetOrganization;
    final roleChanges = role != null && auth.activeRole != role;
    if (!organizationChanges && !roleChanges) return false;

    final confirmed =
        await showDialog<bool>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            icon: const AppIcon(AppIcons.switchUser),
            title: Text(context.l10n.tr('notifications.switchWorkspace')),
            content: Text(
              context.l10n.tr(
                'notifications.switchWorkspaceBody',
                args: {
                  'organization':
                      membership?.organizationName ??
                      context.l10n.tr('notifications.anotherOrganization'),
                  'role': role == null
                      ? ''
                      : ' • ${_roleLabel(context, role.wireName)}',
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext, false),
                child: Text(context.l10n.tr('common.cancel')),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(dialogContext, true),
                child: Text(context.l10n.tr('notifications.switch')),
              ),
            ],
          ),
        ) ??
        false;
    if (!confirmed || membership == null) return null;
    if (organizationChanges) {
      await auth.selectOrganization(membership.organizationId);
    }
    if (role != null && auth.activeRole != role) {
      await auth.selectRole(role);
    }
    return true;
  }

  void _message(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  String _roleLabel(BuildContext context, String role) => switch (role) {
    'student' => context.l10n.tr('role.student'),
    'teacher' => context.l10n.tr('role.teacher'),
    'guardian' => context.l10n.tr('role.guardian'),
    _ => role,
  };
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({required this.item, required this.onTap});

  final NotificationDto item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final unread = item.readAt == null;
    final colors = Theme.of(context).colorScheme;
    final createdAt = item.createdAt.toLocal();
    final localizations = MaterialLocalizations.of(context);
    final timestamp =
        '${localizations.formatMediumDate(createdAt)} • '
        '${localizations.formatTimeOfDay(TimeOfDay.fromDateTime(createdAt))}';
    return Semantics(
      button: true,
      label: '${item.title}. $timestamp',
      child: Card(
        color: unread ? colors.primaryContainer.withValues(alpha: .42) : null,
        child: ListTile(
          contentPadding: const EdgeInsets.all(14),
          minVerticalPadding: 12,
          onTap: onTap,
          leading: AppIconBadge(
            icon: _iconFor(item.type),
            backgroundColor: unread
                ? colors.primaryContainer
                : colors.surfaceContainerHighest,
            foregroundColor: unread ? colors.primary : colors.onSurfaceVariant,
          ),
          title: Text(
            item.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: unread ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.body, maxLines: 3, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 6),
                Text(
                  timestamp,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          trailing: unread
              ? Semantics(
                  label: context.l10n.tr('notifications.unread'),
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }

  List<List<dynamic>> _iconFor(String type) => switch (type.toLowerCase()) {
    'live_class' || 'live' => AppIcons.live,
    'quiz' || 'result' => AppIcons.results,
    'assignment' => AppIcons.assignment,
    'payment' => AppIcons.work,
    _ => AppIcons.notification,
  };
}
