import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/shared/models/app_user.dart';

class MockAuthRepository implements AuthRepository {
  const MockAuthRepository();

  @override
  Future<AppUser?> restoreSession() async => null;

  @override
  Future<AppUser> signIn({
    required String email,
    required String password,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return AppUser(
      id: 'preview-user',
      name: _nameFromEmail(email),
      email: email,
      roles: const ['student'],
    );
  }

  @override
  Future<RegistrationResult> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return RegistrationResult(
      user: AppUser(
        id: 'preview-user',
        name: name,
        email: email,
        status: 'pending',
        roles: const ['student'],
      ),
      message: 'Verification required',
      verificationToken: 'preview-verification-token-0000000000000000',
    );
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<void> forgotPassword(String email) async {}

  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {}

  @override
  Future<void> verifyEmail(String token) async {}

  @override
  Future<void> resendVerification(String email) async {}

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {}

  @override
  Future<AppUser> updateProfile({
    required String displayName,
    String? firstName,
    String? lastName,
    String? phone,
    String? timezone,
    String? locale,
    String? biography,
  }) async => AppUser(
    id: 'preview-user',
    name: displayName,
    email: 'preview@learnly.app',
    roles: const ['student'],
  );

  String _nameFromEmail(String email) {
    final localPart = email.split('@').first.trim();
    if (localPart.isEmpty) return 'Learner';
    return localPart[0].toUpperCase() + localPart.substring(1);
  }
}
