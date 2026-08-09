import 'package:animate_do/animate_do.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
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

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  bool _rememberEmail = true;
  bool _obscurePassword = true;
  bool _showValidation = false;

  @override
  void initState() {
    super.initState();

    final rememberedEmail = context.read<AuthController>().rememberedEmail;

    _emailController = TextEditingController(text: rememberedEmail ?? '');

    _rememberEmail = rememberedEmail != null && rememberedEmail.isNotEmpty;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 700;

            return SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Stack(
                  children: [
                    // Soft decorative background glow — adds depth without
                    // competing with the content.
                    Positioned(
                      top: -80,
                      right: -60,
                      child: _SoftGlow(color: AppColors.primary, size: 220),
                    ),
                    Positioned(
                      top: 160,
                      left: -70,
                      child: _SoftGlow(color: AppColors.primary, size: 180),
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 480),
                        margin: isWide
                            ? const EdgeInsets.symmetric(
                                vertical: 40,
                                horizontal: 24,
                              )
                            : const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: isWide
                              ? BorderRadius.circular(32)
                              : const BorderRadius.vertical(
                                  bottom: Radius.circular(0),
                                ),
                          border: isWide
                              ? Border.all(
                                  color: Theme.of(context).colorScheme.outline,
                                )
                              : null,
                          boxShadow: isWide
                              ? [
                                  BoxShadow(
                                    color: AppColors.shadow.withValues(
                                      alpha: 0.9,
                                    ),
                                    blurRadius: 48,
                                    offset: const Offset(0, 24),
                                  ),
                                ]
                              : null,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FadeInDown(
                              duration: const Duration(milliseconds: 380),
                              from: 14,
                              child: const _SignInHeader(),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 450),
                              from: 18,
                              child: _SignInForm(
                                formKey: _formKey,
                                emailController: _emailController,
                                passwordController: _passwordController,
                                emailFocusNode: _emailFocusNode,
                                passwordFocusNode: _passwordFocusNode,
                                rememberEmail: _rememberEmail,
                                obscurePassword: _obscurePassword,
                                showValidation: _showValidation,
                                auth: auth,
                                onRememberChanged: (value) {
                                  setState(() {
                                    _rememberEmail = value;
                                  });
                                },
                                onPasswordVisibilityChanged: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                                onSignIn: _signIn,
                                onForgotPassword: () => Navigator.pushNamed(
                                  context,
                                  AppRoutes.forgotPassword,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _signIn() async {
    FocusManager.instance.primaryFocus?.unfocus();

    setState(() {
      _showValidation = true;
    });

    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    final success = await context.read<AuthController>().signIn(
      email: _emailController.text.trim(),
      password: _passwordController.text,
      rememberEmail: _rememberEmail,
    );

    if (!mounted) return;

    if (success) {
      TextInput.finishAutofillContext();

      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.home,
        (route) => false,
      );
    }
  }
}

/// A soft solid circle used purely for background depth.
class _SoftGlow extends StatelessWidget {
  const _SoftGlow({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withValues(alpha: 0.12),
        ),
      ),
    );
  }
}

class _SignInHeader extends StatelessWidget {
  const _SignInHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(28, 28, 28, 40),
      decoration: const BoxDecoration(color: AppColors.primary),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.textOnPrimary.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: AppColors.textOnPrimary.withValues(alpha: 0.28),
                    ),
                  ),
                  child: const AppIcon(
                    AppIcons.book,
                    color: AppColors.textOnPrimary,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  context.l10n.tr('appName'),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.textOnPrimary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              context.l10n.tr('auth.welcome'),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.textOnPrimary,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
                height: 1.15,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.tr('auth.welcomeSubtitle'),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textOnPrimary.withValues(alpha: 0.85),
                height: 1.4,
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
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.rememberEmail,
    required this.obscurePassword,
    required this.showValidation,
    required this.auth,
    required this.onRememberChanged,
    required this.onPasswordVisibilityChanged,
    required this.onSignIn,
    required this.onForgotPassword,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  final bool rememberEmail;
  final bool obscurePassword;
  final bool showValidation;

  final AuthController auth;

  final ValueChanged<bool> onRememberChanged;
  final VoidCallback onPasswordVisibilityChanged;
  final VoidCallback onSignIn;
  final VoidCallback onForgotPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      transform: Matrix4.translationValues(0, -20, 0),
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: AutofillGroup(
        child: Form(
          key: formKey,
          autovalidateMode: showValidation
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _AuthField(
                controller: emailController,
                focusNode: emailFocusNode,
                enabled: !auth.isLoading,
                label: context.l10n.tr('auth.email'),
                hint: context.l10n.tr('auth.emailHint'),
                icon: Icons.alternate_email_rounded,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  final email = value?.trim() ?? '';

                  if (email.isEmpty) {
                    return context.l10n.tr('auth.emailRequired');
                  }

                  final valid = RegExp(
                    r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                  ).hasMatch(email);

                  return valid ? null : context.l10n.tr('auth.emailInvalid');
                },
                onSubmitted: (_) {
                  passwordFocusNode.requestFocus();
                },
              ),

              const SizedBox(height: 18),

              _AuthField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                enabled: !auth.isLoading,
                label: context.l10n.tr('auth.password'),
                hint: context.l10n.tr('auth.passwordHint'),
                icon: Icons.lock_outline_rounded,
                obscureText: obscurePassword,
                enableSuggestions: false,
                autocorrect: false,
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.password],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.tr('auth.passwordRequired');
                  }

                  return null;
                },
                suffixIcon: IconButton(
                  tooltip: obscurePassword
                      ? context.l10n.tr('auth.showPassword')
                      : context.l10n.tr('auth.hidePassword'),
                  onPressed: onPasswordVisibilityChanged,
                  icon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 180),
                    transitionBuilder: (child, animation) => FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(scale: animation, child: child),
                    ),
                    child: Icon(
                      obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      key: ValueKey(obscurePassword),
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 21,
                    ),
                  ),
                ),
                onSubmitted: (_) => onSignIn(),
              ),

              const SizedBox(height: 6),

              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: rememberEmail,
                      activeColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: auth.isLoading
                          ? null
                          : (value) {
                              onRememberChanged(value ?? false);
                            },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: auth.isLoading
                          ? null
                          : () {
                              onRememberChanged(!rememberEmail);
                            },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          context.l10n.tr('auth.rememberEmail'),
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: auth.isLoading ? null : onForgotPassword,
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 10,
                      ),
                      minimumSize: Size.zero,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    child: Text(context.l10n.tr('auth.forgotPassword')),
                  ),
                ],
              ),

              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: auth.errorMessage != null
                    ? Padding(
                        key: const ValueKey('error'),
                        padding: const EdgeInsets.only(top: 8),
                        child: _ErrorMessage(message: auth.errorMessage!),
                      )
                    : const SizedBox.shrink(key: ValueKey('no-error')),
              ),

              const SizedBox(height: 22),

              _PrimarySignInButton(
                isLoading: auth.isLoading,
                onPressed: auth.isLoading ? null : onSignIn,
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      context.l10n.tr('auth.newHere'),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      thickness: 1,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: 50,
                child: OutlinedButton(
                  onPressed: auth.isLoading
                      ? null
                      : () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                    side: BorderSide(
                      color: AppColors.primary.withValues(alpha: 0.5),
                      width: 1.4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    context.l10n.tr('auth.createAccount'),
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Solid primary action button with a smooth loading state.
class _PrimarySignInButton extends StatelessWidget {
  const _PrimarySignInButton({
    required this.isLoading,
    required this.onPressed,
  });

  final bool isLoading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.primary,
          boxShadow: onPressed == null
              ? null
              : [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.35),
                    blurRadius: 18,
                    offset: const Offset(0, 10),
                  ),
                ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: onPressed,
            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: isLoading
                    ? const SizedBox.square(
                        key: ValueKey('loading'),
                        dimension: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.4,
                          color: AppColors.textOnPrimary,
                        ),
                      )
                    : Row(
                        key: const ValueKey('label'),
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.l10n.tr('auth.signIn'),
                            style: const TextStyle(
                              color: AppColors.textOnPrimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              letterSpacing: 0.1,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const AppIcon(
                            AppIcons.arrowRight,
                            color: AppColors.textOnPrimary,
                            size: 19,
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AuthField extends StatelessWidget {
  const _AuthField({
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.hint,
    required this.icon,
    required this.validator,
    this.enabled = true,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.suffixIcon,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final String hint;
  final IconData icon;
  final FormFieldValidator<String> validator;

  final bool enabled;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final Widget? suffixIcon;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 13.5,
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          enabled: enabled,
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          autocorrect: autocorrect,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          autofillHints: autofillHints,
          validator: validator,
          onFieldSubmitted: onSubmitted,
          cursorColor: AppColors.primary,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surfaceContainerHigh,
            prefixIcon: Icon(
              icon,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              size: 21,
            ),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            enabledBorder: _border(Theme.of(context).colorScheme.outline),
            focusedBorder: _border(AppColors.primary, width: 1.6),
            errorBorder: _border(Theme.of(context).colorScheme.error),
            focusedErrorBorder: _border(
              Theme.of(context).colorScheme.error,
              width: 1.6,
            ),
            errorStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.5,
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _border(Color color, {double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  const _ErrorMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.errorContainer,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.error.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline_rounded, color: colors.error, size: 20),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: colors.onErrorContainer,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
