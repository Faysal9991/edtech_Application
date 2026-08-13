import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/guardian/data/guardian_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class GuardianInvitationPage extends StatefulWidget {
  const GuardianInvitationPage({this.initialToken, super.key});
  final String? initialToken;

  @override
  State<GuardianInvitationPage> createState() => _GuardianInvitationPageState();
}

class _GuardianInvitationPageState extends State<GuardianInvitationPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _token;
  final _invitationId = TextEditingController();
  final _otp = TextEditingController();
  final _displayName = TextEditingController();
  final _password = TextEditingController();
  bool _useOtp = false;
  bool _loading = false;
  String? _error;

  bool get _hasSecureLink => _token.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    _token = TextEditingController(text: widget.initialToken?.trim() ?? '');
    _useOtp = !_hasSecureLink;
  }

  @override
  void dispose() {
    _token.dispose();
    _invitationId.dispose();
    _otp.dispose();
    _displayName.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final signedIn = auth.hasAuthenticatedIdentity;
    final l10n = context.l10n;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: AppScrollablePage(
          maxWidth: AppLayout.maxFormWidth,
          children: [
            Semantics(
              header: true,
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.sm),
                  AppIconBadge(
                    icon: AppIcons.guardian,
                    size: 64,
                    iconSize: 31,
                    semanticLabel: l10n.tr('guardianInvitation.iconLabel'),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    l10n.tr(
                      signedIn
                          ? 'guardianInvitation.signedInTitle'
                          : 'guardianInvitation.title',
                    ),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    l10n.tr(
                      signedIn
                          ? 'guardianInvitation.signedInSubtitle'
                          : 'guardianInvitation.subtitle',
                    ),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            _AccountContext(
              auth: auth,
              onChangeAccount: _loading ? null : _changeAccount,
            ),
            const SizedBox(height: AppSpacing.md),
            AppStatusBanner(
              icon: AppIcons.shield,
              tone: AppStateTone.neutral,
              title: l10n.tr('guardianInvitation.securityTitle'),
              message: l10n.tr('guardianInvitation.securityBody'),
            ),
            const SizedBox(height: AppSpacing.lg),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: AbsorbPointer(
                  absorbing: _loading,
                  child: Opacity(
                    opacity: _loading ? .68 : 1,
                    child: Form(
                      key: _formKey,
                      child: AutofillGroup(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              l10n.tr('guardianInvitation.inviteMethod'),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              l10n.tr('guardianInvitation.inviteMethodBody'),
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                  ),
                            ),
                            const SizedBox(height: AppSpacing.md),
                            Semantics(
                              label: l10n.tr('guardianInvitation.inviteMethod'),
                              child: SegmentedButton<bool>(
                                segments: [
                                  ButtonSegment(
                                    value: false,
                                    icon: const AppIcon(
                                      AppIcons.mail,
                                      size: 18,
                                    ),
                                    label: Text(
                                      l10n.tr('guardianInvitation.secureLink'),
                                    ),
                                  ),
                                  ButtonSegment(
                                    value: true,
                                    icon: const AppIcon(
                                      AppIcons.password,
                                      size: 18,
                                    ),
                                    label: Text(
                                      l10n.tr('guardianInvitation.codeOtp'),
                                    ),
                                  ),
                                ],
                                selected: {_useOtp},
                                onSelectionChanged: (value) => setState(() {
                                  _useOtp = value.single;
                                  _error = null;
                                }),
                              ),
                            ),
                            const SizedBox(height: AppSpacing.lg),
                            if (_useOtp) ...[
                              AppTextField(
                                controller: _invitationId,
                                label: l10n.tr(
                                  'guardianInvitation.invitationCode',
                                ),
                                hint: l10n.tr(
                                  'guardianInvitation.invitationCodeHint',
                                ),
                                prefixAppIcon: AppIcons.mail,
                                textInputAction: TextInputAction.next,
                                validator: (value) =>
                                    (value?.trim().isEmpty ?? true)
                                    ? l10n.tr(
                                        'guardianInvitation.invitationCodeRequired',
                                      )
                                    : null,
                              ),
                              const SizedBox(height: AppSpacing.md),
                              _OtpField(
                                controller: _otp,
                                label: l10n.tr('guardianInvitation.otp'),
                                hint: l10n.tr('guardianInvitation.otpHint'),
                                validator: (value) =>
                                    RegExp(
                                      r'^\d{6}$',
                                    ).hasMatch(value?.trim() ?? '')
                                    ? null
                                    : l10n.tr('guardianInvitation.otpInvalid'),
                                onSubmitted: (_) => _accept(signedIn),
                              ),
                            ] else ...[
                              if (_hasSecureLink)
                                AppStatusBanner(
                                  icon: AppIcons.verified,
                                  tone: AppStateTone.success,
                                  title: l10n.tr(
                                    'guardianInvitation.linkReadyTitle',
                                  ),
                                  message: l10n.tr(
                                    'guardianInvitation.linkReadyBody',
                                  ),
                                )
                              else
                                AppTextField(
                                  controller: _token,
                                  label: l10n.tr('guardianInvitation.linkCode'),
                                  hint: l10n.tr(
                                    'guardianInvitation.linkCodeHint',
                                  ),
                                  prefixAppIcon: AppIcons.lock,
                                  obscureText: true,
                                  textInputAction: signedIn
                                      ? TextInputAction.done
                                      : TextInputAction.next,
                                  validator: (value) =>
                                      (value?.trim().length ?? 0) < 32
                                      ? l10n.tr(
                                          'guardianInvitation.linkCodeInvalid',
                                        )
                                      : null,
                                  onSubmitted: signedIn
                                      ? (_) => _accept(signedIn)
                                      : null,
                                ),
                            ],
                            if (!signedIn) ...[
                              const SizedBox(height: AppSpacing.xl),
                              _AccountSetupHeader(),
                              const SizedBox(height: AppSpacing.md),
                              AppTextField(
                                controller: _displayName,
                                label: l10n.tr('auth.fullName'),
                                hint: l10n.tr('auth.nameHint'),
                                prefixAppIcon: AppIcons.profile,
                                textInputAction: TextInputAction.next,
                                autofillHints: const [AutofillHints.name],
                                validator: (value) =>
                                    (value?.trim().length ?? 0) < 2
                                    ? l10n.tr('auth.nameInvalid')
                                    : null,
                              ),
                              const SizedBox(height: AppSpacing.md),
                              AppTextField(
                                controller: _password,
                                label: l10n.tr('auth.password'),
                                hint: l10n.tr(
                                  'guardianInvitation.passwordHint',
                                ),
                                prefixAppIcon: AppIcons.lock,
                                obscureText: true,
                                textInputAction: TextInputAction.done,
                                autofillHints: const [
                                  AutofillHints.newPassword,
                                ],
                                validator: (value) => (value?.length ?? 0) < 10
                                    ? l10n.tr(
                                        'guardianInvitation.passwordInvalid',
                                      )
                                    : null,
                                onSubmitted: (_) => _accept(signedIn),
                              ),
                            ],
                            if (_error != null) ...[
                              const SizedBox(height: AppSpacing.lg),
                              AppStatusBanner(
                                icon: AppIcons.error,
                                tone: AppStateTone.error,
                                title: l10n.tr('guardianInvitation.errorTitle'),
                                message: _error!,
                              ),
                            ],
                            const SizedBox(height: AppSpacing.xl),
                            FilledButton.icon(
                              onPressed: _loading
                                  ? null
                                  : () => _accept(signedIn),
                              icon: _loading
                                  ? const SizedBox.square(
                                      dimension: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const AppIcon(AppIcons.check, size: 20),
                              label: Text(
                                _loading
                                    ? l10n.tr('guardianInvitation.accepting')
                                    : l10n.tr(
                                        'guardianInvitation.acceptAction',
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (!signedIn) ...[
              const SizedBox(height: AppSpacing.md),
              Center(
                child: TextButton.icon(
                  onPressed: _loading ? null : _openSignIn,
                  icon: const AppIcon(AppIcons.arrowRight, size: 19),
                  label: Text(l10n.tr('guardianInvitation.existingAccount')),
                ),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }

  Future<void> _changeAccount() async {
    final shouldContinue = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        icon: const AppIcon(AppIcons.switchUser, size: 28),
        title: Text(context.l10n.tr('guardianInvitation.changeAccountTitle')),
        content: Text(context.l10n.tr('guardianInvitation.changeAccountBody')),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(context.l10n.tr('common.cancel')),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(
              context.l10n.tr('guardianInvitation.changeAccountAction'),
            ),
          ),
        ],
      ),
    );
    if (shouldContinue != true || !mounted) return;
    await context.read<AuthController>().signOut();
    if (!mounted) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }

  void _openSignIn() => Navigator.pushNamed(context, AppRoutes.signIn);

  Future<void> _accept(bool signedIn) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final repository = context.read<GuardianRepository?>();
    if (repository == null) {
      setState(
        () => _error = context.l10n.tr('guardianInvitation.unavailable'),
      );
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await repository.acceptInvitation(
        token: _useOtp ? null : _token.text.trim(),
        invitationId: _useOtp ? _invitationId.text.trim() : null,
        otp: _useOtp ? _otp.text.trim() : null,
        displayName: signedIn ? null : _displayName.text.trim(),
        password: signedIn ? null : _password.text,
      );
      if (!mounted) return;
      TextInput.finishAutofillContext();
      if (signedIn) {
        try {
          await context.read<AuthController>().refreshIdentity();
        } on AppException {
          // The invitation has already been accepted. SessionGate retries the
          // identity refresh rather than inviting a duplicate submission.
        }
        if (!mounted) return;
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.home,
          (_) => false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.l10n.tr('guardianInvitation.accepted')),
          ),
        );
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.signIn,
          (_) => false,
        );
      }
    } on AppException catch (error) {
      if (mounted) setState(() => _error = error.message);
    } catch (_) {
      if (mounted) {
        setState(
          () => _error = context.l10n.tr('guardianInvitation.acceptFailed'),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }
}

class _AccountContext extends StatelessWidget {
  const _AccountContext({required this.auth, this.onChangeAccount});

  final AuthController auth;
  final VoidCallback? onChangeAccount;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final user = auth.user;
    final signedIn = user != null;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Row(
        children: [
          AppIconBadge(
            icon: signedIn ? AppIcons.verified : AppIcons.profile,
            size: 44,
            iconSize: 21,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.tr(
                    signedIn
                        ? 'guardianInvitation.continuingAs'
                        : 'guardianInvitation.notSignedIn',
                  ),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: AppSpacing.xxs),
                Text(
                  signedIn
                      ? user.email
                      : l10n.tr('guardianInvitation.notSignedInBody'),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          if (signedIn)
            TextButton(
              onPressed: onChangeAccount,
              child: Text(l10n.tr('guardianInvitation.changeAccount')),
            ),
        ],
      ),
    );
  }
}

class _AccountSetupHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        context.l10n.tr('guardianInvitation.setupTitle'),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      const SizedBox(height: AppSpacing.xs),
      Text(
        context.l10n.tr('guardianInvitation.setupBody'),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    ],
  );
}

class _OtpField extends StatelessWidget {
  const _OtpField({
    required this.controller,
    required this.label,
    required this.hint,
    required this.validator,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?) validator;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: Theme.of(context).textTheme.labelLarge),
      const SizedBox(height: AppSpacing.xs),
      TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        autofillHints: const [AutofillHints.oneTimeCode],
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(6),
        ],
        onFieldSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: const Center(
            widthFactor: 1,
            child: AppIcon(AppIcons.password, size: 21),
          ),
        ),
      ),
    ],
  );
}
