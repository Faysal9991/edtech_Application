import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({this.initialToken = '', super.key});

  final String initialToken;

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _token;
  final _password = TextEditingController();
  final _confirmation = TextEditingController();

  @override
  void initState() {
    super.initState();
    _token = TextEditingController(text: widget.initialToken);
  }

  @override
  void dispose() {
    _token.dispose();
    _password.dispose();
    _confirmation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('auth.resetPassword'))),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: AppScrollablePage(
          maxWidth: AppLayout.maxFormWidth,
          children: [
            const Center(
              child: AppIconBadge(
                icon: AppIcons.password,
                size: 64,
                iconSize: 30,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.xl),
                child: AutofillGroup(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppTextField(
                          controller: _token,
                          label: context.l10n.tr('auth.resetToken'),
                          hint: context.l10n.tr('auth.verificationHint'),
                          prefixAppIcon: AppIcons.shield,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.oneTimeCode],
                          validator: (value) {
                            final length = value?.trim().length ?? 0;
                            return length >= 32 && length <= 256
                                ? null
                                : context.l10n.tr(
                                    'auth.invalidVerificationToken',
                                  );
                          },
                          onSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        AppTextField(
                          controller: _password,
                          label: context.l10n.tr('auth.newPassword'),
                          hint: context.l10n.tr('auth.password12Hint'),
                          prefixAppIcon: AppIcons.lock,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: (value) => (value?.length ?? 0) < 12
                              ? context.l10n.tr('auth.password12Invalid')
                              : null,
                          onSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        AppTextField(
                          controller: _confirmation,
                          label: context.l10n.tr('auth.confirmNewPassword'),
                          hint: context.l10n.tr('auth.confirmHint'),
                          prefixAppIcon: AppIcons.password,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: (value) => value == _password.text
                              ? null
                              : context.l10n.tr('auth.passwordMismatch'),
                          onSubmitted: (_) => _submit(),
                        ),
                        if (auth.errorMessage != null) ...[
                          const SizedBox(height: AppSpacing.md),
                          AppStatusBanner(
                            message: auth.errorMessage!,
                            icon: AppIcons.error,
                            tone: AppStateTone.error,
                          ),
                        ],
                        const SizedBox(height: AppSpacing.lg),
                        FilledButton(
                          onPressed: auth.isLoading ? null : _submit,
                          child: auth.isLoading
                              ? SizedBox.square(
                                  dimension: 22,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.5,
                                    color: colors.onPrimary,
                                  ),
                                )
                              : Text(
                                  context.l10n.tr('auth.changePasswordAction'),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final success = await context.read<AuthController>().resetPassword(
      token: _token.text.trim(),
      newPassword: _password.text,
    );
    if (!mounted || !success) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }
}
