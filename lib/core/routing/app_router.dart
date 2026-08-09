import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/features/assessments/presentation/pages/assessments_page.dart';
import 'package:edtech_application/features/assessments/presentation/pages/assignment_page.dart';
import 'package:edtech_application/features/assessments/presentation/pages/quiz_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/forgot_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/reset_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/change_password_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/splash_page.dart';
import 'package:edtech_application/features/authentication/presentation/pages/verify_email_page.dart';
import 'package:edtech_application/features/courses/presentation/pages/course_details_page.dart';
import 'package:edtech_application/features/home/presentation/pages/home_shell.dart';
import 'package:edtech_application/features/learning/presentation/pages/lesson_page.dart';
import 'package:edtech_application/features/live_class/presentation/pages/live_classes_page.dart';
import 'package:edtech_application/features/live_class/presentation/pages/live_class_room_page.dart';
import 'package:edtech_application/features/notifications/presentation/pages/notifications_page.dart';
import 'package:edtech_application/features/payments/presentation/pages/payments_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/certificates_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/verify_certificate_page.dart';
import 'package:edtech_application/features/results/presentation/pages/results_page.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final page = switch (settings.name) {
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
      AppRoutes.changePassword => const ChangePasswordPage(),
      AppRoutes.editProfile => const EditProfilePage(),
      AppRoutes.home => const HomeShell(),
      AppRoutes.courseDetails =>
        settings.arguments is Course
            ? CourseDetailsPage(course: settings.arguments! as Course)
            : const _MissingCoursePage(),
      AppRoutes.lesson =>
        settings.arguments is Course
            ? LessonPage(course: settings.arguments! as Course)
            : const _MissingCoursePage(),
      AppRoutes.assessments => const AssessmentsPage(),
      AppRoutes.quiz => QuizPage(
        quizId: settings.arguments is String
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
      AppRoutes.notifications => const NotificationsPage(),
      AppRoutes.certificates => const CertificatesPage(),
      AppRoutes.verifyCertificate => const VerifyCertificatePage(),
      _ => const _UnknownRoutePage(),
    };

    return PageRouteBuilder<dynamic>(
      settings: settings,
      pageBuilder: (_, animation, _) => FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
        child: page,
      ),
      transitionsBuilder: (_, animation, _, child) {
        final offset =
            Tween<Offset>(
              begin: const Offset(.025, .02),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(position: offset, child: child),
        );
      },
      transitionDuration: const Duration(milliseconds: 260),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.explore_off_outlined, size: 56),
            const SizedBox(height: 12),
            Text(
              context.l10n.tr('router.pageNotFound'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.signIn,
                (route) => false,
              ),
              child: Text(context.l10n.tr('router.backToSignIn')),
            ),
          ],
        ),
      ),
    );
  }
}
