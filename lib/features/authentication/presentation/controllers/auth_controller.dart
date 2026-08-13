import 'package:edtech_application/core/auth/auth_repository.dart';
import 'package:edtech_application/core/error/app_exception.dart';
import 'package:edtech_application/core/session/app_session.dart';
import 'package:edtech_application/core/session/organization_context.dart';
import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/shared/models/app_user.dart';
import 'package:flutter/foundation.dart';

class AuthController extends ChangeNotifier {
  AuthController({
    required AuthRepository repository,
    required LocalStorage storage,
    required OrganizationContext organizationContext,
    Future<void> Function(AppSession? session)? onSessionChanged,
  }) : _repository = repository,
       _storage = storage,
       _organizationContext = organizationContext,
       _onSessionChanged = onSessionChanged;

  final AuthRepository _repository;
  final LocalStorage _storage;
  final OrganizationContext _organizationContext;
  final Future<void> Function(AppSession? session)? _onSessionChanged;

  AppUser? _user;
  bool _isLoading = false;
  String? _errorMessage;
  String? _pendingVerificationToken;
  String? _registrationMessage;
  OrganizationMembership? _activeMembership;
  MobileRole? _activeRole;

  AppUser? get user => _user;
  OrganizationMembership? get activeMembership => _activeMembership;
  MobileRole? get activeRole => _activeRole;
  AppSession? get session {
    final user = _user;
    final membership = _activeMembership;
    final role = _activeRole;
    if (user == null || membership == null || role == null) return null;
    return AppSession(
      user: user,
      memberships: activeMemberships,
      activeMembership: membership,
      activeRole: role,
    );
  }

  List<OrganizationMembership> get activeMemberships =>
      (_user?.memberships ?? const <OrganizationMembership>[])
          .where((membership) => membership.isActive)
          .toList(growable: false);
  List<MobileRole> rolesFor(OrganizationMembership membership) {
    final user = _user;
    return user == null ? const [] : eligibleMobileRoles(user, membership);
  }

  bool get isLoading => _isLoading;
  bool get hasAuthenticatedIdentity => _user != null;
  bool get isAuthenticated => session != null && _user!.status == 'active';
  bool get needsOrganizationSelection =>
      _user?.status == 'active' &&
      activeMemberships.isNotEmpty &&
      _activeMembership == null;
  bool get needsRoleSelection =>
      _user?.status == 'active' &&
      _activeMembership != null &&
      rolesFor(_activeMembership!).isNotEmpty &&
      _activeRole == null;
  bool get isAdminOnly =>
      _user?.status == 'active' &&
      activeMemberships.isNotEmpty &&
      activeMemberships.every((membership) => rolesFor(membership).isEmpty);
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
      await _revalidateSelection();
      return hasAuthenticatedIdentity;
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
      await _revalidateSelection();
    });
    if (success && _user?.status != 'active') {
      _errorMessage = switch (_user?.status) {
        'pending' => 'অ্যাকাউন্ট pending। আগে email verify করুন।',
        'suspended' =>
          'অ্যাকাউন্টটি suspended। সহায়তার জন্য support-এ যোগাযোগ করুন।',
        'disabled' =>
          'অ্যাকাউন্টটি disabled। সহায়তার জন্য support-এ যোগাযোগ করুন।',
        _ => 'অ্যাকাউন্টের বর্তমান অবস্থা সমর্থিত নয়।',
      };
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

  Future<bool> resendVerification(String email) =>
      _run(() => _repository.resendVerification(email));

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
    await _revalidateSelection();
  });

  Future<void> refreshIdentity() async {
    _user = await _repository.refreshCurrentUser();
    await _revalidateSelection();
    notifyListeners();
  }

  Future<void> selectOrganization(String organizationId) async {
    final membership = activeMemberships
        .where((item) => item.organizationId == organizationId)
        .firstOrNull;
    if (membership == null) {
      throw const AppException('এই organization membership আর active নেই।');
    }
    final changed = _activeMembership?.organizationId != organizationId;
    _activeMembership = membership;
    if (changed) _activeRole = null;
    final eligible = rolesFor(membership);
    final savedRole = MobileRole.fromWireName(
      changed ? '' : (_storage.selectedMobileRole ?? ''),
    );
    if (savedRole != null && eligible.contains(savedRole)) {
      _activeRole = savedRole;
    } else if (eligible.length == 1) {
      _activeRole = eligible.single;
    }
    await _commitSelection();
  }

  Future<void> selectRole(MobileRole role) async {
    final membership = _activeMembership;
    if (membership == null || !rolesFor(membership).contains(role)) {
      throw const AppException('এই organization-এ role-টি active নয়।');
    }
    _activeRole = role;
    await _commitSelection();
  }

  Future<void> clearRoleSelection() async {
    _activeRole = null;
    await _commitSelection();
  }

  Future<void> clearOrganizationSelection() async {
    _activeMembership = null;
    _activeRole = null;
    await _commitSelection();
  }

  Future<void> signOut() async {
    try {
      await _repository.signOut();
    } on AppException catch (error) {
      _errorMessage = error.message;
    } finally {
      _user = null;
      _activeMembership = null;
      _activeRole = null;
      _organizationContext.clear();
      await _storage.clearSession();
      await _onSessionChanged?.call(null);
      notifyListeners();
    }
  }

  Future<void> signOutAll() async {
    try {
      await _repository.signOutAll();
    } on AppException catch (error) {
      _errorMessage = error.message;
    } finally {
      _user = null;
      _activeMembership = null;
      _activeRole = null;
      _organizationContext.clear();
      await _storage.clearSession();
      await _onSessionChanged?.call(null);
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

  Future<void> _revalidateSelection() async {
    _activeMembership = null;
    _activeRole = null;
    _organizationContext.clear();
    final user = _user;
    if (user == null || user.status != 'active') {
      await _onSessionChanged?.call(null);
      return;
    }
    final memberships = activeMemberships;
    if (memberships.isEmpty) {
      await _storage.saveSessionSelection(organizationId: null, role: null);
      await _onSessionChanged?.call(null);
      return;
    }
    final savedOrganization = _storage.selectedOrganizationId;
    final saved = memberships
        .where((item) => item.organizationId == savedOrganization)
        .firstOrNull;
    if (saved != null) {
      _activeMembership = saved;
    } else if (memberships.length == 1) {
      _activeMembership = memberships.single;
    }
    final membership = _activeMembership;
    if (membership == null) {
      await _storage.saveSessionSelection(organizationId: null, role: null);
      await _onSessionChanged?.call(null);
      return;
    }
    final eligible = rolesFor(membership);
    final savedRole = MobileRole.fromWireName(
      _storage.selectedMobileRole ?? '',
    );
    if (savedRole != null && eligible.contains(savedRole)) {
      _activeRole = savedRole;
    } else if (eligible.length == 1) {
      _activeRole = eligible.single;
    }
    await _commitSelection(notify: false);
  }

  Future<void> _commitSelection({bool notify = true}) async {
    final membership = _activeMembership;
    if (membership == null) {
      _organizationContext.clear();
    } else {
      _organizationContext.select(membership.organizationId);
    }
    await _storage.saveSessionSelection(
      organizationId: membership?.organizationId,
      role: _activeRole?.wireName,
    );
    await _onSessionChanged?.call(session);
    if (notify) notifyListeners();
  }
}
