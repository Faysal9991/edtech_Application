import 'package:edtech_application/core/routing/app_routes.dart';

class InternalDeepLink {
  const InternalDeepLink({required this.route, this.argument});

  final String route;
  final String? argument;

  static const _allowedRoutes = <String>{
    AppRoutes.home,
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
    AppRoutes.notifications,
    AppRoutes.certificates,
    AppRoutes.verifyCertificate,
    AppRoutes.editProfile,
    AppRoutes.changePassword,
  };

  static InternalDeepLink? tryParse(String? value) {
    if (value == null || !value.startsWith('/') || value.startsWith('//')) {
      return null;
    }
    final uri = Uri.tryParse(value);
    if (uri == null ||
        uri.hasScheme ||
        uri.hasAuthority ||
        uri.path.contains(r'\')) {
      return null;
    }
    if (!_allowedRoutes.contains(uri.path)) return null;
    final argument =
        uri.queryParameters['id'] ??
        uri.queryParameters['token'] ??
        uri.queryParameters['number'];
    return InternalDeepLink(route: uri.path, argument: argument);
  }
}
