import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/features/assessments/presentation/pages/assessments_page.dart';
import 'package:edtech_application/features/assessments/presentation/pages/assignment_page.dart';
import 'package:edtech_application/features/assessments/presentation/pages/exam_page.dart';
import 'package:edtech_application/features/assessments/presentation/pages/quiz_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/forgot_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/reset_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/change_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/splash_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/verify_email_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/session_gate_page.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/courses/presentation/pages/course_details_page.dart';
import 'package:edtech_application/features/guardian/presentation/pages/guardian_invitation_page.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/learning/presentation/pages/lesson_page.dart';
import 'package:edtech_application/features/learning/presentation/pages/student_services_page.dart';
import 'package:edtech_application/features/live_class/presentation/pages/live_classes_page.dart';
import 'package:edtech_application/features/live_class/presentation/pages/live_class_room_page.dart';
import 'package:edtech_application/features/notifications/presentation/pages/notifications_page.dart';
import 'package:edtech_application/features/notifications/data/notification_repository.dart';
import 'package:edtech_application/features/notifications/presentation/controllers/notification_controller.dart';
import 'package:edtech_application/features/payments/presentation/pages/payments_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/certificates_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/verify_certificate_page.dart';
import 'package:edtech_application/features/results/presentation/pages/results_page.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRouter {
  const AppRouter._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static const _studentOnlyRoutes = <String>{
    AppRoutes.courseDetails,
    AppRoutes.lesson,
    AppRoutes.studentServices,
    AppRoutes.assessments,
    AppRoutes.quiz,
    AppRoutes.exam,
    AppRoutes.assignment,
    AppRoutes.liveClasses,
    AppRoutes.liveRoom,
    AppRoutes.payments,
    AppRoutes.results,
    AppRoutes.certificates,
  };

  static Future<void> handleSessionExpired() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
        AppRoutes.signIn,
        (route) => false,
      );
    });
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.tryParse(settings.name ?? '');
    final routeName = uri?.path ?? settings.name;
    final routePage = switch (routeName) {
      AppRoutes.splash => const SplashPage(),
      AppRoutes.signIn => const SignInPage(),
      AppRoutes.signUp => const SignUpPage(),
      AppRoutes.forgotPassword => const ForgotPasswordPage(),
      AppRoutes.resetPassword => ResetPasswordPage(
        initialToken: settings.arguments is String
            ? settings.arguments! as String
            : '',
      ),
      AppRoutes.verifyEmail => VerifyEmailPage(
        email: settings.arguments is String
            ? settings.arguments! as String
            : 'your@email.com',
      ),
      AppRoutes.guardianInvitation => GuardianInvitationPage(
        initialToken:
            uri?.queryParameters['token'] ??
            (settings.arguments is String
                ? settings.arguments! as String
                : null),
      ),
      AppRoutes.changePassword => const ChangePasswordPage(),
      AppRoutes.editProfile => const EditProfilePage(),
      AppRoutes.home => const SessionGatePage(),
      AppRoutes.courseDetails =>
        settings.arguments is Course
            ? CourseDetailsPage(course: settings.arguments! as Course)
            : const _MissingCoursePage(),
      AppRoutes.lesson => switch (settings.arguments) {
        final LessonRouteArguments arguments => LessonPage(
          course: arguments.course,
          initialLessonId: arguments.initialLessonId,
        ),
        final Course course => LessonPage(course: course),
        _ => const _MissingCoursePage(),
      },
      AppRoutes.studentServices => const StudentServicesPage(),
      AppRoutes.assessments => const AssessmentsPage(),
      AppRoutes.quiz => QuizPage(
        quizId: settings.arguments is String
            ? settings.arguments! as String
            : null,
      ),
      AppRoutes.exam => ExamPage(
        examId: settings.arguments is String
            ? settings.arguments! as String
            : null,
      ),
      AppRoutes.assignment => AssignmentPage(
        assignmentId: settings.arguments is String
            ? settings.arguments! as String
            : null,
      ),
      AppRoutes.liveClasses => const LiveClassesPage(),
      AppRoutes.liveRoom => LiveClassRoomPage(
        liveClassId: settings.arguments is String
            ? settings.arguments! as String
            : null,
      ),
      AppRoutes.payments => PaymentsPage(
        course: settings.arguments is Course
            ? settings.arguments! as Course
            : null,
      ),
      AppRoutes.results => const ResultsPage(),
      AppRoutes.notifications => const _NotificationsRoutePage(),
      AppRoutes.certificates => const CertificatesPage(),
      AppRoutes.verifyCertificate => const VerifyCertificatePage(),
      _ => const _UnknownRoutePage(),
    };
    final page = _studentOnlyRoutes.contains(routeName)
        ? _StudentRouteScope(child: routePage)
        : routePage;

    return PageRouteBuilder<dynamic>(
      settings: settings,
      pageBuilder: (_, _, _) => page,
      transitionsBuilder: (context, animation, _, child) {
        if (MediaQuery.disableAnimationsOf(context)) return child;
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );
        final offset = Tween<Offset>(
          begin: const Offset(.018, .012),
          end: Offset.zero,
        ).animate(curved);
        return FadeTransition(
          opacity: curved,
          child: SlideTransition(position: offset, child: child),
        );
      },
      transitionDuration: const Duration(milliseconds: 220),
      reverseTransitionDuration: const Duration(milliseconds: 180),
    );
  }
}

class _StudentRouteScope extends StatelessWidget {
  const _StudentRouteScope({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    if (auth.activeRole != MobileRole.student) {
      return Scaffold(
        body: Center(
          child: AppStateView(
            icon: AppIcons.student,
            title: context.l10n.tr('router.studentRequired'),
            message: context.l10n.tr('router.studentRequiredBody'),
          ),
        ),
      );
    }
    return ChangeNotifierProvider(
      create: (_) => StudentLmsController(
        repository: context.read<StudentLmsRepository?>(),
      )..loadInitialData(),
      child: child,
    );
  }
}

class _MissingCoursePage extends StatelessWidget {
  const _MissingCoursePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('course.details'))),
      body: Center(child: Text(context.l10n.tr('course.notFound'))),
    );
  }
}

class _UnknownRoutePage extends StatelessWidget {
  const _UnknownRoutePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppStateView(
          icon: AppIcons.empty,
          title: context.l10n.tr('router.pageNotFound'),
          message: context.l10n.tr('router.pageNotFoundBody'),
          actionLabel: context.l10n.tr('router.backToSignIn'),
          onAction: () => Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.signIn,
            (route) => false,
          ),
        ),
      ),
    );
  }
}

class _NotificationsRoutePage extends StatelessWidget {
  const _NotificationsRoutePage();

  @override
  Widget build(BuildContext context) {
    final repository = context.read<NotificationRepository?>();
    if (repository == null) {
      return Scaffold(
        body: Center(
          child: AppStateView(
            icon: AppIcons.notification,
            title: context.l10n.tr('notifications.unavailable'),
            message: context.l10n.tr('notifications.unavailableBody'),
          ),
        ),
      );
    }
    return ChangeNotifierProvider(
      create: (_) => NotificationController(repository: repository)..load(),
      child: const NotificationsPage(),
    );
  }
}
