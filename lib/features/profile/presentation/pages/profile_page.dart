import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/core/theme/theme_controller.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/localization/locale_controller.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Student-owned account controls. Workspace choices always return to the
/// session gate so the selected organization and role are revalidated.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final theme = context.watch<ThemeController>();
    final locale = context.watch<LocaleController>();
    final unread = context.watch<StudentLmsController>().unreadNotifications;
    final user = auth.user;
    final membership = auth.activeMembership;
    final canSwitchRole =
        membership != null && auth.rolesFor(membership).length > 1;

    return AppScrollablePage(
      children: [
        _ProfileHero(
          name: user?.name ?? context.l10n.tr('profile.previewLearner'),
          email: user?.email ?? 'preview@learnly.app',
          role: auth.activeRole?.wireName ?? context.l10n.tr('profile.student'),
          organization: membership?.organizationName,
          onEdit: () => Navigator.pushNamed(context, AppRoutes.editProfile),
        ),
        const SizedBox(height: AppSpacing.xl),
        _SectionLabel(title: context.l10n.tr('profile.learning')),
        _SettingsGroup(
          children: [
            _ProfileTile(
              icon: AppIcons.bookmark,
              title: context.l10n.tr('profile.savedCourses'),
              onTap: () =>
                  _message(context, context.l10n.tr('profile.savedApiMissing')),
            ),
            _ProfileTile(
              icon: AppIcons.learning,
              title: context.l10n.tr('profile.studentServices'),
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.studentServices),
            ),
            _ProfileTile(
              icon: AppIcons.certificate,
              title: context.l10n.tr('profile.certificates'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.certificates),
            ),
            _ProfileTile(
              icon: AppIcons.verified,
              title: context.l10n.tr('profile.verifyCertificate'),
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.verifyCertificate),
            ),
            _ProfileTile(
              icon: AppIcons.analytics,
              title: context.l10n.tr('profile.analytics'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.results),
            ),
          ],
        ),
        if (canSwitchRole || auth.activeMemberships.length > 1) ...[
          const SizedBox(height: AppSpacing.xl),
          _SectionLabel(title: context.l10n.tr('profile.workspace')),
          _SettingsGroup(
            children: [
              if (canSwitchRole)
                _ProfileTile(
                  icon: AppIcons.switchUser,
                  title: context.l10n.tr('profile.switchRole'),
                  trailing: auth.activeRole?.wireName,
                  onTap: auth.clearRoleSelection,
                ),
              if (auth.activeMemberships.length > 1)
                _ProfileTile(
                  icon: AppIcons.organization,
                  title: context.l10n.tr('profile.switchOrganization'),
                  trailing: membership?.organizationName,
                  onTap: auth.clearOrganizationSelection,
                ),
            ],
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
        _SectionLabel(title: context.l10n.tr('profile.preferences')),
        _SettingsGroup(
          children: [
            SwitchListTile.adaptive(
              secondary: const AppIconBadge(icon: AppIcons.moon, size: 44),
              title: Text(context.l10n.tr('profile.darkMode')),
              subtitle: Text(context.l10n.tr('profile.darkModeSubtitle')),
              value: theme.isDark,
              onChanged: (_) => theme.toggleTheme(),
            ),
            _DividerInset(),
            _ProfileTile(
              icon: AppIcons.language,
              title: context.l10n.tr('profile.language'),
              trailing: locale.isBangla
                  ? context.l10n.tr('language.bangla')
                  : context.l10n.tr('language.english'),
              onTap: () => _chooseLanguage(context, locale),
            ),
            _DividerInset(),
            _ProfileTile(
              icon: AppIcons.notification,
              title: context.l10n.tr('profile.notifications'),
              badgeCount: unread,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.notifications),
            ),
            _DividerInset(),
            _ProfileTile(
              icon: AppIcons.password,
              title: context.l10n.tr('auth.changePassword'),
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.changePassword),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xl),
        _SectionLabel(title: context.l10n.tr('profile.support')),
        _SettingsGroup(
          children: [
            _ProfileTile(
              icon: AppIcons.help,
              title: context.l10n.tr('profile.help'),
              onTap: () =>
                  _message(context, context.l10n.tr('profile.helpComing')),
            ),
            _DividerInset(),
            _ProfileTile(
              icon: AppIcons.info,
              title: context.l10n.tr('profile.about'),
              trailing: 'v1.0.0',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xxl),
        OutlinedButton.icon(
          onPressed: () => _signOut(context),
          style: OutlinedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
            minimumSize: const Size.fromHeight(54),
          ),
          icon: const AppIcon(AppIcons.logout),
          label: Text(context.l10n.tr('auth.signOut')),
        ),
        const SizedBox(height: AppSpacing.xs),
        Center(
          child: TextButton.icon(
            onPressed: () => _signOutAll(context),
            icon: const AppIcon(AppIcons.logoutAll, size: 19),
            label: Text(context.l10n.tr('auth.logoutAll')),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
      ],
    );
  }

  Future<void> _signOut(BuildContext context) async {
    final confirmed = await _confirmSignOut(context, allDevices: false);
    if (!confirmed || !context.mounted) return;
    await context.read<AuthController>().signOut();
    if (!context.mounted) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.signIn,
      (route) => false,
    );
  }

  Future<void> _signOutAll(BuildContext context) async {
    final confirmed = await _confirmSignOut(context, allDevices: true);
    if (!confirmed || !context.mounted) return;
    await context.read<AuthController>().signOutAll();
    if (!context.mounted) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.signIn,
      (route) => false,
    );
  }

  Future<bool> _confirmSignOut(
    BuildContext context, {
    required bool allDevices,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            icon: AppIcon(allDevices ? AppIcons.logoutAll : AppIcons.logout),
            title: Text(
              allDevices
                  ? context.l10n.tr('auth.logoutAllTitle')
                  : context.l10n.tr('auth.logoutTitle'),
            ),
            content: Text(
              allDevices
                  ? context.l10n.tr('auth.logoutAllBody')
                  : context.l10n.tr('auth.logoutBody'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext, false),
                child: Text(context.l10n.tr('common.cancel')),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(dialogContext).colorScheme.error,
                  foregroundColor: Theme.of(dialogContext).colorScheme.onError,
                ),
                onPressed: () => Navigator.pop(dialogContext, true),
                child: Text(context.l10n.tr('auth.signOut')),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _message(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _chooseLanguage(
    BuildContext context,
    LocaleController controller,
  ) async {
    final language = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            0,
            AppSpacing.lg,
            AppSpacing.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.tr('language.choose'),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSpacing.xs),
              RadioGroup<String>(
                groupValue: controller.isBangla ? 'bn' : 'en',
                onChanged: Navigator.of(sheetContext).pop,
                child: Column(
                  children: [
                    RadioListTile<String>(
                      value: 'bn',
                      secondary: const AppIcon(AppIcons.language),
                      title: Text(context.l10n.tr('language.bangla')),
                    ),
                    RadioListTile<String>(
                      value: 'en',
                      secondary: const AppIcon(AppIcons.language),
                      title: Text(context.l10n.tr('language.english')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (language != null) await controller.setLanguage(language);
  }
}

class _ProfileHero extends StatelessWidget {
  const _ProfileHero({
    required this.name,
    required this.email,
    required this.role,
    required this.organization,
    required this.onEdit,
  });

  final String name;
  final String email;
  final String role;
  final String? organization;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final stacked =
              constraints.maxWidth < 430 ||
              MediaQuery.textScalerOf(context).scale(1) > 1.25;
          final identity = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                email,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Wrap(
                spacing: AppSpacing.xs,
                runSpacing: AppSpacing.xs,
                children: [
                  Chip(label: Text(role.toUpperCase())),
                  if (organization != null && organization!.isNotEmpty)
                    Chip(label: Text(organization!)),
                ],
              ),
            ],
          );
          final avatar = Container(
            width: 68,
            height: 68,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: Text(
              name.trim().isEmpty
                  ? 'L'
                  : name.trim().substring(0, 1).toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          );
          final edit = IconButton.filledTonal(
            onPressed: onEdit,
            tooltip: context.l10n.tr('common.open'),
            icon: const AppIcon(AppIcons.edit),
          );
          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    avatar,
                    const SizedBox(width: AppSpacing.md),
                    edit,
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                identity,
              ],
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              avatar,
              const SizedBox(width: AppSpacing.md),
              Expanded(child: identity),
              const SizedBox(width: AppSpacing.sm),
              edit,
            ],
          );
        },
      ),
    ),
  );
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: AppSpacing.xs, bottom: AppSpacing.xs),
    child: Text(title, style: Theme.of(context).textTheme.titleMedium),
  );
}

class _SettingsGroup extends StatelessWidget {
  const _SettingsGroup({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    child: Column(children: children),
  );
}

class _DividerInset extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Divider(height: 1, indent: 76);
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
    this.badgeCount = 0,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String? trailing;
  final int badgeCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ListTile(
    minVerticalPadding: AppSpacing.sm,
    contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
    leading: AppIconBadge(icon: icon, size: 44, iconSize: 22),
    title: Text(title),
    trailing: badgeCount > 0
        ? Badge(
            label: Text(badgeCount > 99 ? '99+' : '$badgeCount'),
            child: const AppIcon(AppIcons.arrowRight, size: 19),
          )
        : trailing == null
        ? const AppIcon(AppIcons.arrowRight, size: 19)
        : ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 130),
            child: Text(
              trailing!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
    onTap: onTap,
  );
}
