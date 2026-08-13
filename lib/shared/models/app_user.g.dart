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
  'role': instance.role,
  'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
};
