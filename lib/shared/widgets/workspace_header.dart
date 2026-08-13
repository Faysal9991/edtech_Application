import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class WorkspaceHeader extends StatelessWidget {
  const WorkspaceHeader({
    required this.icon,
    required this.eyebrow,
    required this.title,
    required this.subtitle,
    this.unreadCount = 0,
    this.onContextTap,
    super.key,
  });

  final List<List<dynamic>> icon;
  final String eyebrow;
  final String title;
  final String subtitle;
  final int unreadCount;
  final VoidCallback? onContextTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppIconBadge(icon: icon, size: 52, iconSize: 25),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(AppRadius.sm),
                onTap: onContextTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          eyebrow,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(color: colors.primary),
                        ),
                      ),
                      if (onContextTap != null) ...[
                        const SizedBox(width: AppSpacing.xxs),
                        AppIcon(
                          AppIcons.arrowDown,
                          size: 15,
                          color: colors.primary,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.xxs),
              Semantics(
                header: true,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        Badge(
          isLabelVisible: unreadCount > 0,
          label: Text(
            unreadCount > 99
                ? '${context.l10n.number(99)}+'
                : context.l10n.number(unreadCount),
          ),
          child: IconButton.filledTonal(
            tooltip: context.l10n.tr('home.notifications'),
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.notifications),
            icon: const AppIcon(AppIcons.notification),
          ),
        ),
      ],
    );
  }
}
