import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/core/theme/theme_controller.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/animations/pressable_scale.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/localization/locale_controller.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final theme = context.watch<ThemeController>();
    final locale = context.watch<LocaleController>();
    final user = auth.user;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          PageHeader(
            title: context.l10n.tr('profile.title'),
            subtitle: context.l10n.tr('profile.subtitle'),
            showNotification: false,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      width: 66,
                      height: 66,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        (user?.name ?? 'L').substring(0, 1).toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user?.name ??
                                context.l10n.tr('profile.previewLearner'),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 4),
                          Text(user?.email ?? 'preview@learnly.app'),
                          const SizedBox(height: 7),
                          Chip(label: Text(context.l10n.tr('profile.student'))),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.editProfile),
                      tooltip: context.l10n.tr('common.open'),
                      icon: const AppIcon(AppIcons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _ProfileSectionTitle(context.l10n.tr('profile.learning')),
          _ProfileTile(
            icon: AppIcons.bookmark,
            title: context.l10n.tr('profile.savedCourses'),
            onTap: () =>
                _message(context, context.l10n.tr('profile.savedApiMissing')),
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
          _ProfileSectionTitle(context.l10n.tr('profile.preferences')),
          SwitchListTile(
            secondary: const AppIcon(AppIcons.moon),
            title: Text(context.l10n.tr('profile.darkMode')),
            subtitle: Text(context.l10n.tr('profile.darkModeSubtitle')),
            value: theme.isDark,
            onChanged: (_) => theme.toggleTheme(),
          ),
          _ProfileTile(
            icon: AppIcons.language,
            title: context.l10n.tr('profile.language'),
            trailing: locale.isBangla
                ? context.l10n.tr('language.bangla')
                : context.l10n.tr('language.english'),
            onTap: () => _chooseLanguage(context, locale),
          ),
          _ProfileTile(
            icon: AppIcons.notification,
            title: context.l10n.tr('profile.notifications'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.notifications),
          ),
          _ProfileTile(
            icon: AppIcons.password,
            title: context.l10n.tr('auth.changePassword'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.changePassword),
          ),
          _ProfileSectionTitle(context.l10n.tr('profile.support')),
          _ProfileTile(
            icon: AppIcons.help,
            title: context.l10n.tr('profile.help'),
            onTap: () =>
                _message(context, context.l10n.tr('profile.helpComing')),
          ),
          _ProfileTile(
            icon: AppIcons.info,
            title: context.l10n.tr('profile.about'),
            trailing: 'v1.0.0',
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: OutlinedButton.icon(
              onPressed: () => _signOut(context),
              style: OutlinedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
                minimumSize: const Size.fromHeight(54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              icon: const AppIcon(AppIcons.logout),
              label: Text(context.l10n.tr('auth.signOut')),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    await context.read<AuthController>().signOut();
    if (!context.mounted) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.signIn,
      (route) => false,
    );
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
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.tr('language.choose'),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const AppIcon(AppIcons.language),
                title: Text(context.l10n.tr('language.bangla')),
                onTap: () => Navigator.pop(context, 'bn'),
                trailing: Icon(
                  controller.isBangla
                      ? Icons.radio_button_checked_rounded
                      : Icons.radio_button_off_rounded,
                  color: controller.isBangla
                      ? AppColors.primary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              ListTile(
                leading: const AppIcon(AppIcons.language),
                title: Text(context.l10n.tr('language.english')),
                onTap: () => Navigator.pop(context, 'en'),
                trailing: Icon(
                  !controller.isBangla
                      ? Icons.radio_button_checked_rounded
                      : Icons.radio_button_off_rounded,
                  color: !controller.isBangla
                      ? AppColors.primary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
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

class _ProfileSectionTitle extends StatelessWidget {
  const _ProfileSectionTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
      child: Text(title, style: Theme.of(context).textTheme.titleMedium),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
  });
  final List<List<dynamic>> icon;
  final String title;
  final String? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return PressableScale(
      pressedScale: .985,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        leading: AppIconBadge(icon: icon, size: 44, iconSize: 22),
        title: Text(title),
        trailing: trailing == null
            ? const AppIcon(AppIcons.arrowRight, size: 19)
            : Text(trailing!),
        onTap: onTap,
      ),
    );
  }
}
