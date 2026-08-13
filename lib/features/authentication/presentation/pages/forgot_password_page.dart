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

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  bool _sent = false;

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AppScrollablePage(
        maxWidth: AppLayout.maxFormWidth,
        children: [_sent ? _Success(email: _email.text) : _form(context)],
      ),
    );
  }

  Widget _form(BuildContext context) {
    final auth = context.watch<AuthController>();
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        const AppIconBadge(icon: AppIcons.password, size: 68, iconSize: 32),
        const SizedBox(height: AppSpacing.lg),
        Text(
          context.l10n.tr('auth.forgotTitle'),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          context.l10n.tr('auth.forgotSubtitle'),
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant),
        ),
        const SizedBox(height: AppSpacing.xl),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppTextField(
                    controller: _email,
                    label: context.l10n.tr('auth.email'),
                    hint: context.l10n.tr('auth.emailHint'),
                    prefixAppIcon: AppIcons.mail,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.email],
                    validator: (value) =>
                        RegExp(
                          r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                        ).hasMatch(value?.trim() ?? '')
                        ? null
                        : context.l10n.tr('auth.emailInvalid'),
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
                        : Text(context.l10n.tr('auth.sendRecovery')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final success = await context.read<AuthController>().forgotPassword(
      _email.text.trim(),
    );
    if (mounted && success) setState(() => _sent = true);
  }
}

class _Success extends StatelessWidget {
  const _Success({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppStateView(
              icon: AppIcons.mail,
              title: context.l10n.tr('auth.checkEmail'),
              message: context.l10n.tr(
                'auth.recoverySent',
                args: {'email': email},
              ),
              tone: AppStateTone.success,
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pop(context),
              child: Text(context.l10n.tr('auth.backToSignIn')),
            ),
            const SizedBox(height: AppSpacing.xs),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.resetPassword),
              child: Text(context.l10n.tr('auth.hasResetToken')),
            ),
          ],
        ),
      ),
    );
  }
}
