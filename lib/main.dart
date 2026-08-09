import 'package:edtech_application/core/routing/app_router.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/network/app_dependencies.dart';
import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/core/theme/app_theme.dart';
import 'package:edtech_application/core/theme/theme_controller.dart';
import 'package:edtech_application/features/authentication/data/repositories/mock_auth_repository.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/localization/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final dependencies = AppDependencies.live();
  runApp(
    MyApp(
      storage: LocalStorage(preferences),
      authRepository: dependencies.authRepository,
      studentRepository: dependencies.studentRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.storage,
    this.authRepository,
    this.studentRepository,
    super.key,
  });

  final LocalStorage storage;
  final AuthRepository? authRepository;
  final StudentLmsRepository? studentRepository;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController(storage)),
        ChangeNotifierProvider(create: (_) => LocaleController(storage)),
        ChangeNotifierProvider(
          create: (_) => AuthController(
            repository: authRepository ?? const MockAuthRepository(),
            storage: storage,
          ),
        ),
        Provider<StudentLmsRepository?>.value(value: studentRepository),
        ChangeNotifierProvider(
          create: (_) => StudentLmsController(repository: studentRepository),
        ),
      ],
      child: const _AppView(),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeController>().themeMode;
    final locale = context.watch<LocaleController>().locale;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => context.l10n.tr('appName'),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
