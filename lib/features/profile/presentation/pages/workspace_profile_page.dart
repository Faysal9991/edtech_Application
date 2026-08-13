import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkspaceProfilePage extends StatelessWidget {
  const WorkspaceProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final user = auth.user;
    final membership = auth.activeMembership;
    return AppScrollablePage(
      maxWidth: AppLayout.maxReadingWidth,
      children: [
        Text(
          context.l10n.tr('profile.title'),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          context.l10n.tr('profile.subtitle'),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _ProfileSummary(
          name: user?.name ?? '',
          email: user?.email ?? '',
          role: auth.activeRole?.wireName ?? '',
          organization: membership?.organizationName ?? '',
        ),
        const SizedBox(height: AppSpacing.lg),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              if (membership != null &&
                  auth.rolesFor(membership).length > 1) ...[
                _WorkspaceTile(
                  icon: AppIcons.switchUser,
                  title: context.l10n.tr('profile.switchRole'),
                  subtitle: _titleCase(auth.activeRole?.wireName ?? ''),
                  onTap: auth.isLoading
                      ? null
                      : () => auth.clearRoleSelection(),
                ),
                const Divider(),
              ],
              if (auth.activeMemberships.length > 1) ...[
                _WorkspaceTile(
                  icon: AppIcons.organization,
                  title: context.l10n.tr('profile.switchOrganization'),
                  subtitle: membership?.organizationName ?? '',
                  onTap: auth.isLoading
                      ? null
                      : () => auth.clearOrganizationSelection(),
                ),
                const Divider(),
              ],
              _WorkspaceTile(
                icon: AppIcons.notification,
                title: context.l10n.tr('notifications.title'),
                onTap: auth.isLoading
                    ? null
                    : () =>
                          Navigator.pushNamed(context, AppRoutes.notifications),
              ),
              const Divider(),
              _WorkspaceTile(
                icon: AppIcons.password,
                title: context.l10n.tr('auth.changePassword'),
                onTap: auth.isLoading
                    ? null
                    : () => Navigator.pushNamed(
                        context,
                        AppRoutes.changePassword,
                      ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        OutlinedButton.icon(
          onPressed: auth.isLoading
              ? null
              : () => _confirmLogout(context, allDevices: false),
          style: OutlinedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
            side: BorderSide(
              color: Theme.of(context).colorScheme.error.withValues(alpha: .5),
            ),
          ),
          icon: const AppIcon(AppIcons.logout, size: 21),
          label: Text(context.l10n.tr('auth.signOut')),
        ),
        const SizedBox(height: AppSpacing.xs),
        TextButton.icon(
          onPressed: auth.isLoading
              ? null
              : () => _confirmLogout(context, allDevices: true),
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
          ),
          icon: const AppIcon(AppIcons.logoutAll, size: 20),
          label: Text(context.l10n.tr('auth.logoutAll')),
        ),
      ],
    );
  }

  static Future<void> _confirmLogout(
    BuildContext context, {
    required bool allDevices,
  }) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        final colors = Theme.of(dialogContext).colorScheme;
        return AlertDialog(
          icon: AppIcon(
            allDevices ? AppIcons.logoutAll : AppIcons.logout,
            size: 32,
            color: colors.error,
          ),
          title: Text(
            dialogContext.l10n.tr(
              allDevices ? 'auth.logoutAllTitle' : 'auth.logoutTitle',
            ),
          ),
          content: Text(
            dialogContext.l10n.tr(
              allDevices ? 'auth.logoutAllBody' : 'auth.logoutBody',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(dialogContext.l10n.tr('common.cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              style: FilledButton.styleFrom(
                backgroundColor: colors.error,
                foregroundColor: colors.onError,
              ),
              child: Text(
                allDevices
                    ? dialogContext.l10n.tr('auth.logoutAll')
                    : dialogContext.l10n.tr('auth.signOut'),
              ),
            ),
          ],
        );
      },
    );
    if (confirmed != true || !context.mounted) return;
    await _logout(context, allDevices: allDevices);
  }

  static Future<void> _logout(
    BuildContext context, {
    required bool allDevices,
  }) async {
    final auth = context.read<AuthController>();
    if (allDevices) {
      await auth.signOutAll();
    } else {
      await auth.signOut();
    }
    if (!context.mounted) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }
}

class _ProfileSummary extends StatelessWidget {
  const _ProfileSummary({
    required this.name,
    required this.email,
    required this.role,
    required this.organization,
  });

  final String name;
  final String email;
  final String role;
  final String organization;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Semantics(
              label: name,
              child: CircleAvatar(
                radius: 32,
                backgroundColor: colors.primaryContainer,
                foregroundColor: colors.onPrimaryContainer,
                child: Text(
                  _initial(name),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: colors.onPrimaryContainer,
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    email,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Wrap(
                    spacing: AppSpacing.xs,
                    runSpacing: AppSpacing.xs,
                    children: [
                      if (role.isNotEmpty) Chip(label: Text(_titleCase(role))),
                      if (organization.isNotEmpty)
                        Chip(
                          avatar: const AppIcon(
                            AppIcons.organization,
                            size: 16,
                          ),
                          label: Text(organization),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkspaceTile extends StatelessWidget {
  const _WorkspaceTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIconBadge(icon: icon, size: 44, iconSize: 21),
      title: Text(title),
      subtitle: subtitle?.isNotEmpty == true ? Text(subtitle!) : null,
      trailing: const AppIcon(AppIcons.arrowRight, size: 19),
      onTap: onTap,
    );
  }
}

String _initial(String value) {
  final trimmed = value.trim();
  return trimmed.isEmpty ? 'U' : trimmed.characters.first.toUpperCase();
}

String _titleCase(String value) {
  if (value.isEmpty) return value;
  return '${value[0].toUpperCase()}${value.substring(1)}';
}
