import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/shared/models/app_user.dart';
import 'package:flutter/foundation.dart';

class AuthController extends ChangeNotifier {
  AuthController({
    required AuthRepository repository,
    required LocalStorage storage,
  }) : _repository = repository,
       _storage = storage;

  final AuthRepository _repository;
  final LocalStorage _storage;

  AppUser? _user;
  bool _isLoading = false;
  String? _errorMessage;
  String? _pendingVerificationToken;
  String? _registrationMessage;

  AppUser? get user => _user;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _user != null && _user!.status == 'active';
  String? get errorMessage => _errorMessage;
  String? get rememberedEmail => _storage.rememberedEmail;
  String? get pendingVerificationToken => _pendingVerificationToken;
  String? get registrationMessage => _registrationMessage;

  Future<bool> restoreSession() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      _user = await _repository.restoreSession();
      return isAuthenticated;
    } on AppException catch (error) {
      _errorMessage = error.message;
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> signIn({
    required String email,
    required String password,
    required bool rememberEmail,
  }) async {
    final success = await _run(() async {
      _user = await _repository.signIn(email: email, password: password);
      await _storage.saveRememberedEmail(rememberEmail ? email : null);
    });
    if (success && !isAuthenticated) {
      _errorMessage = 'অ্যাকাউন্ট active নয়। আগে email verify করুন।';
      notifyListeners();
      return false;
    }
    return success;
  }

  Future<bool> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    return _run(() async {
      final result = await _repository.signUp(
        name: name,
        email: email,
        password: password,
      );
      _user = result.user;
      _pendingVerificationToken = result.verificationToken;
      _registrationMessage = result.message;
    });
  }

  Future<bool> forgotPassword(String email) =>
      _run(() => _repository.forgotPassword(email));

  Future<bool> verifyEmail(String token) =>
      _run(() => _repository.verifyEmail(token));

  Future<bool> resetPassword({
    required String token,
    required String newPassword,
  }) => _run(
    () => _repository.resetPassword(token: token, newPassword: newPassword),
  );

  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) => _run(
    () => _repository.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    ),
  );

  Future<bool> updateProfile({
    required String displayName,
    String? firstName,
    String? lastName,
    String? phone,
    String? biography,
  }) => _run(() async {
    _user = await _repository.updateProfile(
      displayName: displayName,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      timezone: 'Asia/Dhaka',
      locale: 'bn-BD',
      biography: biography,
    );
  });

  Future<void> signOut() async {
    try {
      await _repository.signOut();
    } on AppException catch (error) {
      _errorMessage = error.message;
    } finally {
      _user = null;
      await _storage.clearSession();
      notifyListeners();
    }
  }

  Future<bool> _run(Future<void> Function() operation) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      await operation();
      return true;
    } on AppException catch (error) {
      _errorMessage = error.message;
      return false;
    } catch (_) {
      _errorMessage = 'কাজটি সম্পন্ন করা যায়নি। আবার চেষ্টা করুন।';
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
