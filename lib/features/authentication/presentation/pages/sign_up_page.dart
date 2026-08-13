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

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  bool _agreed = false;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: AppScrollablePage(
          maxWidth: AppLayout.maxFormWidth,
          children: [
            Center(
              child: AppIconBadge(
                icon: AppIcons.student,
                size: 68,
                iconSize: 32,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              context.l10n.tr('auth.createTitle'),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              context.l10n.tr('auth.createSubtitle'),
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant),
            ),
            const SizedBox(height: AppSpacing.xl),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.xl),
                child: AutofillGroup(
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppTextField(
                          controller: _name,
                          label: context.l10n.tr('auth.fullName'),
                          hint: context.l10n.tr('auth.nameHint'),
                          prefixAppIcon: AppIcons.profile,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.name],
                          validator: (value) => (value?.trim().length ?? 0) < 2
                              ? context.l10n.tr('auth.nameInvalid')
                              : null,
                          onSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        AppTextField(
                          controller: _email,
                          label: context.l10n.tr('auth.email'),
                          hint: context.l10n.tr('auth.emailHint'),
                          prefixAppIcon: AppIcons.mail,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.email],
                          validator: (value) =>
                              RegExp(
                                r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                              ).hasMatch(value?.trim() ?? '')
                              ? null
                              : context.l10n.tr('auth.emailInvalid'),
                          onSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        AppTextField(
                          controller: _password,
                          label: context.l10n.tr('auth.password'),
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
                          controller: _confirmPassword,
                          label: context.l10n.tr('auth.confirmPassword'),
                          hint: context.l10n.tr('auth.confirmHint'),
                          prefixAppIcon: AppIcons.password,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: (value) => value != _password.text
                              ? context.l10n.tr('auth.passwordMismatch')
                              : null,
                          onSubmitted: (_) => _createAccount(),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.surfaceContainerHigh,
                            borderRadius: BorderRadius.circular(AppRadius.md),
                          ),
                          child: CheckboxListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.sm,
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _agreed,
                            onChanged: auth.isLoading
                                ? null
                                : (value) =>
                                      setState(() => _agreed = value ?? false),
                            title: Text(context.l10n.tr('auth.terms')),
                          ),
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
                          onPressed: auth.isLoading ? null : _createAccount,
                          child: auth.isLoading
                              ? SizedBox.square(
                                  dimension: 22,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.5,
                                    color: colors.onPrimary,
                                  ),
                                )
                              : Text(context.l10n.tr('auth.createAccount')),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(context.l10n.tr('auth.alreadyAccount')),
                TextButton(
                  onPressed: auth.isLoading
                      ? null
                      : () => Navigator.pop(context),
                  child: Text(context.l10n.tr('auth.signIn')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _createAccount() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (!_agreed) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(context.l10n.tr('auth.acceptTerms'))),
      );
      return;
    }
    final success = await context.read<AuthController>().signUp(
      name: _name.text.trim(),
      email: _email.text.trim(),
      password: _password.text,
    );
    if (!mounted || !success) return;
    Navigator.pushReplacementNamed(
      context,
      AppRoutes.verifyEmail,
      arguments: _email.text.trim(),
    );
  }
}
