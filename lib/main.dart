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
import 'package:edtech_application/features/learning/data/services/offline_learning_service.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/localization/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final dependencies = AppDependencies.live(preferences);
  runApp(
    MyApp(
      storage: LocalStorage(preferences),
      authRepository: dependencies.authRepository,
      studentRepository: dependencies.studentRepository,
      offlineLearningService: dependencies.offlineLearningService,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.storage,
    this.authRepository,
    this.studentRepository,
    this.offlineLearningService,
    super.key,
  });

  final LocalStorage storage;
  final AuthRepository? authRepository;
  final StudentLmsRepository? studentRepository;
  final OfflineLearningService? offlineLearningService;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController(storage)),
        ChangeNotifierProvider(create: (_) => LocaleController(storage)),
        Provider<LocalStorage>.value(value: storage),
        ChangeNotifierProvider(
          create: (_) => AuthController(
            repository: authRepository ?? const MockAuthRepository(),
            storage: storage,
          ),
        ),
        Provider<StudentLmsRepository?>.value(value: studentRepository),
        Provider<OfflineLearningService?>.value(value: offlineLearningService),
        ChangeNotifierProvider(
          create: (_) => StudentLmsController(repository: studentRepository),
        ),
      ],
      child: _AppView(offlineLearningService: offlineLearningService),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView({this.offlineLearningService});

  final OfflineLearningService? offlineLearningService;

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeController>().themeMode;
    final locale = context.watch<LocaleController>().locale;

    final app = MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRouter.navigatorKey,
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
    final offline = offlineLearningService;
    return offline == null
        ? app
        : _OfflineSyncLifecycle(service: offline, child: app);
  }
}

class _OfflineSyncLifecycle extends StatefulWidget {
  const _OfflineSyncLifecycle({required this.service, required this.child});

  final OfflineLearningService service;
  final Widget child;

  @override
  State<_OfflineSyncLifecycle> createState() => _OfflineSyncLifecycleState();
}

class _OfflineSyncLifecycleState extends State<_OfflineSyncLifecycle>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    widget.service.startConnectivityMonitoring();
    WidgetsBinding.instance.addPostFrameCallback((_) => _sync());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _sync();
  }

  Future<void> _sync() async {
    try {
      await widget.service.removeExpiredOrRevokedContent();
      await widget.service.syncPending();
    } catch (_) {
      // Offline/network failures deliberately leave the durable outbox intact.
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    widget.service.stopConnectivityMonitoring();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
