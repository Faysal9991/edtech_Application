# API integration reference

## 1. Scope

This document describes the HTTP surface represented by the Flutter client. It
does not replace the backend OpenAPI document. Request/response fields and query
parameters are authoritative in:

- `lib/core/network/api_service.dart`
- `lib/core/network/phase_one_dto.dart`
- `lib/core/network/expanded_api_dto.dart`
- `lib/features/authentication/data/models/auth_dto.dart`

The Retrofit interface currently declares **166 operations**. The active UI is
student-first; many teacher and administrator operations are contract-only.

## 2. Connection rules

| Setting | Value |
| --- | --- |
| Default origin | `https://lmsservice.maxlived.net` |
| Override | `--dart-define=API_BASE_URL=<origin>` |
| API prefix | Already included in endpoint annotations as `/api/v1` |
| Connect timeout | 20 seconds |
| Receive timeout | 20 seconds |
| Accepted response | JSON and RFC 7807 problem JSON |
| Auth scheme | Bearer access token |
| Pagination | Cursor + limit, drained by the student repository |

Do not append `/api/v1` to `API_BASE_URL`.

## 3. Client-wide behavior

### Authentication

The access token is attached to requests when present. On an eligible `401`,
the client:

1. Reads the secure refresh token.
2. Joins or starts a single shared refresh operation.
3. Saves the rotated token pair.
4. Retries the failed request once.
5. Clears tokens if refresh fails.

Register, login, forgot/reset password, verification, logout, and logout-all
paths never trigger refresh.

### Error format

The preferred backend error is RFC 7807-like:

```json
{
  "type": "about:blank",
  "title": "Validation failed",
  "status": 422,
  "detail": "Request validation failed",
  "request_id": "request-123",
  "errors": [
    {"field": "password", "message": "minimum 12 characters"}
  ]
}
```

The client retains the message, HTTP status, request ID, and field errors in
`AppException`. Not every page currently renders field errors next to the
corresponding input; most render the top-level message.

### Cursor lists

The generic response shape is represented by `ListResponseDto`:

```json
{
  "items": [],
  "next_cursor": "opaque-or-null"
}
```

The student repository requests `limit=100` and follows unique non-empty cursors
until exhaustion. Current screens do not incrementally render pages.

### Monetary values

Course prices use `price_minor` and are displayed as `price_minor / 100` with
currency expected to be `BDT`. Confirm with the backend that BDT values are
stored in poisha before enabling real payments.

### Date/time values

DTOs parse timestamps as `DateTime`. Pages generally convert server timestamps
to the device’s local timezone for display. Profile updates currently send the
fixed timezone `Asia/Dhaka`.

## 4. Endpoints exercised by current user journeys

This section lists active screen flows, not merely interface declarations.

### Authentication and profile

| Method and path | Client use |
| --- | --- |
| `POST /api/v1/auth/register` | Create pending learner account |
| `POST /api/v1/auth/login` | Obtain token pair |
| `POST /api/v1/auth/refresh` | Restore/rotate session and recover eligible `401`s |
| `POST /api/v1/auth/logout` | Revoke current refresh token on sign-out |
| `GET /api/v1/auth/me` | Fetch user immediately after sign-in |
| `POST /api/v1/auth/change-password` | Change password; client clears tokens afterward |
| `POST /api/v1/auth/forgot-password` | Request recovery message |
| `POST /api/v1/auth/reset-password` | Reset using manually supplied token |
| `POST /api/v1/auth/verify-email` | Verify using manually supplied token |
| `POST /api/v1/auth/resend-verification` | Request another verification message |
| `GET /api/v1/users/me` | Fetch profile during restore and after update |
| `PATCH /api/v1/users/me` | Update profile fields |

### Catalog, enrollment, and learning

| Method and path | Client use |
| --- | --- |
| `GET /api/v1/courses` | Search/list catalog; cursor pagination |
| `GET /api/v1/courses/{slug}` | Load modules and lessons for course details |
| `POST /api/v1/courses/{id}/enroll` | Enroll in a course |
| `GET /api/v1/student/enrollments` | Build My Learning list |
| `PUT /api/v1/student/enrollments/{id}/lessons/{lessonId}/progress` | Periodic position/delta and manual completion |
| `GET /api/v1/media/{id}/playback` | Get signed playable URL and alternate tracks |
| `GET /api/v1/media/{id}/access-url` | Open non-video/private media externally |
| `GET /api/v1/student/dashboard` | Populate aggregate home experience |

### Discovery and attempts

| Method and path | Client use |
| --- | --- |
| `GET /api/v1/student/quizzes` | Assessment quiz list |
| `POST /api/v1/student/quizzes/{id}/attempts` | Start quiz snapshot |
| `PUT /api/v1/student/quiz-attempts/{id}/answers` | Autosave quiz answer |
| `POST /api/v1/student/quiz-attempts/{id}/submit` | Finalize quiz |
| `GET /api/v1/student/assignments` | Assessment assignment list |
| `POST /api/v1/student/assignments/{id}/submissions` | Create assignment draft/submission |
| `POST /api/v1/student/submissions/{id}/submit` | Finalize assignment |
| `GET /api/v1/student/exams` | Model-test/admission-exam list |
| `POST /api/v1/student/exams/{id}/attempts` | Start exam snapshot |
| `PUT /api/v1/student/exam-attempts/{id}/answers` | Autosave exam answer |
| `POST /api/v1/student/exam-attempts/{id}/submit` | Finalize exam |

### Assignment media upload

| Step | Transport |
| --- | --- |
| Create intent | `POST /api/v1/media/upload-intents` with LMS bearer token |
| Upload bytes | `PUT <presigned upload_url>` with a separate token-free client |
| Complete asset | `POST /api/v1/media/{id}/complete` with LMS bearer token |

The app sends file name, MIME type, byte count, and kind `assignment`. It holds
the selected file in memory; there is no chunked/background uploader.

### Live classes

| Method and path | Client use |
| --- | --- |
| `GET /api/v1/student/live-classes` | Student session list |
| `POST /api/v1/live-classes/{id}/token` | Short-lived LiveKit credentials |

The room renderer is not implemented even though token retrieval is active.

### Payments

| Method and path | Client use |
| --- | --- |
| `POST /api/v1/payments/orders` | Create order with `Idempotency-Key` |
| `POST /api/v1/payments/orders/{id}/payment-intent` | Create development/dummy intent |
| `GET /api/v1/student/payments` | Payment history |

No production payment-gateway redirect or SDK is called.

### Results, certificates, and notifications

| Method and path | Client use |
| --- | --- |
| `GET /api/v1/student/results` | Results tab |
| `GET /api/v1/student/certificates` | Certificate list |
| `GET /api/v1/student/certificates/{id}/download` | Read `302 Location` and open externally |
| `GET /api/v1/certificates/verify/{certificateNumber}` | Public verification |
| `GET /api/v1/notifications` | Notification center |
| `GET /api/v1/notifications/unread-count` | Unread badge state |
| `PATCH /api/v1/notifications/{id}/read` | Mark one read |
| `PATCH /api/v1/notifications/read-all` | Mark all read |

## 5. Repository-supported but not currently reached by a screen

`StudentLmsRepository` also wraps these student endpoints even though current
pages do not call the wrapper directly:

- `GET /api/v1/student/live-classes/{id}`
- `GET /api/v1/student/quizzes/{id}`
- `GET /api/v1/student/assignments/{id}`
- `GET /api/v1/student/submissions`
- `GET /api/v1/student/exams/{id}/leaderboard`

They are ready for detail, history, and leaderboard UI work without adding a new
transport method.

## 6. Complete contract catalog

Counts in this catalog total 166. “Contract-only” means the operation exists in
Retrofit but is not evidence that the corresponding Flutter workflow is built.

### Health and documentation — 4

```text
GET /health/live
GET /health/ready
GET /metrics
GET /openapi.yaml
```

These operations are contract-only and are not used for in-app health gating.

### Authentication — 11

```text
POST /api/v1/auth/register
POST /api/v1/auth/login
POST /api/v1/auth/refresh
POST /api/v1/auth/logout
POST /api/v1/auth/logout-all
GET  /api/v1/auth/me
POST /api/v1/auth/change-password
POST /api/v1/auth/forgot-password
POST /api/v1/auth/reset-password
POST /api/v1/auth/verify-email
POST /api/v1/auth/resend-verification
```

All except logout-all have an active or supporting mobile flow.

### Public academic catalog and admin catalog management — 15

```text
GET    /api/v1/academic/programs
GET    /api/v1/academic/levels
GET    /api/v1/academic/classes
GET    /api/v1/academic/boards
GET    /api/v1/academic/groups
GET    /api/v1/academic/subjects
GET    /api/v1/academic/subjects/{id}/chapters
GET    /api/v1/academic/chapters/{id}/topics
GET    /api/v1/academic/exam-targets
GET    /api/v1/academic/sessions
GET    /api/v1/admin/academic/{kind}
POST   /api/v1/admin/academic/{kind}
GET    /api/v1/admin/academic/{kind}/{id}
PATCH  /api/v1/admin/academic/{kind}/{id}
DELETE /api/v1/admin/academic/{kind}/{id}
```

All are contract-only in the current screens.

### Users and profiles — 9

```text
GET   /api/v1/users/me
PATCH /api/v1/users/me
POST  /api/v1/users/me/avatar
GET   /api/v1/users/me/academic-preferences
PUT   /api/v1/users/me/academic-preferences
GET   /api/v1/admin/users
GET   /api/v1/admin/users/{id}
PATCH /api/v1/admin/users/{id}/status
PUT   /api/v1/admin/users/{id}/roles
```

The current UI uses profile GET/PATCH. Avatar, academic preferences, and admin
operations are contract-only.

### Public and managed courses — 17

```text
GET    /api/v1/courses
GET    /api/v1/courses/{slug}
GET    /api/v1/teacher/courses
POST   /api/v1/teacher/courses
GET    /api/v1/teacher/courses/{id}
PATCH  /api/v1/teacher/courses/{id}
GET    /api/v1/teacher/courses/{id}/academic-mappings
PUT    /api/v1/teacher/courses/{id}/academic-mappings
GET    /api/v1/teacher/courses/{id}/students
POST   /api/v1/teacher/courses/{id}/submit-review
POST   /api/v1/admin/courses/{id}/publish
POST   /api/v1/teacher/courses/{id}/modules
PATCH  /api/v1/teacher/modules/{id}
DELETE /api/v1/teacher/modules/{id}
POST   /api/v1/teacher/modules/{id}/lessons
PATCH  /api/v1/teacher/lessons/{id}
DELETE /api/v1/teacher/lessons/{id}
```

The mobile UI uses only the two public GET operations.

### Batch operations — 17

```text
GET    /api/v1/student/batches
GET    /api/v1/student/batches/{id}
GET    /api/v1/teacher/batches
GET    /api/v1/teacher/batches/{id}
GET    /api/v1/teacher/batches/{id}/students
GET    /api/v1/teacher/batches/{id}/schedule
GET    /api/v1/admin/batches
POST   /api/v1/admin/batches
GET    /api/v1/admin/batches/{id}
PATCH  /api/v1/admin/batches/{id}
POST   /api/v1/admin/batches/{id}/instructors
DELETE /api/v1/admin/batches/{id}/instructors/{instructorId}
POST   /api/v1/admin/batches/{id}/enrollments
DELETE /api/v1/admin/batches/{id}/enrollments/{enrollmentId}
POST   /api/v1/admin/batches/{id}/schedules
PATCH  /api/v1/admin/batch-schedules/{id}
DELETE /api/v1/admin/batch-schedules/{id}
```

All are contract-only in the current UI.

### Private media — 7

```text
POST /api/v1/media/upload-intents
POST /api/v1/media/{id}/complete
GET  /api/v1/media/{id}/access-url
GET  /api/v1/media/{id}/playback
POST /api/v1/media/{id}/tracks
POST /api/v1/media/{id}/retry
POST /api/v1/media/{id}/regenerate-thumbnail
```

Upload intent/completion and access/playback are active. Track management,
processing retry, and thumbnail regeneration are contract-only.

### Student learning — 4

```text
POST /api/v1/courses/{id}/enroll
GET  /api/v1/student/enrollments
GET  /api/v1/student/enrollments/{id}
PUT  /api/v1/student/enrollments/{id}/lessons/{lessonId}/progress
```

All except enrollment detail are used by active screens.

### Aggregated student mobile experience — 11

```text
GET /api/v1/student/dashboard
GET /api/v1/student/live-classes
GET /api/v1/student/live-classes/{id}
GET /api/v1/student/quizzes
GET /api/v1/student/quizzes/{id}
GET /api/v1/student/assignments
GET /api/v1/student/assignments/{id}
GET /api/v1/student/submissions
GET /api/v1/student/submissions/{id}
GET /api/v1/student/calendar
GET /api/v1/admin/enrollments
```

Dashboard and student lists are active; individual detail, submission history,
calendar, and admin enrollments are not currently presented.

### Quizzes — 12

```text
GET    /api/v1/teacher/quizzes
POST   /api/v1/teacher/quizzes
GET    /api/v1/teacher/quizzes/{id}
PATCH  /api/v1/teacher/quizzes/{id}
DELETE /api/v1/teacher/quizzes/{id}
POST   /api/v1/teacher/quizzes/{id}/questions
PATCH  /api/v1/teacher/quiz-questions/{id}
DELETE /api/v1/teacher/quiz-questions/{id}
GET    /api/v1/student/quizzes/{id}/attempts
POST   /api/v1/student/quizzes/{id}/attempts
PUT    /api/v1/student/quiz-attempts/{id}/answers
POST   /api/v1/student/quiz-attempts/{id}/submit
```

The current learner flow uses start, save, and submit. Attempt history and all
teacher operations are contract-only.

### Admission exams, model tests, question bank, and analytics — 19

```text
GET   /api/v1/student/exams
GET   /api/v1/student/exams/{id}
POST  /api/v1/student/exams/{id}/attempts
GET   /api/v1/student/exam-attempts/{id}
PUT   /api/v1/student/exam-attempts/{id}/answers
POST  /api/v1/student/exam-attempts/{id}/submit
GET   /api/v1/student/exam-attempts/{id}/result
GET   /api/v1/student/exams/{id}/leaderboard
GET   /api/v1/teacher/question-bank
POST  /api/v1/teacher/question-bank
PATCH /api/v1/teacher/question-bank/{id}
POST  /api/v1/teacher/exams
POST  /api/v1/teacher/exams/{id}/publish
POST  /api/v1/teacher/exams/{id}/sections
POST  /api/v1/teacher/exams/{id}/questions/from-bank
GET   /api/v1/teacher/exams/{id}/attempts
GET   /api/v1/teacher/exams/{id}/analytics
GET   /api/v1/teacher/quizzes/{id}/attempts
GET   /api/v1/teacher/quizzes/{id}/analytics
```

The active UI lists exams and starts, saves, and submits attempts. Detail,
attempt retrieval/result, leaderboard UI, question bank, and analytics are not
currently presented.

### Assignments — 10

```text
GET    /api/v1/teacher/assignments
POST   /api/v1/teacher/assignments
GET    /api/v1/teacher/assignments/{id}
PATCH  /api/v1/teacher/assignments/{id}
DELETE /api/v1/teacher/assignments/{id}
POST   /api/v1/student/assignments/{id}/submissions
POST   /api/v1/student/submissions/{id}/submit
PATCH  /api/v1/teacher/submissions/{id}/grade
GET    /api/v1/teacher/assignments/{id}/submissions
GET    /api/v1/teacher/submissions
```

The two student writes are active. Teacher creation, grading, and review are
contract-only.

### Live classes and attendance — 10

```text
GET    /api/v1/teacher/live-classes
POST   /api/v1/teacher/live-classes
GET    /api/v1/teacher/live-classes/{id}
PATCH  /api/v1/teacher/live-classes/{id}
DELETE /api/v1/teacher/live-classes/{id}
POST   /api/v1/teacher/live-classes/{id}/start
POST   /api/v1/teacher/live-classes/{id}/end
POST   /api/v1/live-classes/{id}/token
GET    /api/v1/teacher/live-classes/{id}/attendance
GET    /api/v1/teacher/batches/{id}/attendance
```

Only live token creation is used here; the student list is in the aggregate
student section. Teacher lifecycle and attendance are contract-only.

### Payments — 5

```text
POST /api/v1/payments/orders
GET  /api/v1/payments/orders/{id}
POST /api/v1/payments/orders/{id}/payment-intent
GET  /api/v1/student/payments
GET  /api/v1/admin/payments
```

Order creation, intent creation, and student history are active. Order detail
and admin history are contract-only.

### Results and certificates — 4

```text
GET /api/v1/student/results
GET /api/v1/student/certificates
GET /api/v1/student/certificates/{id}/download
GET /api/v1/certificates/verify/{certificateNumber}
```

All four have active user-facing flows.

### Notifications and devices — 8

```text
GET    /api/v1/notifications
GET    /api/v1/notifications/unread-count
PATCH  /api/v1/notifications/{id}/read
PATCH  /api/v1/notifications/read-all
GET    /api/v1/notifications/preferences
PUT    /api/v1/notifications/preferences
POST   /api/v1/devices
DELETE /api/v1/devices/{token}
```

List, count, and read mutations are active. Preferences and push-device
registration are contract-only.

### Reports — 3

```text
GET /api/v1/admin/reports/overview
GET /api/v1/admin/reports/revenue
GET /api/v1/teacher/reports/overview
```

All are contract-only in the student app.

## 7. DTO and serialization rules worth preserving

- Registration sends `display_name`, not a legacy confirmation or Firebase
  field.
- Passwords used for registration/reset/change must satisfy the 12-character
  client rule and backend schema.
- Progress sends `position_seconds`, `watched_seconds_delta`, and
  `manual_complete`; watched delta must never exceed 120.
- Course writes preserve optimistic `version` for teacher contract calls.
- Academic preferences send catalog IDs rather than free-form legacy labels.
- Public quiz/exam snapshots must not require correct-answer flags before
  submission.
- Signed alternate playback tracks are retained in typed playback metadata.
- Payment order creation must include an idempotency key.

## 8. Adding or changing an endpoint

1. Update the Retrofit declaration in `api_service.dart`.
2. Add or update immutable DTOs and explicit JSON key mappings.
3. Run code generation.
4. Add repository behavior and error normalization.
5. Expose shared state through a controller when multiple screens consume it;
   keep truly transient operations local when appropriate.
6. Add request-serialization and response-parsing tests.
7. Update this reference and the affected user journey.

Generation command:

```bash
dart run build_runner build --delete-conflicting-outputs
```
