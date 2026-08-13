import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  final _passwordController = TextEditingController();
  bool _rememberEmail = true;
  bool _showValidation = false;

  @override
  void initState() {
    super.initState();
    final rememberedEmail = context.read<AuthController>().rememberedEmail;
    _emailController = TextEditingController(text: rememberedEmail ?? '');
    _rememberEmail = rememberedEmail?.isNotEmpty ?? false;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= AppBreakpoints.tablet;
              final padding = isWide ? AppSpacing.xxl : AppSpacing.lg;
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.all(padding),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: (constraints.maxHeight - (padding * 2)).clamp(
                      0,
                      double.infinity,
                    ),
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: isWide ? 920 : AppLayout.maxFormWidth,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: isWide
                            ? IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Expanded(child: _SignInHeader()),
                                    Expanded(
                                      child: _SignInForm(
                                        formKey: _formKey,
                                        emailController: _emailController,
                                        passwordController: _passwordController,
                                        rememberEmail: _rememberEmail,
                                        showValidation: _showValidation,
                                        auth: auth,
                                        onRememberChanged: _setRememberEmail,
                                        onSignIn: _signIn,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const _SignInHeader(),
                                  _SignInForm(
                                    formKey: _formKey,
                                    emailController: _emailController,
                                    passwordController: _passwordController,
                                    rememberEmail: _rememberEmail,
                                    showValidation: _showValidation,
                                    auth: auth,
                                    onRememberChanged: _setRememberEmail,
                                    onSignIn: _signIn,
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _setRememberEmail(bool value) {
    setState(() => _rememberEmail = value);
  }

  Future<void> _signIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _showValidation = true);
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final success = await context.read<AuthController>().signIn(
      email: _emailController.text.trim(),
      password: _passwordController.text,
      rememberEmail: _rememberEmail,
    );
    if (!mounted || !success) return;

    TextInput.finishAutofillContext();
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.home,
      (route) => false,
    );
  }
}

class _SignInHeader extends StatelessWidget {
  const _SignInHeader();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ColoredBox(
      color: colors.primary,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.onPrimary.withValues(alpha: .14),
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    border: Border.all(
                      color: colors.onPrimary.withValues(alpha: .22),
                    ),
                  ),
                  child: AppIcon(
                    AppIcons.book,
                    color: colors.onPrimary,
                    size: 25,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    context.l10n.tr('appName'),
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: colors.onPrimary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xxl),
            Text(
              context.l10n.tr('auth.welcome'),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: colors.onPrimary,
                height: 1.15,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              context.l10n.tr('auth.welcomeSubtitle'),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: colors.onPrimary.withValues(alpha: .84),
                height: 1.45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.rememberEmail,
    required this.showValidation,
    required this.auth,
    required this.onRememberChanged,
    required this.onSignIn,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool rememberEmail;
  final bool showValidation;
  final AuthController auth;
  final ValueChanged<bool> onRememberChanged;
  final VoidCallback onSignIn;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: AutofillGroup(
        child: Form(
          key: formKey,
          autovalidateMode: showValidation
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTextField(
                controller: emailController,
                label: context.l10n.tr('auth.email'),
                hint: context.l10n.tr('auth.emailHint'),
                prefixAppIcon: AppIcons.mail,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  final email = value?.trim() ?? '';
                  if (email.isEmpty) {
                    return context.l10n.tr('auth.emailRequired');
                  }
                  return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email)
                      ? null
                      : context.l10n.tr('auth.emailInvalid');
                },
                onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
              const SizedBox(height: AppSpacing.md),
              AppTextField(
                controller: passwordController,
                label: context.l10n.tr('auth.password'),
                hint: context.l10n.tr('auth.passwordHint'),
                prefixAppIcon: AppIcons.lock,
                obscureText: true,
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.password],
                validator: (value) => value?.isNotEmpty == true
                    ? null
                    : context.l10n.tr('auth.passwordRequired'),
                onSubmitted: (_) => onSignIn(),
              ),
              const SizedBox(height: AppSpacing.xs),
              LayoutBuilder(
                builder: (context, constraints) {
                  final rememberControl = InkWell(
                    onTap: auth.isLoading
                        ? null
                        : () => onRememberChanged(!rememberEmail),
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: rememberEmail,
                          onChanged: auth.isLoading
                              ? null
                              : (value) => onRememberChanged(value ?? false),
                        ),
                        Flexible(
                          child: Text(
                            context.l10n.tr('auth.rememberEmail'),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                  final forgotButton = TextButton(
                    onPressed: auth.isLoading
                        ? null
                        : () => Navigator.pushNamed(
                            context,
                            AppRoutes.forgotPassword,
                          ),
                    child: Text(context.l10n.tr('auth.forgotPassword')),
                  );
                  if (constraints.maxWidth < 350 ||
                      MediaQuery.textScalerOf(context).scale(1) > 1.3) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        rememberControl,
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: forgotButton,
                        ),
                      ],
                    );
                  }
                  return Row(
                    children: [
                      Expanded(child: rememberControl),
                      forgotButton,
                    ],
                  );
                },
              ),
              AnimatedSwitcher(
                duration: MediaQuery.disableAnimationsOf(context)
                    ? Duration.zero
                    : const Duration(milliseconds: 180),
                child: auth.errorMessage == null
                    ? const SizedBox.shrink(key: ValueKey('no-error'))
                    : Padding(
                        key: const ValueKey('error'),
                        padding: const EdgeInsets.only(top: AppSpacing.xs),
                        child: AppStatusBanner(
                          message: auth.errorMessage!,
                          icon: AppIcons.error,
                          tone: AppStateTone.error,
                        ),
                      ),
              ),
              const SizedBox(height: AppSpacing.lg),
              FilledButton(
                onPressed: auth.isLoading ? null : onSignIn,
                child: AnimatedSwitcher(
                  duration: MediaQuery.disableAnimationsOf(context)
                      ? Duration.zero
                      : const Duration(milliseconds: 160),
                  child: auth.isLoading
                      ? SizedBox.square(
                          key: const ValueKey('loading'),
                          dimension: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.4,
                            color: colors.onPrimary,
                          ),
                        )
                      : Wrap(
                          key: const ValueKey('label'),
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: AppSpacing.xs,
                          children: [
                            Text(context.l10n.tr('auth.signIn')),
                            const AppIcon(AppIcons.arrowRight, size: 19),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              Text(
                context.l10n.tr('auth.newHere'),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: AppSpacing.md),
              OutlinedButton(
                onPressed: auth.isLoading
                    ? null
                    : () => Navigator.pushNamed(context, AppRoutes.signUp),
                child: Text(context.l10n.tr('auth.createAccount')),
              ),
              const SizedBox(height: AppSpacing.xs),
              TextButton.icon(
                onPressed: auth.isLoading
                    ? null
                    : () => Navigator.pushNamed(
                        context,
                        AppRoutes.guardianInvitation,
                      ),
                icon: const AppIcon(AppIcons.guardian, size: 20),
                label: Text(context.l10n.tr('guardianInvitation.iconLabel')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
