import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/shared/animations/app_entrance.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    required this.title,
    required this.subtitle,
    this.showNotification = true,
    this.unreadCount,
    super.key,
  });

  final String title;
  final String subtitle;
  final bool showNotification;
  final int? unreadCount;

  @override
  Widget build(BuildContext context) {
    return AppEntrance.fadeInDown(
      distance: 16,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (showNotification)
              Badge(
                isLabelVisible: (unreadCount ?? 0) > 0,
                label: Text(
                  (unreadCount ?? 0) > 99 ? '99+' : '${unreadCount ?? 0}',
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
      ),
    );
  }
}
