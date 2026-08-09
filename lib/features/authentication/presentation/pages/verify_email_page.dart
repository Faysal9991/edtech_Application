import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({required this.email, super.key});

  final String email;

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  late final TextEditingController _token;

  @override
  void initState() {
    super.initState();
    _token = TextEditingController(
      text: context.read<AuthController>().pendingVerificationToken ?? '',
    );
  }

  @override
  void dispose() {
    _token.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.verified_user_outlined,
                  size: 68,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 20),
                Text(
                  context.l10n.tr('auth.verifyEmail'),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  context.l10n.tr(
                    'auth.verificationInstruction',
                    args: {'email': widget.email},
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),
                TextField(
                  controller: _token,
                  minLines: 2,
                  maxLines: 3,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    labelText: context.l10n.tr('auth.verificationToken'),
                    hintText: context.l10n.tr('auth.verificationHint'),
                  ),
                ),
                if (auth.registrationMessage != null) ...[
                  const SizedBox(height: 10),
                  Text(auth.registrationMessage!, textAlign: TextAlign.center),
                ],
                if (auth.errorMessage != null) ...[
                  const SizedBox(height: 10),
                  Text(
                    auth.errorMessage!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
                const SizedBox(height: 18),
                FilledButton(
                  onPressed: auth.isLoading
                      ? null
                      : () async {
                          final token = _token.text.trim();
                          if (token.length < 32 || token.length > 256) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  context.l10n.tr(
                                    'auth.invalidVerificationToken',
                                  ),
                                ),
                              ),
                            );
                            return;
                          }
                          final success = await context
                              .read<AuthController>()
                              .verifyEmail(token);
                          if (!context.mounted || !success) return;
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.signIn,
                            (route) => false,
                          );
                        },
                  child: auth.isLoading
                      ? const SizedBox.square(
                          dimension: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: Colors.white,
                          ),
                        )
                      : Text(context.l10n.tr('auth.verifyAction')),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: auth.isLoading
                      ? null
                      : () async {
                          final success = await context
                              .read<AuthController>()
                              .resendVerification(widget.email);
                          if (!context.mounted || !success) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                context.l10n.tr('auth.verificationSent'),
                              ),
                            ),
                          );
                        },
                  child: Text(context.l10n.tr('auth.resendVerification')),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, AppRoutes.signIn),
                  child: Text(context.l10n.tr('auth.backToSignIn')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
