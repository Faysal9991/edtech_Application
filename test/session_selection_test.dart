import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/core/session/organization_context.dart';
import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/authentication/presentation/pages/session_gate_page.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/app_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  const first = OrganizationMembership(
    id: 'membership-1',
    organizationId: 'organization-1',
    organizationName: 'Organization One',
    status: 'active',
    roles: ['teacher', 'guardian', 'organization_admin'],
  );
  const second = OrganizationMembership(
    id: 'membership-2',
    organizationId: 'organization-2',
    organizationName: 'Organization Two',
    status: 'active',
    roles: ['student'],
  );

  test('mobile roles require top-level and membership role intersection', () {
    const user = AppUser(
      id: 'user-1',
      name: 'Multi Role',
      email: 'multi@example.com',
      roles: ['teacher', 'student', 'admin'],
      memberships: [first],
    );

    expect(eligibleMobileRoles(user, first), [MobileRole.teacher]);
  });

  test('organization and role selection are explicit and persisted', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final repository = _SessionRepository(
      AppUser(
        id: 'user-1',
        name: 'Multi Role',
        email: 'multi@example.com',
        roles: const ['teacher', 'guardian', 'student'],
        memberships: const [first, second],
      ),
    );
    final organization = OrganizationContext();
    final controller = AuthController(
      repository: repository,
      storage: LocalStorage(preferences),
      organizationContext: organization,
    );

    expect(await controller.restoreSession(), isTrue);
    expect(controller.needsOrganizationSelection, isTrue);

    await controller.selectOrganization(first.organizationId);
    expect(controller.needsRoleSelection, isTrue);
    expect(organization.organizationId, first.organizationId);

    await controller.selectRole(MobileRole.guardian);
    expect(controller.session?.activeRole, MobileRole.guardian);
    expect(
      preferences.getString('last_organization_id_v1'),
      first.organizationId,
    );
    expect(preferences.getString('last_mobile_role_v1'), 'guardian');
  });

  test('auth me revalidation clears a revoked saved organization', () async {
    SharedPreferences.setMockInitialValues({
      'last_organization_id_v1': first.organizationId,
      'last_mobile_role_v1': 'teacher',
    });
    final preferences = await SharedPreferences.getInstance();
    final repository = _SessionRepository(
      AppUser(
        id: 'user-1',
        name: 'Teacher',
        email: 'teacher@example.com',
        roles: const ['teacher', 'student'],
        memberships: const [first, second],
      ),
    );
    final controller = AuthController(
      repository: repository,
      storage: LocalStorage(preferences),
      organizationContext: OrganizationContext(),
    );

    await controller.restoreSession();
    expect(controller.activeMembership?.organizationId, first.organizationId);
    repository.user = repository.user.copyWith(memberships: const [second]);

    await controller.refreshIdentity();

    expect(controller.activeMembership?.organizationId, second.organizationId);
    expect(controller.activeRole, MobileRole.student);
    expect(
      controller.session?.activeMembership.organizationId,
      second.organizationId,
    );
  });

  test('admin-only membership never creates a mobile session', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final controller = AuthController(
      repository: _SessionRepository(
        const AppUser(
          id: 'admin-1',
          name: 'Administrator',
          email: 'admin@example.com',
          roles: ['admin'],
          memberships: [
            OrganizationMembership(
              id: 'admin-membership',
              organizationId: 'organization-1',
              organizationName: 'Organization One',
              status: 'active',
              roles: ['organization_admin'],
            ),
          ],
        ),
      ),
      storage: LocalStorage(preferences),
      organizationContext: OrganizationContext(),
    );

    await controller.restoreSession();

    expect(controller.isAdminOnly, isTrue);
    expect(controller.session, isNull);
  });

  testWidgets('multiple active memberships show organization selector', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final controller = AuthController(
      repository: _SessionRepository(
        const AppUser(
          id: 'user-1',
          name: 'Multi Organization',
          email: 'multi@example.com',
          roles: ['teacher', 'student'],
          memberships: [first, second],
        ),
      ),
      storage: LocalStorage(preferences),
      organizationContext: OrganizationContext(),
    );
    await controller.restoreSession();

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: controller,
        child: const MaterialApp(
          locale: Locale('en'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: SessionGatePage(),
        ),
      ),
    );

    expect(find.text('Choose your organization'), findsOneWidget);
    expect(find.text('Organization One'), findsOneWidget);
    expect(find.text('Organization Two'), findsOneWidget);
  });

  testWidgets('admin-only account shows portal restriction', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final controller = AuthController(
      repository: _SessionRepository(
        const AppUser(
          id: 'admin-1',
          name: 'Administrator',
          email: 'admin@example.com',
          roles: ['admin'],
          memberships: [
            OrganizationMembership(
              id: 'admin-membership',
              organizationId: 'organization-1',
              organizationName: 'Organization One',
              status: 'active',
              roles: ['organization_admin'],
            ),
          ],
        ),
      ),
      storage: LocalStorage(preferences),
      organizationContext: OrganizationContext(),
    );
    await controller.restoreSession();

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: controller,
        child: const MaterialApp(
          locale: Locale('en'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: SessionGatePage(),
        ),
      ),
    );

    expect(find.text('Administration account'), findsOneWidget);
    expect(find.textContaining('LMS Admin Portal'), findsOneWidget);
  });
}

class _SessionRepository implements AuthRepository {
  _SessionRepository(this.user);
  AppUser user;

  @override
  Future<AppUser?> restoreSession() async => user;
  @override
  Future<AppUser> refreshCurrentUser() async => user;
  @override
  Future<AppUser> signIn({
    required String email,
    required String password,
  }) async => user;
  @override
  Future<void> signOut() async {}
  @override
  Future<void> signOutAll() async {}
  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {}
  @override
  Future<void> forgotPassword(String email) async {}
  @override
  Future<void> resendVerification(String email) async {}
  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {}
  @override
  Future<void> verifyEmail(String token) async {}
  @override
  Future<RegistrationResult> signUp({
    required String name,
    required String email,
    required String password,
  }) async => RegistrationResult(user: user, message: 'ok');
  @override
  Future<AppUser> updateProfile({
    required String displayName,
    String? firstName,
    String? lastName,
    String? phone,
    String? timezone,
    String? locale,
    String? biography,
  }) async => user;
}
