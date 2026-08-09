import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _current = TextEditingController();
  final _next = TextEditingController();

  @override
  void dispose() {
    _current.dispose();
    _next.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('auth.changePassword'))),
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
                  AppTextField(
                    controller: _current,
                    label: context.l10n.tr('auth.currentPassword'),
                    hint: context.l10n.tr('auth.currentPasswordHint'),
                    prefixIcon: Icons.lock_outline_rounded,
                    obscureText: true,
                    validator: (value) => value?.isNotEmpty == true
                        ? null
                        : context.l10n.tr('auth.currentPasswordRequired'),
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: _next,
                    label: context.l10n.tr('auth.newPassword'),
                    hint: context.l10n.tr('auth.password12Hint'),
                    prefixIcon: Icons.password_rounded,
                    obscureText: true,
                    validator: (value) => (value?.length ?? 0) < 12
                        ? context.l10n.tr('auth.password12Invalid')
                        : null,
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
                    child: Text(context.l10n.tr('auth.changePasswordAction')),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    context.l10n.tr('auth.securitySignOut'),
                    textAlign: TextAlign.center,
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
    final success = await context.read<AuthController>().changePassword(
      currentPassword: _current.text,
      newPassword: _next.text,
    );
    if (!mounted || !success) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }
}
