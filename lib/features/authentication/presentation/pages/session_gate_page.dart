import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/guardian/data/guardian_repository.dart';
import 'package:edtech_application/features/guardian/presentation/controllers/guardian_controller.dart';
import 'package:edtech_application/features/guardian/presentation/pages/guardian_shell.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/home/presentation/pages/home_shell.dart';
import 'package:edtech_application/features/teacher/data/teacher_repository.dart';
import 'package:edtech_application/features/teacher/presentation/controllers/teacher_controller.dart';
import 'package:edtech_application/features/teacher/presentation/pages/teacher_shell.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SessionGatePage extends StatelessWidget {
  const SessionGatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final user = auth.user;
    if (auth.isLoading) {
      return Scaffold(
        body: Center(
          child: AppLoadingView(label: context.l10n.tr('session.checking')),
        ),
      );
    }
    if (user == null) {
      return _GateState(
        icon: AppIcons.lock,
        title: context.l10n.tr('session.signInRequired'),
        body: context.l10n.tr('session.signInBody'),
        action: context.l10n.tr('auth.signIn'),
        onAction: () => Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.signIn,
          (_) => false,
        ),
      );
    }
    if (user.status == 'pending') {
      return _GateState(
        icon: AppIcons.mail,
        title: context.l10n.tr('session.verifyTitle'),
        body: context.l10n.tr('session.verifyBody'),
        action: context.l10n.tr('session.verifyAction'),
        onAction: () => Navigator.pushNamed(
          context,
          AppRoutes.verifyEmail,
          arguments: user.email,
        ),
        tone: AppStateTone.info,
      );
    }
    if (user.status == 'suspended' || user.status == 'disabled') {
      return _GateState(
        icon: AppIcons.warning,
        title: context.l10n.tr('session.accountUnavailable'),
        body: context.l10n.tr(
          'session.accountUnavailableBody',
          args: {'status': user.status},
        ),
        action: context.l10n.tr('session.changeAccount'),
        onAction: () => _logout(context),
        tone: AppStateTone.error,
      );
    }
    if (auth.activeMemberships.isEmpty) {
      return _GateState(
        icon: AppIcons.organization,
        title: context.l10n.tr('session.membershipUnavailable'),
        body: context.l10n.tr('session.membershipUnavailableBody'),
        action: context.l10n.tr('session.changeAccount'),
        onAction: () => _logout(context),
        tone: AppStateTone.warning,
      );
    }
    if (auth.needsOrganizationSelection) {
      return _SelectionPage(
        eyebrow: context.l10n.tr('session.workspaceSetup'),
        title: context.l10n.tr('session.chooseOrganization'),
        subtitle: context.l10n.tr('session.chooseOrganizationBody'),
        footer: context.l10n.tr('session.organizationPrivacy'),
        choices: auth.activeMemberships
            .map(
              (membership) => _Choice(
                icon: AppIcons.organization,
                title: membership.organizationName,
                subtitle: _membershipRoleLabels(context, membership.roles),
                semanticsLabel:
                    '${membership.organizationName}. '
                    '${_membershipRoleLabels(context, membership.roles)}',
                onTap: () => auth.selectOrganization(membership.organizationId),
              ),
            )
            .toList(),
        onChangeAccount: () => _logout(context),
      );
    }
    if (auth.isAdminOnly ||
        (auth.activeMembership != null &&
            auth.rolesFor(auth.activeMembership!).isEmpty)) {
      return _GateState(
        icon: AppIcons.shield,
        title: context.l10n.tr('session.adminTitle'),
        body: context.l10n.tr('session.adminBody'),
        action: auth.activeMemberships.length > 1
            ? context.l10n.tr('session.switchOrganization')
            : context.l10n.tr('session.changeAccount'),
        onAction: auth.activeMemberships.length > 1
            ? () => auth.clearOrganizationSelection()
            : () => _logout(context),
        tone: AppStateTone.info,
      );
    }
    if (auth.needsRoleSelection) {
      final membership = auth.activeMembership!;
      return _SelectionPage(
        eyebrow: membership.organizationName,
        title: context.l10n.tr('session.chooseRole'),
        subtitle: context.l10n.tr('session.chooseRoleBody'),
        footer: context.l10n.tr('session.rolePrivacy'),
        choices: auth
            .rolesFor(membership)
            .map(
              (role) => _Choice(
                icon: _roleIcon(role),
                title: _roleLabel(context, role),
                subtitle: _roleDescription(context, role),
                semanticsLabel:
                    '${_roleLabel(context, role)}. '
                    '${_roleDescription(context, role)}',
                onTap: () => auth.selectRole(role),
              ),
            )
            .toList(),
        onBack: auth.activeMemberships.length > 1
            ? auth.clearOrganizationSelection
            : null,
        onChangeAccount: () => _logout(context),
      );
    }
    final session = auth.session;
    return session == null
        ? Scaffold(
            body: Center(
              child: AppLoadingView(label: context.l10n.tr('session.opening')),
            ),
          )
        : _RoleShellHost(
            key: ValueKey(session.cacheNamespace),
            session: session,
          );
  }

  static Future<void> _logout(BuildContext context) async {
    await context.read<AuthController>().signOut();
    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
    }
  }

  static List<List<dynamic>> _roleIcon(MobileRole role) => switch (role) {
    MobileRole.student => AppIcons.student,
    MobileRole.teacher => AppIcons.teacher,
    MobileRole.guardian => AppIcons.guardian,
  };

  static String _roleLabel(BuildContext context, MobileRole role) =>
      context.l10n.tr('role.${role.wireName}');

  static String _roleDescription(BuildContext context, MobileRole role) =>
      context.l10n.tr('role.${role.wireName}Description');

  static String _membershipRoleLabels(
    BuildContext context,
    List<String> roles,
  ) => roles
      .where(const {'student', 'teacher', 'guardian'}.contains)
      .map((role) => context.l10n.tr('role.$role'))
      .join(' • ');
}

class _RoleShellHost extends StatelessWidget {
  const _RoleShellHost({required this.session, super.key});
  final AppSession session;

  @override
  Widget build(BuildContext context) => switch (session.activeRole) {
    MobileRole.student => ChangeNotifierProvider(
      create: (_) => StudentLmsController(
        repository: context.read<StudentLmsRepository?>(),
      ),
      child: const HomeShell(),
    ),
    MobileRole.teacher => _teacherShell(context),
    MobileRole.guardian => _guardianShell(context),
  };

  Widget _teacherShell(BuildContext context) {
    final repository = context.read<TeacherRepository?>();
    return repository == null
        ? _RoleApiUnavailable(role: context.l10n.tr('role.teacher'))
        : ChangeNotifierProvider(
            create: (_) => TeacherController(repository: repository),
            child: const TeacherShell(),
          );
  }

  Widget _guardianShell(BuildContext context) {
    final repository = context.read<GuardianRepository?>();
    return repository == null
        ? _RoleApiUnavailable(role: context.l10n.tr('role.guardian'))
        : ChangeNotifierProvider(
            create: (_) => GuardianController(repository: repository),
            child: const GuardianShell(),
          );
  }
}

class _RoleApiUnavailable extends StatelessWidget {
  const _RoleApiUnavailable({required this.role});
  final String role;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: AppStateView(
        icon: AppIcons.cloudOff,
        title: context.l10n.tr('session.workspaceUnavailable'),
        message: context.l10n.tr(
          'session.workspaceUnavailableBody',
          args: {'role': role},
        ),
        tone: AppStateTone.warning,
      ),
    ),
  );
}

class _SelectionPage extends StatelessWidget {
  const _SelectionPage({
    required this.eyebrow,
    required this.title,
    required this.subtitle,
    required this.footer,
    required this.choices,
    required this.onChangeAccount,
    this.onBack,
  });

  final String eyebrow;
  final String title;
  final String subtitle;
  final String footer;
  final List<_Choice> choices;
  final VoidCallback onChangeAccount;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 860),
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                MediaQuery.sizeOf(context).width >= AppBreakpoints.tablet
                    ? AppSpacing.xxl
                    : AppSpacing.lg,
                AppSpacing.lg,
                MediaQuery.sizeOf(context).width >= AppBreakpoints.tablet
                    ? AppSpacing.xxl
                    : AppSpacing.lg,
                AppSpacing.xxl,
              ),
              children: [
                Row(
                  children: [
                    if (onBack != null) ...[
                      IconButton.filledTonal(
                        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                        onPressed: onBack,
                        icon: const AppIcon(AppIcons.arrowLeft),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                    ],
                    const AppIconBadge(icon: AppIcons.school, size: 48),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: onChangeAccount,
                      icon: const AppIcon(AppIcons.switchUser, size: 19),
                      label: Text(context.l10n.tr('session.changeAccount')),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xxl),
                Text(
                  eyebrow.toUpperCase(),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: colors.primary,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(title, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: AppSpacing.xs),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 620),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.xxl),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final columns = constraints.maxWidth >= 620 ? 2 : 1;
                    final width = columns == 1
                        ? constraints.maxWidth
                        : (constraints.maxWidth - AppSpacing.md) / 2;
                    return Wrap(
                      spacing: AppSpacing.md,
                      runSpacing: AppSpacing.md,
                      children: choices
                          .map(
                            (choice) => SizedBox(
                              width: width,
                              child: _ChoiceTile(choice: choice),
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                const SizedBox(height: AppSpacing.xl),
                AppStatusBanner(
                  icon: AppIcons.shield,
                  message: footer,
                  tone: AppStateTone.neutral,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Choice {
  const _Choice({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.semanticsLabel,
    required this.onTap,
  });
  final List<List<dynamic>> icon;
  final String title;
  final String subtitle;
  final String semanticsLabel;
  final VoidCallback onTap;
}

class _ChoiceTile extends StatelessWidget {
  const _ChoiceTile({required this.choice});
  final _Choice choice;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: choice.semanticsLabel,
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: choice.onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Row(
            children: [
              AppIconBadge(icon: choice.icon, size: 54, iconSize: 26),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      choice.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      choice.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              AppIcon(
                AppIcons.arrowRight,
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _GateState extends StatelessWidget {
  const _GateState({
    required this.icon,
    required this.title,
    required this.body,
    required this.action,
    required this.onAction,
    this.tone = AppStateTone.neutral,
  });
  final List<List<dynamic>> icon;
  final String title;
  final String body;
  final String action;
  final VoidCallback onAction;
  final AppStateTone tone;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: AppStateView(
        icon: icon,
        title: title,
        message: body,
        actionLabel: action,
        onAction: onAction,
        tone: tone,
      ),
    ),
  );
}
