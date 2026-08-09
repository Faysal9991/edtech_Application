import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
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

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppEntrance.popIn(
                    child: FloatingAnimation(
                      distance: 5,
                      child: Container(
                        width: 62,
                        height: 62,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.waving_hand_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  AppEntrance.fadeInLeft(
                    delay: const Duration(milliseconds: 80),
                    child: Text(
                      context.l10n.tr('auth.createTitle'),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  AppEntrance.fadeInLeft(
                    delay: const Duration(milliseconds: 140),
                    child: Text(
                      context.l10n.tr('auth.createSubtitle'),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  StaggeredAnimation(
                    index: 0,
                    child: AppTextField(
                      controller: _name,
                      label: context.l10n.tr('auth.fullName'),
                      hint: context.l10n.tr('auth.nameHint'),
                      prefixIcon: Icons.person_outline_rounded,
                      textInputAction: TextInputAction.next,
                      validator: (value) => (value?.trim().length ?? 0) < 2
                          ? context.l10n.tr('auth.nameInvalid')
                          : null,
                    ),
                  ),
                  const SizedBox(height: 18),
                  StaggeredAnimation(
                    index: 1,
                    child: AppTextField(
                      controller: _email,
                      label: context.l10n.tr('auth.email'),
                      hint: context.l10n.tr('auth.emailHint'),
                      prefixIcon: Icons.mail_outline_rounded,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) =>
                          RegExp(
                            r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                          ).hasMatch(value?.trim() ?? '')
                          ? null
                          : context.l10n.tr('auth.emailInvalid'),
                    ),
                  ),
                  const SizedBox(height: 18),
                  StaggeredAnimation(
                    index: 2,
                    child: AppTextField(
                      controller: _password,
                      label: context.l10n.tr('auth.password'),
                      hint: context.l10n.tr('auth.password12Hint'),
                      prefixIcon: Icons.lock_outline_rounded,
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      validator: (value) => (value?.length ?? 0) < 12
                          ? context.l10n.tr('auth.password12Invalid')
                          : null,
                    ),
                  ),
                  const SizedBox(height: 18),
                  StaggeredAnimation(
                    index: 3,
                    child: AppTextField(
                      controller: _confirmPassword,
                      label: context.l10n.tr('auth.confirmPassword'),
                      hint: context.l10n.tr('auth.confirmHint'),
                      prefixIcon: Icons.lock_reset_rounded,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      validator: (value) => value != _password.text
                          ? context.l10n.tr('auth.passwordMismatch')
                          : null,
                      onSubmitted: (_) => _createAccount(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _agreed,
                    onChanged: (value) =>
                        setState(() => _agreed = value ?? false),
                    title: Text(context.l10n.tr('auth.terms')),
                  ),
                  const SizedBox(height: 14),
                  if (auth.errorMessage != null) ...[
                    Text(
                      auth.errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                  StaggeredAnimation(
                    index: 5,
                    child: PressableScale(
                      child: FilledButton(
                        onPressed: auth.isLoading ? null : _createAccount,
                        child: auth.isLoading
                            ? const SizedBox.square(
                                dimension: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: Colors.white,
                                ),
                              )
                            : Text(context.l10n.tr('auth.createAccount')),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.l10n.tr('auth.alreadyAccount')),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(context.l10n.tr('auth.signIn')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _createAccount() async {
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
