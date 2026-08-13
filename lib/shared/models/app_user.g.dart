// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  status: json['status'] as String? ?? 'active',
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  memberships:
      (json['memberships'] as List<dynamic>?)
          ?.map(
            (e) => OrganizationMembership.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <OrganizationMembership>[],
  role: json['role'] as String? ?? 'unknown',
  emailVerifiedAt: json['emailVerifiedAt'] == null
      ? null
      : DateTime.parse(json['emailVerifiedAt'] as String),
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'status': instance.status,
  'roles': instance.roles,
  'memberships': instance.memberships,
  'role': instance.role,
  'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
};

_OrganizationMembership _$OrganizationMembershipFromJson(
  Map<String, dynamic> json,
) => _OrganizationMembership(
  id: json['id'] as String,
  organizationId: json['organization_id'] as String,
  organizationName: json['organization_name'] as String,
  status: json['status'] as String,
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$OrganizationMembershipToJson(
  _OrganizationMembership instance,
) => <String, dynamic>{
  'id': instance.id,
  'organization_id': instance.organizationId,
  'organization_name': instance.organizationName,
  'status': instance.status,
  'roles': instance.roles,
};
