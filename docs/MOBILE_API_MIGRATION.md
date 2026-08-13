# Mobile API migration matrix

Contract: LMS Service API 1.0.0, OpenAPI 3.1.0, supplied 2026-08-13.  
Production origin: `https://lmsservice.maxlived.net` (overridable with
`--dart-define=API_BASE_URL=...`).

Legend: **typed** means a contract-defined DTO is parsed at the data-source
boundary; **boundary JSON** means the OpenAPI response is generic/untyped and
dynamic handling is deliberately confined to the repository boundary; **UI**
means a learner-facing flow is wired. No `/api/v1/admin/**` route is declared
by the mobile API client.

## Authentication and public catalogue

| Operation ID | Method and path | Role | Existing implementation | Required modification | New implementation | Excluded admin operation | Backend contract blocker | Test coverage |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| register | POST `/api/v1/auth/register` | Public | Typed | Pending-account UX | Preserved; verification flow | No | No | Serialization |
| login | POST `/api/v1/auth/login` | Public | Typed | Rotating tokens; call `auth/me` | Preserved and server-authoritative role routing | No | No | Refresh suite |
| refresh | POST `/api/v1/auth/refresh` | Public/session | Typed | Single-flight, atomic rotation | Implemented; stale-401 requests reuse new access token | No | No | Concurrent 401 |
| logout | POST `/api/v1/auth/logout` | Authenticated | Typed request | Refresh token only in body | Implemented | No | No | Indirect auth tests |
| logoutAll | POST `/api/v1/auth/logout-all` | Authenticated | Declared | Expose repository/controller | Implemented | No | No | Static analysis |
| currentUser | GET `/api/v1/auth/me` | Authenticated | Typed | Use after login and restore | Restore fixed to use `auth/me` | No | Organization memberships omitted | Role parsing |
| changePassword | POST `/api/v1/auth/change-password` | Authenticated | Typed | Clear revoked session | Implemented | No | No | Existing auth flow |
| forgotPassword | POST `/api/v1/auth/forgot-password` | Public | Typed | Enumeration-safe 202 | Preserved | No | Untyped empty 202 | Existing auth flow |
| resetPassword | POST `/api/v1/auth/reset-password` | Public | Typed | Token-only reset | Preserved | No | No | Existing auth flow |
| verifyEmail | POST `/api/v1/auth/verify-email` | Public | Typed | Pending-account UX | Preserved | No | No | Existing auth flow |
| resendVerification | POST `/api/v1/auth/resend-verification` | Public | Boundary JSON | Rate-limit UX | Central 429 cooldown metadata | No | Generic accepted response | RFC 7807 tests |
| listAcademicPrograms | GET `/api/v1/academic/programs` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicLevels | GET `/api/v1/academic/levels` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicClasses | GET `/api/v1/academic/classes` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicBoards | GET `/api/v1/academic/boards` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicGroups | GET `/api/v1/academic/groups` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicSubjects | GET `/api/v1/academic/subjects` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicChapters | GET `/api/v1/academic/subjects/{id}/chapters` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicTopics | GET `/api/v1/academic/chapters/{id}/topics` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicExamTargets | GET `/api/v1/academic/exam-targets` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listAcademicSessions | GET `/api/v1/academic/sessions` | Public | Boundary JSON | None | Preserved | No | Generic catalogue wrapper | Cursor test |
| listCourses | GET `/api/v1/courses` | Public | Typed item/boundary page | Opaque cursor | Preserved | No | Terminal cursor representation unclear | Cursor test |
| getPublishedCourse | GET `/api/v1/courses/{slug}` | Public | Typed | None | Preserved | No | Private lesson fields may be omitted | Parsing tests |

## Profile, learning, and assessments

| Operation ID | Method and path | Role | Existing implementation | Required modification | New implementation | Excluded admin operation | Backend contract blocker | Test coverage |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| getCurrentProfile | GET `/api/v1/users/me` | Student | Boundary JSON | Keep separate from auth identity | Preserved for profile | No | Generic `OK` | Boundary parsing |
| updateCurrentProfile | PATCH `/api/v1/users/me` | Student | Typed write/boundary JSON | None | Preserved | No | Generic `OK` | Static analysis |
| setCurrentAvatar | POST `/api/v1/users/me/avatar` | Student | Boundary JSON | Media ID adapter | Declared | No | Generic `OK` | Static analysis |
| getAcademicPreferences | GET `/api/v1/users/me/academic-preferences` | Student | Boundary JSON | None | Declared | No | Generic `OK` | Serialization |
| replaceAcademicPreferences | PUT `/api/v1/users/me/academic-preferences` | Student | Typed write/boundary JSON | New catalogue IDs | Implemented | No | Generic `OK` | Serialization |
| studentDashboard | GET `/api/v1/student/dashboard` | Student | Typed/UI | None | Preserved | No | No | Aggregate parsing |
| enrollFreeCourse | POST `/api/v1/courses/{id}/enroll` | Student | Typed/UI | 402 handling | Central status mapping | No | No | Static analysis |
| studentListEnrollments | GET `/api/v1/student/enrollments` | Student | Boundary JSON/UI | Opaque cursor | Preserved | No | Generic `List` | Cursor test |
| studentGetEnrollment | GET `/api/v1/student/enrollments/{id}` | Student | Boundary JSON | Do not invent fields | Preserved at boundary | No | Untyped 200 | Documented gap |
| studentUpdateProgress | PUT `/api/v1/student/enrollments/{id}/lessons/{lessonId}/progress` | Student | Typed/UI | Offline outbox | Online path preserved; offline path added | No | No | Delta limit, UTC |
| studentGetSyllabusProgress | GET `/api/v1/student/enrollments/{id}/syllabus-progress` | Student | Missing | Add typed progress and UI | Typed DTO/repository/UI | No | Schema exposes aggregate syllabus rows, not ordered unit/status rows requested by product brief | Parsing/static |
| studentListBatches | GET `/api/v1/student/batches` | Student | Boundary JSON | None | Preserved | No | Typed wrapper, generic item use in client | Static analysis |
| studentGetBatch | GET `/api/v1/student/batches/{id}` | Student | Boundary JSON | None | Preserved | No | Generic boundary use | Static analysis |
| studentCalendar | GET `/api/v1/student/calendar` | Student | Typed | UTC range | Preserved | No | No | UTC serialization |
| studentListLiveClasses | GET `/api/v1/student/live-classes` | Student | Typed/UI | Status rendering | Scheduled/live/ended/cancelled handled | No | No | Parsing/static |
| studentGetLiveClass | GET `/api/v1/student/live-classes/{id}` | Student | Typed | None | Preserved | No | No | Static analysis |
| liveClassToken | POST `/api/v1/live-classes/{id}/token` | Student | Token display only | Connect to LiveKit and recover expiry | Real room, rendering, controls, reconnect/fresh-token recovery | No | No | Analyzer/build; real-room staging still required |
| studentListQuizzes | GET `/api/v1/student/quizzes` | Student | Typed/UI | None | Preserved | No | No | Parsing |
| studentGetQuiz | GET `/api/v1/student/quizzes/{id}` | Student | Typed/UI | None | Preserved | No | No | Parsing |
| studentListQuizAttempts | GET `/api/v1/student/quizzes/{id}/attempts` | Student | Boundary JSON | Opaque cursor | Preserved | No | Generic list item | Cursor test |
| studentStartQuizAttempt | POST `/api/v1/student/quizzes/{id}/attempts` | Student | Typed/UI | No pre-submit keys | Preserved | No | No | Answer-key absence |
| studentSaveQuizAnswer | PUT `/api/v1/student/quiz-attempts/{id}/answers` | Student | Typed write/boundary JSON | Keep until acknowledgement | Preserved | No | Generic `OK` | Serialization |
| studentSubmitQuizAttempt | POST `/api/v1/student/quiz-attempts/{id}/submit` | Student | Typed/UI | Duplicate guard | Existing UI guard | No | No | Static analysis |
| studentListExams | GET `/api/v1/student/exams` | Student | Typed/UI | None | Preserved | No | No | Parsing |
| studentGetExam | GET `/api/v1/student/exams/{id}` | Student | Typed | None | Preserved | No | No | Parsing |
| studentStartExamAttempt | POST `/api/v1/student/exams/{id}/attempts` | Student | Typed/UI | Restore before new attempt | Durable attempt ID and restore | No | No | DTO/countdown tests |
| studentGetExamAttempt | GET `/api/v1/student/exam-attempts/{id}` | Student | Declared, unused | Restore active attempt | Repository/UI restore implemented | No | No | Static analysis |
| studentAutosaveExamAnswer | PUT `/api/v1/student/exam-attempts/{id}/answers` | Student | Typed write/boundary JSON | Persist until acknowledgement | Durable draft removed per acknowledged question | No | Generic `OK` | UTC/outbox tests |
| studentSubmitExamAttempt | POST `/api/v1/student/exam-attempts/{id}/submit` | Student | Typed/UI | Deadline/duplicate guard | Server `submit_before`, local input lock, single submit | No | No | DTO/static |
| studentGetExamResult | GET `/api/v1/student/exam-attempts/{id}/result` | Student | Typed | Visibility | Preserved | No | No | Parsing |
| studentExamLeaderboard | GET `/api/v1/student/exams/{id}/leaderboard` | Student | Typed/repository | None | Preserved | No | No | Parsing |
| studentListAssignments | GET `/api/v1/student/assignments` | Student | Typed/UI | Detail constraints | Detail now loaded by submission screen | No | Maximum upload byte size absent from assignment schema | Static analysis |
| studentGetAssignment | GET `/api/v1/student/assignments/{id}` | Student | Typed, unused | Render detail | Implemented in UI | No | Maximum upload byte size absent | Static analysis |
| studentListSubmissions | GET `/api/v1/student/submissions` | Student | Typed | None | Preserved | No | No | Parsing |
| studentGetSubmission | GET `/api/v1/student/submissions/{id}` | Student | Typed | None | Preserved | No | No | Parsing |
| studentCreateSubmission | POST `/api/v1/student/assignments/{id}/submissions` | Student | Typed write/boundary JSON | Multiple assets | Multi-attachment flow | No | Generic `OK` response | Static analysis |
| studentSubmitAssignment | POST `/api/v1/student/submissions/{id}/submit` | Student | Boundary JSON/UI | Duplicate guard | Preserved | No | Generic `OK` response | Static analysis |

## Attendance, mastery, doubts, and study planning

| Operation ID | Method and path | Role | Existing implementation | Required modification | New implementation | Excluded admin operation | Backend contract blocker | Test coverage |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| studentPhysicalAttendanceCheckIn | POST `/api/v1/student/attendance-sessions/{id}/check-in` | Student | Missing | Code/risk evidence and error UX | Typed request/result and code-entry UI | No | Session ID/code deep-link shape not specified | DTO/static |
| studentListPhysicalAttendance | GET `/api/v1/student/attendance` | Student | Missing | History/cursor | Typed page and UI | No | Terminal cursor unclear | Cursor/static |
| studentRequestAttendanceCorrection | POST `/api/v1/student/attendance-records/{id}/correction-requests` | Student | Missing | State errors/refetch | Typed request/result and UI; central 409/429 | No | No | DTO/static |
| studentTopicMastery | GET `/api/v1/student/mastery` | Student | Missing | Fixed-point parsing | Exact internal decimal DTO and UI | No | No | Fixed-point test |
| studentWeakTopics | GET `/api/v1/student/weak-topics` | Student | Missing | Fixed-point parsing | Exact internal decimal DTO and UI | No | No | Fixed-point test |
| studentListDoubts | GET `/api/v1/student/doubts` | Student | Missing | Cursor/list | Typed list and UI | No | Terminal cursor unclear | Cursor/static |
| studentCreateDoubt | POST `/api/v1/student/doubts` | Student | Missing | Exact fields/uploads | Typed request and UI | No | No | Serialization/static |
| studentGetDoubt | GET `/api/v1/student/doubts/{id}` | Student | Missing | Thread detail | Typed result and UI | No | No | Parsing/static |
| studentReplyToDoubt | POST `/api/v1/student/doubts/{id}/messages` | Student | Missing | Exact fields | Typed request/result and UI | No | No | Serialization/static |
| studentResolveDoubt | POST `/api/v1/student/doubts/{id}/resolve` | Student | Missing | State transition | Typed result/UI; 409 retained | No | No | Static analysis |
| studentReopenDoubt | POST `/api/v1/student/doubts/{id}/reopen` | Student | Missing | 48-hour policy | Typed result/UI; server enforces policy | No | No | Static analysis |
| studentListStudyPlans | GET `/api/v1/student/study-plans` | Student | Missing | Cursor/list | Typed list/repository | No | Terminal cursor unclear | Cursor/static |
| studentListStudyPlanTasks | GET `/api/v1/student/study-plan-tasks` | Student | Missing | Cursor/status | Typed list and UI | No | Contract path enum says `cancelled`; `StudyTask` schema says `skipped` | Documented gap |
| studentCompleteStudyPlanTask | POST `/api/v1/student/study-plan-tasks/{id}/complete` | Student | Missing | Optimistic version | Typed version write/result and UI | No | No | Version serialization |
| studentRescheduleStudyPlanTask | POST `/api/v1/student/study-plan-tasks/{id}/reschedule` | Student | Missing | UTC/version | Typed request/result and UI | No | No | UTC serialization |
| studentListGoals | GET `/api/v1/student/goals` | Student | Missing | Exact goal values/streak | Typed exact-decimal result and UI | No | No | Fixed-point test |
| studentCreateGoal | POST `/api/v1/student/goals` | Student | Missing | Exact goal values | Typed request and UI | No | No | Fixed-point test |

## Media, payments, results, access, and notifications

| Operation ID | Method and path | Role | Existing implementation | Required modification | New implementation | Excluded admin operation | Backend contract blocker | Test coverage |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| createUploadIntent | POST `/api/v1/media/upload-intents` | Student | Typed | Checksum/progress/expiry | SHA-256, progress, cancel, one expired-intent retry | No | Assignment response omits maximum file bytes | Serialization/static |
| completeMediaUpload | POST `/api/v1/media/{id}/complete` | Student | Boundary JSON | Complete after direct upload | Preserved | No | Generic `OK` | Static analysis |
| getMediaAccessURL | GET `/api/v1/media/{id}/access-url` | Student | Boundary JSON | Never cache URL | Ephemeral URI only | No | Generic `OK`; expiry not typed | Static analysis |
| mediaPlayback | GET `/api/v1/media/{id}/playback` | Student | Typed/UI | Signed tracks | Preserved | No | No | Playback parsing |
| listMediaRenditions | GET `/api/v1/media/{id}/renditions` | Student | Missing | Offline renditions | Typed DTO/repository | No | Access URL expiry timestamp omitted | Parsing/static |
| createPaymentOrder | POST `/api/v1/payments/orders` | Student | Typed/UI | Stable idempotency header | Stable per HTTP retry; caller operation supported | No | No | Serialization/static |
| getPaymentOrder | GET `/api/v1/payments/orders/{id}` | Student | Typed | None | Preserved | No | No | Parsing |
| createPaymentIntent | POST `/api/v1/payments/orders/{id}/payment-intent` | Student | Typed/UI | Provider intent | Preserved | No | Dummy intent is not production checkout | Documented gap |
| studentPaymentHistory | GET `/api/v1/student/payments` | Student | Boundary JSON/UI | Minor units | Integer values retained at boundary | No | Generic `List` | Money DTO test |
| studentResults | GET `/api/v1/student/results` | Student | Typed item/boundary page/UI | None | Preserved | No | Generic `List` envelope | Parsing |
| studentRequestResultRecheck | POST `/api/v1/student/results/{id}/recheck-requests` | Student | Missing | Reason/state errors | Typed request/result/repository | No | No | Serialization/static |
| studentCertificates | GET `/api/v1/student/certificates` | Student | Typed item/boundary page/UI | None | Preserved | No | Generic `List` envelope | Parsing |
| studentCertificateDownload | GET `/api/v1/student/certificates/{id}/download` | Student | Redirect-aware/UI | Keep redirect separate | Preserved 302 handling | No | Different from admit-card response by design | Static analysis |
| verifyCertificate | GET `/api/v1/certificates/verify/{certificateNumber}` | Public | Typed/UI | None | Preserved | No | No | Parsing |
| studentListAdmitCards | GET `/api/v1/student/admit-cards` | Student | Missing | List/UI | Typed DTO and UI | No | No | Parsing/static |
| studentDownloadAdmitCard | GET `/api/v1/student/admit-cards/{id}/download` | Student | Missing | Signed object, no caching | Typed ephemeral URI and UI | No | Signed response has no explicit expiry timestamp | Static analysis |
| publicVerifyAdmitCard | GET `/api/v1/public/admit-cards/verify` | Public | Missing | Token/deep link | Typed endpoint and UI | No | Native platform deep-link association is not described by API | Allowlist/static |
| publicVerifyStudentIdentifier | GET `/api/v1/public/student-identifiers/verify` | Public | Missing | Token/deep link | Typed endpoint and UI | No | Native platform deep-link association is not described by API | Allowlist/static |
| listNotifications | GET `/api/v1/notifications` | Student | Typed item/boundary page/UI | Opaque cursor | Preserved | No | Generic list envelope | Cursor test |
| unreadNotificationCount | GET `/api/v1/notifications/unread-count` | Student | Boundary JSON/UI | None | Preserved | No | Generic `OK` | Static analysis |
| markNotificationRead | PATCH `/api/v1/notifications/{id}/read` | Student | Boundary JSON/UI | Internal links only | Read + allowlisted navigation | No | Generic `OK` | Deep-link tests |
| markAllNotificationsRead | PATCH `/api/v1/notifications/read-all` | Student | UI | None | Preserved | No | No | Widget/static |
| getNotificationPreferences | GET `/api/v1/notifications/preferences` | Student | Boundary JSON | Do not invent preference keys | Declared at boundary | No | Generic `OK`; preference fields unspecified | Documented gap |
| replaceNotificationPreferences | PUT `/api/v1/notifications/preferences` | Student | Boundary JSON | Do not invent preference keys | Declared at boundary | No | Generic `OK`; preference fields unspecified | Documented gap |
| registerDevice | POST `/api/v1/devices` | Student | Typed request | Lifecycle integration | Repository registration/removal API | No | Firebase configuration intentionally absent from repository | Serialization/static |
| removeDevice | DELETE `/api/v1/devices/{token}` | Student | Declared | Rotation/logout removal | Repository operation available | No | No provider token source is currently configured | Static analysis |
| listMySMSContacts | GET `/api/v1/users/me/sms-contacts` | Student | Missing | Redacted DTO | Typed list and UI | No | No | Parsing/static |
| createMySMSContact | POST `/api/v1/users/me/sms-contacts` | Student | Missing | Phone/429 | Typed request/result and UI | No | Production intentionally does not return verification token | Static analysis |
| verifyMySMSContact | POST `/api/v1/users/me/sms-contacts/verify` | Student | Missing | Secret token handling | Typed request/result; never logged | No | Token delivery/deep-link channel external to app | Static analysis |

## Offline learning

| Operation ID | Method and path | Role | Existing implementation | Required modification | New implementation | Excluded admin operation | Backend contract blocker | Test coverage |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| studentIssueOfflineEntitlement | POST `/api/v1/student/sync/entitlements` | Student | Missing | Expiry/revocation | Typed entitlement, purge policy, UI | No | No | Expiry logic/static |
| studentGetOfflineManifest | GET `/api/v1/student/sync/manifest` | Student | Missing | Version/checksum/signed URLs | Typed manifest; signed URLs never persisted | No | No | Checksum failure |
| studentListOfflineChanges | GET `/api/v1/student/sync/changes` | Student | Missing | Signed opaque cursor | Cursor persisted verbatim | No | Terminal cursor unclear | Opaque cursor test |
| studentSyncOfflineProgress | POST `/api/v1/student/sync/progress` | Student | Missing | Durable ID/outbox/max 100 | Persistent outbox, reconnect/resume sync, replay success | No | No | Restart, replay, batch limit, ID reuse |
| studentSyncOfflineAnswers | POST `/api/v1/student/sync/answers` | Student | Missing | Durable ID/outbox/max 100 | Persistent outbox, reconnect/resume sync, replay success | No | No | Restart, replay, batch limit, ID reuse |

Offline files live only in an application-owned support directory. Downloads
resume with `Range`, verify SHA-256 before rename, delete corrupt partials, and
are removed when a locally known entitlement is expired or revoked. The local
operation ledger prevents an operation ID from ever being reused with a
different payload. A 409 leaves the operation in the outbox for an explicit
authoritative reconciliation; local work is not silently discarded.

## Intentionally excluded roles and server operations

This repository has one learner shell, one `StudentLmsController`, and no
teacher or guardian navigation/state layer. Existing historical teacher methods
in the shared service remain unreachable to avoid breaking other in-progress
work, but this migration does not add a teacher application. Guardian screens
are also excluded. Guardian routing is additionally blocked because:

- `AuthUser.roles` omits `guardian`.
- `AuthUser` omits organization memberships needed to select a tenant safely.

Every `/api/v1/admin/**` method that previously existed in the Retrofit
interface was removed, including academic/user/course/batch/enrollment/payment
and reporting operations. Backend-only webhook endpoints
`/api/v1/webhooks/livekit` and `/api/v1/payments/webhooks/dummy` are not mobile
operations and are not declared.

The supplied contract has no student-facing admission catalogue operations, so
the app does not invent an admission catalogue.

## Security and error behavior

- Access tokens stay in memory; rotating refresh tokens use platform secure
  storage and are replaced before the new access token becomes active.
- Public requests neither receive the bearer header nor trigger refresh.
- Concurrent stale 401s share one refresh and then reuse the newest access
  token; each request retries at most once.
- Only a refresh 401 clears the session and routes to sign-in. A transient
  refresh network failure does not destroy a still-recoverable session.
- RFC 7807 type, title, status, detail, instance, request ID, field errors, and
  `Retry-After` are retained centrally.
- Stack-like, multiline, or oversized backend details are never selected as a
  user-facing message; the request ID remains available for support.
- Debug logs contain method, path, and status only—never headers, bodies,
  passwords, OTPs, tokens, or signed URLs.
- Notification links must be relative, registered internal routes. Schemes,
  authorities, protocol-relative URLs, backslashes, and unknown routes are
  rejected.
- The direct-upload Dio instance has no LMS bearer interceptor.
- No backend signing key, LiveKit API secret, storage secret, Firebase service
  account, database/Redis credential, or web-only security configuration is in
  the Flutter project.
- The Xcode 16.4 build pins `connectivity_plus` 7.0.0 and
  `device_info_plus` 12.3.0; later releases currently reference Xcode 26-only
  APIs. `flutter_secure_storage` 10.3.1 preserves the same secure-storage API
  while keeping a compatible transitive Windows dependency range. Revisit the
  pins when the production Xcode toolchain is upgraded.

## Remaining contract blockers

1. Guardian is absent from `AuthUser.roles`; organization memberships are also
   absent.
2. Several operations return generic `OK`, `List`, or an untyped 200. They stay
   dynamic only at the data-source/repository boundary.
3. List schemas require a string `next_cursor`, but do not define the terminal
   value consistently. The client accepts null/missing/empty and never decodes
   a non-empty cursor.
4. There are no student-facing admission catalogue endpoints.
5. Certificate downloads are redirects; admit-card downloads are signed URL
   objects. These intentionally use separate handlers.
6. `StudentSyllabusProgressList` does not contain ordered syllabus units or
   per-unit status, despite the product requirement requesting them.
7. Assignment DTOs expose allowed file types but not a maximum attachment byte
   size.
8. `SignedDownload` and media access responses omit an expiry timestamp, so the
   client treats them as one-shot values and never caches them.
9. Notification-preference fields are unspecified (`OK`/raw object), so a
   field-level preferences UI cannot be authored without inventing keys.
10. Push lifecycle wiring requires real Android/iOS provider configuration,
    which is intentionally absent from this repository. The safe register and
    remove operations are implemented, but no token can be fabricated.
11. Payment intent remains the documented dummy provider; production payment
    completion depends on backend/provider configuration.
