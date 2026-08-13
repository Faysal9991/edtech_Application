import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _restoreSession());
  }

  Future<void> _restoreSession() async {
    final authenticated = await context.read<AuthController>().restoreSession();
    if (!mounted) return;
    Navigator.pushReplacementNamed(
      context,
      authenticated ? AppRoutes.home : AppRoutes.signIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _LogoMark(),
            const SizedBox(height: 18),
            Text(
              context.l10n.tr('appName'),
              style: const TextStyle(
                color: AppColors.textOnPrimary,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              context.l10n.tr('appTagline'),
              style: const TextStyle(color: AppColors.primaryLight),
            ),
            const SizedBox(height: 24),
            Semantics(
              liveRegion: true,
              label: context.l10n.tr('common.loading'),
              child: const SizedBox.square(
                dimension: 22,
                child: CircularProgressIndicator(
                  color: AppColors.textOnPrimary,
                  strokeWidth: 2.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LogoMark extends StatelessWidget {
  const _LogoMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      height: 82,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const AppIcon(AppIcons.book, color: AppColors.primary, size: 42),
    );
  }
}
