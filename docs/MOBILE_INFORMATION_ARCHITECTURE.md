# Mobile Information Architecture

## Session entry

```text
Splash
→ secure refresh-token restore
→ token refresh when required
→ GET /auth/me
→ email/account-status gate
→ active-membership gate
→ organization selection
→ mobile-role selection
→ keyed role shell
```

`AuthUser.roles` and the selected active membership’s roles must both contain a role before its shell is eligible. `organization_admin` and `super_admin` never create a mobile destination. An Admin-only identity receives Admin Portal guidance.

## Shared core

- Secure access/refresh-token lifecycle with rotating, single-flight refresh
- `OrganizationContext` supplying `X-Organization-ID`
- Immutable `AppSession` with active organization and role
- RFC 7807 error conversion
- Shared profile, preferences and notifications
- Organization/user/role-namespaced offline data
- Internal deep-link allowlist

Role switches replace the keyed shell subtree, disposing its Provider controller and navigation state. Organization switches clear the active role, update the request context, stop prior offline sync and require role eligibility to be evaluated again.

## Primary navigation

Phone shells use Material 3 navigation; widths of 880 logical pixels and above use a navigation rail.

### Student

1. Home — resume learning, next live class, current tasks and recommendations
2. Explore — course discovery
3. Learning — enrolled courses plus a prominent Results entry
4. Today’s Tasks — quizzes, assignments and exams
5. Profile — account, preferences, services and workspace switching

Course, assessment, attendance, payment, certificate, LiveKit and offline flows remain behind the Student role gate. Opening a curriculum lesson now carries the selected lesson ID into the player instead of defaulting to the first lesson.

### Teacher

1. Overview — dashboard counts, live classes and upcoming assessments
2. Schedule — class sessions, availability and physical-attendance lifecycle
3. Students — batch selection and assigned learner roster
4. Work — courses, quizzes, exams, assignments, submissions and live classes
5. Profile — role/organization switching and session actions

Advanced declared Teacher operations (authoring, moderation, reports, media and learning-support detail) remain transport-level coverage until their complete production UI and mutation tests are implemented.

### Guardian

1. Overview — aggregate dashboard, persistent learner selection and support priorities
2. Learning — selected learner’s course progress and published results
3. Calendar — classes, assignments and exam dates
4. Updates — notifications and recent attendance
5. Profile — shared settings and workspace switching

Guardian child data is refetched from the active relationship list. A removed/revoked relationship is not retained as an accessible selector item.

## Route permissions

- `/student/**` use cases are reachable only from a Student session.
- `/teacher/**` use cases are reachable only from a Teacher session.
- `/guardian/**` use cases are reachable only from a Guardian session, except invitation acceptance which permits optional authentication.
- `/admin/**` is absent from the Flutter API surface.
- Notification links must be relative, allowlisted internal routes. Role and organization-aware notification switching still requires staging integration coverage before production release.

## Cache and request boundary

The active namespace is `user_id / organization_id / role`. Switching the namespace stops the previous connectivity monitor and changes offline manifests, ledgers, cursors, outbox keys and file directories. Signed storage upload/download clients remain separate from the authenticated LMS Dio client so LMS headers cannot leak to object storage.
