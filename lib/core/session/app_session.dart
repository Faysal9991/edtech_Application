import 'package:edtech_application/shared/models/app_user.dart';

enum MobileRole {
  student,
  teacher,
  guardian;

  String get wireName => name;

  static MobileRole? fromWireName(String value) {
    for (final role in values) {
      if (role.wireName == value) return role;
    }
    return null;
  }
}

class AppSession {
  const AppSession({
    required this.user,
    required this.memberships,
    required this.activeMembership,
    required this.activeRole,
  });

  final AppUser user;
  final List<OrganizationMembership> memberships;
  final OrganizationMembership activeMembership;
  final MobileRole activeRole;

  String get cacheNamespace =>
      '${user.id}_${activeMembership.organizationId}_${activeRole.wireName}';
}

List<MobileRole> eligibleMobileRoles(
  AppUser user,
  OrganizationMembership membership,
) {
  if (!membership.isActive) return const [];
  final topLevel = user.roles.toSet();
  final membershipRoles = membership.roles.toSet();
  return MobileRole.values
      .where(
        (role) =>
            topLevel.contains(role.wireName) &&
            membershipRoles.contains(role.wireName),
      )
      .toList(growable: false);
}
