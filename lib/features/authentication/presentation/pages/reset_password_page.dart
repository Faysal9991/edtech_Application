import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('auth.resetPassword'))),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(Icons.password_rounded, size: 64),
                  const SizedBox(height: 24),
                  AppTextField(
                    controller: _token,
                    label: context.l10n.tr('auth.resetToken'),
                    hint: context.l10n.tr('auth.verificationHint'),
                    prefixIcon: Icons.key_rounded,
                    validator: (value) {
                      final length = value?.trim().length ?? 0;
                      return length >= 32 && length <= 256
                          ? null
                          : context.l10n.tr('auth.invalidVerificationToken');
                    },
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: _password,
                    label: context.l10n.tr('auth.newPassword'),
                    hint: context.l10n.tr('auth.password12Hint'),
                    prefixIcon: Icons.lock_outline_rounded,
                    obscureText: true,
                    validator: (value) => (value?.length ?? 0) < 12
                        ? context.l10n.tr('auth.password12Invalid')
                        : null,
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: _confirmation,
                    label: context.l10n.tr('auth.confirmNewPassword'),
                    hint: context.l10n.tr('auth.confirmHint'),
                    prefixIcon: Icons.lock_reset_rounded,
                    obscureText: true,
                    validator: (value) => value == _password.text
                        ? null
                        : context.l10n.tr('auth.passwordMismatch'),
                  ),
                  if (auth.errorMessage != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      auth.errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: auth.isLoading ? null : _submit,
                    child: auth.isLoading
                        ? const SizedBox.square(
                            dimension: 22,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              color: Colors.white,
                            ),
                          )
                        : Text(context.l10n.tr('auth.changePasswordAction')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final success = await context.read<AuthController>().resetPassword(
      token: _token.text.trim(),
      newPassword: _password.text,
    );
    if (!mounted || !success) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }
}
