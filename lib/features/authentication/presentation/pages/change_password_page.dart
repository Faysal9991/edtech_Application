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
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('auth.changePassword'))),
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
                          controller: _current,
                          label: context.l10n.tr('auth.currentPassword'),
                          hint: context.l10n.tr('auth.currentPasswordHint'),
                          prefixAppIcon: AppIcons.lock,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.password],
                          validator: (value) => value?.isNotEmpty == true
                              ? null
                              : context.l10n.tr('auth.currentPasswordRequired'),
                          onSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        AppTextField(
                          controller: _next,
                          label: context.l10n.tr('auth.newPassword'),
                          hint: context.l10n.tr('auth.password12Hint'),
                          prefixAppIcon: AppIcons.password,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: (value) => (value?.length ?? 0) < 12
                              ? context.l10n.tr('auth.password12Invalid')
                              : null,
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
            const SizedBox(height: AppSpacing.md),
            AppStatusBanner(
              message: context.l10n.tr('auth.securitySignOut'),
              icon: AppIcons.warning,
              tone: AppStateTone.warning,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final success = await context.read<AuthController>().changePassword(
      currentPassword: _current.text,
      newPassword: _next.text,
    );
    if (!mounted || !success) return;
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signIn, (_) => false);
  }
}
