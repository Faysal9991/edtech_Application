import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String name,
    required String email,
    @Default('active') String status,
    @Default(<String>[]) List<String> roles,
    @Default(<OrganizationMembership>[])
    List<OrganizationMembership> memberships,
    @Default('unknown') String role,
    DateTime? emailVerifiedAt,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
abstract class OrganizationMembership with _$OrganizationMembership {
  const OrganizationMembership._();

  const factory OrganizationMembership({
    required String id,
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'organization_name') required String organizationName,
    required String status,
    @Default(<String>[]) List<String> roles,
  }) = _OrganizationMembership;

  factory OrganizationMembership.fromJson(Map<String, dynamic> json) =>
      _$OrganizationMembershipFromJson(json);

  bool get isActive => status == 'active';
}
