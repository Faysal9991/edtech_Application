import 'package:edtech_application/core/routing/app_router.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/network/app_dependencies.dart';
import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/core/session/organization_context.dart';
import 'package:edtech_application/core/theme/app_theme.dart';
import 'package:edtech_application/core/theme/theme_controller.dart';
import 'package:edtech_application/features/authentication/data/repositories/mock_auth_repository.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/guardian/data/guardian_repository.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_service.dart';
import 'package:edtech_application/features/notifications/data/notification_repository.dart';
import 'package:edtech_application/features/teacher/data/teacher_repository.dart';
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
      teacherRepository: dependencies.teacherRepository,
      guardianRepository: dependencies.guardianRepository,
      notificationRepository: dependencies.notificationRepository,
      organizationContext: dependencies.organizationContext,
      offlineLearningService: dependencies.offlineLearningService,
      onSessionChanged: dependencies.applySession,
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({
    required this.storage,
    this.authRepository,
    this.studentRepository,
    this.teacherRepository,
    this.guardianRepository,
    this.notificationRepository,
    OrganizationContext? organizationContext,
    this.offlineLearningService,
    this.onSessionChanged,
    super.key,
  }) : organizationContext = organizationContext ?? OrganizationContext();

  final LocalStorage storage;
  final AuthRepository? authRepository;
  final StudentLmsRepository? studentRepository;
  final TeacherRepository? teacherRepository;
  final GuardianRepository? guardianRepository;
  final NotificationRepository? notificationRepository;
  final OrganizationContext organizationContext;
  final OfflineLearningService? offlineLearningService;
  final Future<void> Function(AppSession? session)? onSessionChanged;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController(storage)),
        ChangeNotifierProvider(create: (_) => LocaleController(storage)),
        Provider<LocalStorage>.value(value: storage),
        ChangeNotifierProvider<OrganizationContext>.value(
          value: organizationContext,
        ),
        ChangeNotifierProvider(
          create: (_) => AuthController(
            repository: authRepository ?? const MockAuthRepository(),
            storage: storage,
            organizationContext: organizationContext,
            onSessionChanged: onSessionChanged,
          ),
        ),
        Provider<StudentLmsRepository?>.value(value: studentRepository),
        Provider<TeacherRepository?>.value(value: teacherRepository),
        Provider<GuardianRepository?>.value(value: guardianRepository),
        Provider<NotificationRepository?>.value(value: notificationRepository),
        Provider<OfflineLearningService?>.value(value: offlineLearningService),
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
