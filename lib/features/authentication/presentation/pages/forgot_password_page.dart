import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/core/routing/app_routes.dart';

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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: _sent ? _Success(email: _email.text) : _form(context),
          ),
        ),
      ),
    );
  }

  Widget _form(BuildContext context) {
    final auth = context.watch<AuthController>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: const Icon(Icons.lock_reset_rounded, size: 34),
          ),
          const SizedBox(height: 24),
          Text(
            context.l10n.tr('auth.forgotTitle'),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.tr('auth.forgotSubtitle'),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 28),
          AppTextField(
            controller: _email,
            label: context.l10n.tr('auth.email'),
            hint: context.l10n.tr('auth.emailHint'),
            prefixIcon: Icons.mail_outline_rounded,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                RegExp(
                  r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                ).hasMatch(value?.trim() ?? '')
                ? null
                : context.l10n.tr('auth.emailInvalid'),
          ),
          const SizedBox(height: 18),
          if (auth.errorMessage != null) ...[
            Text(
              auth.errorMessage!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 12),
          ],
          FilledButton(
            onPressed: auth.isLoading
                ? null
                : () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      final success = await context
                          .read<AuthController>()
                          .forgotPassword(_email.text.trim());
                      if (mounted && success) setState(() => _sent = true);
                    }
                  },
            child: auth.isLoading
                ? const SizedBox.square(
                    dimension: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: Colors.white,
                    ),
                  )
                : Text(context.l10n.tr('auth.sendRecovery')),
          ),
        ],
      ),
    );
  }
}

class _Success extends StatelessWidget {
  const _Success({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.mark_email_read_rounded,
          color: AppColors.success,
          size: 72,
        ),
        const SizedBox(height: 20),
        Text(
          context.l10n.tr('auth.checkEmail'),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          context.l10n.tr('auth.recoverySent', args: {'email': email}),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        FilledButton.tonal(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.tr('auth.backToSignIn')),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.resetPassword),
          child: Text(context.l10n.tr('auth.hasResetToken')),
        ),
      ],
    );
  }
}
