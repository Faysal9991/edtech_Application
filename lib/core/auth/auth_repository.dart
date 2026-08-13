import 'package:edtech_application/shared/models/app_user.dart';

class RegistrationResult {
  const RegistrationResult({
    required this.user,
    required this.message,
    this.verificationToken,
  });

  final AppUser user;
  final String message;
  final String? verificationToken;
}

abstract interface class AuthRepository {
  Future<AppUser?> restoreSession();

  Future<AppUser> signIn({required String email, required String password});

  Future<AppUser> refreshCurrentUser();

  Future<RegistrationResult> signUp({
    required String name,
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> signOutAll();

  Future<void> forgotPassword(String email);

  Future<void> resetPassword({
    required String token,
    required String newPassword,
  });

  Future<void> verifyEmail(String token);

  Future<void> resendVerification(String email);

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<AppUser> updateProfile({
    required String displayName,
    String? firstName,
    String? lastName,
    String? phone,
    String? timezone,
    String? locale,
    String? biography,
  });
}
