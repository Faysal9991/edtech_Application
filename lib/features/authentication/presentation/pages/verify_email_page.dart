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

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({required this.email, super.key});

  final String email;

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final _formKey = GlobalKey<FormState>();
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
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: AppScrollablePage(
          maxWidth: AppLayout.maxFormWidth,
          children: [
            const Center(
              child: AppIconBadge(
                icon: AppIcons.verified,
                size: 68,
                iconSize: 32,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              context.l10n.tr('auth.verifyEmail'),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              context.l10n.tr(
                'auth.verificationInstruction',
                args: {'email': widget.email},
              ),
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
                        controller: _token,
                        label: context.l10n.tr('auth.verificationToken'),
                        hint: context.l10n.tr('auth.verificationHint'),
                        prefixAppIcon: AppIcons.shield,
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        autofillHints: const [AutofillHints.oneTimeCode],
                        validator: (value) {
                          final length = value?.trim().length ?? 0;
                          return length >= 32 && length <= 256
                              ? null
                              : context.l10n.tr(
                                  'auth.invalidVerificationToken',
                                );
                        },
                        onSubmitted: (_) => _verify(),
                      ),
                      if (auth.registrationMessage != null) ...[
                        const SizedBox(height: AppSpacing.md),
                        AppStatusBanner(
                          message: auth.registrationMessage!,
                          icon: AppIcons.info,
                        ),
                      ],
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
                        onPressed: auth.isLoading ? null : _verify,
                        child: auth.isLoading
                            ? SizedBox.square(
                                dimension: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: colors.onPrimary,
                                ),
                              )
                            : Text(context.l10n.tr('auth.verifyAction')),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      OutlinedButton(
                        onPressed: auth.isLoading ? null : _resend,
                        child: Text(context.l10n.tr('auth.resendVerification')),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      TextButton(
                        onPressed: auth.isLoading
                            ? null
                            : () => Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.signIn,
                              ),
                        child: Text(context.l10n.tr('auth.backToSignIn')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _verify() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.tr('auth.invalidVerificationToken')),
        ),
      );
      return;
    }
    final success = await context.read<AuthController>().verifyEmail(
      _token.text.trim(),
    );
    if (!mounted || !success) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.signIn,
      (route) => false,
    );
  }

  Future<void> _resend() async {
    final success = await context.read<AuthController>().resendVerification(
      widget.email,
    );
    if (!mounted || !success) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(context.l10n.tr('auth.verificationSent'))),
    );
  }
}
