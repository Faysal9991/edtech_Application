# Current boundaries and roadmap

## 1. Purpose

This is an honest inventory of what prevents the current Flutter client from
being a complete production LMS. It distinguishes deliberate Phase-1 scope from
bugs and from external/backend dependencies.

## 2. Production blockers

| Area | Current state | Impact | Recommended next step |
| --- | --- | --- | --- |
| Payments | Order and dummy intent creation only | No real payment, confirmation, refund, or paid enrollment | Integrate a production gateway on the backend, verify webhooks, expose safe client checkout state |
| Live classes | LiveKit room, participant video, camera/mic controls, and token recovery are implemented | Real-room behavior still depends on staging credentials and device permissions | Run multi-device staging tests for reconnect, long sessions, and backgrounding |
| Private lesson content | Public course/lesson responses may omit private media ID or text body | Enrolled learner can reach a lesson with no playable asset | Ensure an enrollment-authorized course/lesson response supplies private content |
| Assignment upload size | Detail, accepted types, multi-file direct upload, progress, cancellation, checksum, and intent retry are implemented | The contract does not expose a maximum byte size | Add the server limit to `StudentAssignment` or a dedicated upload-policy response |
| Release automation | No CI/release pipeline exists in the repository | Generated-code drift and unverified artifacts can ship | Add analysis, tests, codegen-diff, staging integration, signed build pipeline |

## 3. Important incomplete experiences

### Course and catalog

- Instructor public identity is absent from the course response; live mapping
  uses the neutral placeholder “Course instructor.”
- Ratings and student counts are not populated from the live course DTO and
  default to zero.
- Bookmark/save action is UI-only and reports that the API is missing.
- Course sharing copies the slug, not a universal/deep link or share-sheet text.
- Category mapping is simplified: `category_name` or level becomes the domain
  category/subject, and education labels map beginner/intermediate/advanced to
  SSC/HSC/Admission.
- Catalog pages drain every cursor page into memory instead of incremental
  pagination.

### Learning and offline

- Enrollment-backed offline manifests, resumable checksum-verified media,
  entitlement cleanup, opaque change cursors, and durable progress/answer
  outboxes are implemented. Full offline lesson rendering still needs product
  integration with the lesson player.
- Signed media URL expiry/refresh during long playback is not handled.
- Subtitle/audio tracks are parsed but not exposed in player controls.
- Progress errors are intentionally silent during lifecycle flush; there is no
  sync status or dead-letter reporting.
- Lesson completion feedback does not immediately reconcile the course progress
  displayed elsewhere.

### Assessments

- Exam attempt IDs and unacknowledged answers are persisted and an active
  attempt is restored after process death. Quiz attempt restoration remains a
  follow-up because the contract does not expose a direct quiz-attempt detail
  operation.
- Single/multiple option changes autosave immediately, while text answers save
  only on navigation or submit. There is no debounce/draft indicator beyond a
  simple saving label.
- Leaderboard, attempt history, question review, section navigation, negative
  marking explanation, and analytics UI are absent.
- Assignment selection supports multiple files, upload progress/cancellation,
  SHA-256 upload intents, and one retry for an expired intent. Files are still
  read into memory and the backend does not expose a maximum byte size.

### Profile and account

- Optional profile fields are not retained in `AppUser`, so the edit page cannot
  prefill first name, last name, phone, or biography from controller state.
- Profile writes hard-code timezone `Asia/Dhaka` and locale `bn-BD` even when the
  app language is English.
- Avatar and academic-preference endpoints exist but have no UI.
- Saved courses and help center are placeholders.
- There is no user-facing account deletion flow.
- Email verification and password reset require manual token entry; deep links
  are not configured.

### Notifications

- Notification preference endpoints exist but are not surfaced.
- Device registration/removal endpoints exist but no push provider or lifecycle
  integration is active.
- Notification-list taps mark items read and route only through the registered
  internal-link allowlist. Foreground provider delivery and permission
  education still require push-provider configuration.
- Legacy unused localization strings still describe older API gaps and should be
  pruned to keep the catalog trustworthy.

### Results and certificates

- Certificate downloads leave the app through an external URL.
- There is no native share/save workflow for certificate files.
- Results do not expose the full attempt-review or leaderboard capabilities in
  the API contract.

## 4. Role scope gap

The shared client retains historical teacher operations for:

- Courses, modules, lessons, and students.
- Batches, schedules, instructors, enrollments, and attendance.
- Quizzes, questions, assignments, grading, exams, question bank, and analytics.
- Live-class lifecycle.

None has a role-specific shell, screen, controller, authorization UX, or test
suite. Every `/api/v1/admin/**` operation was removed from the mobile client;
admin APIs must remain server/web-console concerns.

If a teacher app is planned, decide first whether it belongs in this mobile
project or a separate Flutter flavor/app. Guardian work is contract-blocked by
the missing guardian role and organization memberships in `AuthUser`.

## 5. Architecture and technical debt

| Concern | Current tradeoff | Scaling risk |
| --- | --- | --- |
| Global ChangeNotifiers | Simple Phase-1 state | Broader rebuilds and hard-to-compose async state |
| Mixed controller/direct repository access | Convenient for transient flows | Inconsistent test and error-handling boundaries |
| Runtime route arguments | Minimal Navigator setup | No compile-time route safety or deep links |
| Full-page cursor draining | Simple screen model | Slow first render and high memory for large datasets |
| One localization source file | Easy lookup | Large manual map, stale keys, no translator workflow |
| Raw JSON for broad contract areas | Avoids unused DTO explosion | Runtime errors when those operations become UI features |
| Generated files checked in | Deterministic consumers | Drift if generation is not enforced in CI |
| SharedPreferences outbox/metadata plus app-owned files | Simple durable mobile storage | Larger offline catalogs may need an indexed database and background-transfer manager |

These are not all immediate rewrite triggers. Address them when product scope
creates measurable pressure, and protect migrations with tests.

## 6. Security and privacy gaps to close before launch

- Complete a threat model covering token theft, account recovery, private media,
  uploaded coursework, certificates, live-class tokens, and payments.
- Test platform secure-storage behavior during reinstall, device backup, and
  biometric/passcode changes.
- Define server-side upload type, size, malware scanning, and retention policy.
- Ensure signed URLs are short-lived and audience-scoped.
- Confirm authorization for every student and retained teacher endpoint; the
  existence of a typed method is not authorization.
- Add privacy-safe crash/error reporting with request-ID correlation and
  redaction rules.
- Review release manifests so development cleartext/local network permissions do
  not become broader than required.
- Publish privacy, terms, support, and deletion/retention policies.

TLS pinning is not implemented. Whether to add it should be decided alongside a
certificate rotation and incident-recovery plan; a brittle pin without
operations support can cause an avoidable outage.

## 7. Quality gaps

Current automated coverage is 29 tests covering selected contracts, concurrent
refresh, offline replay/checksums, theme tokens, localization parity, and a
happy-path widget flow. Missing categories:

- Auth failure/restore/logout widget and integration tests.
- Loading, partial-error, empty, pagination, and retry UI tests.
- Quiz/exam timers, autosave failure, restoration, and auto-submit tests.
- Upload intent/storage/completion failure matrix.
- Video player, lifecycle, and signed URL expiry tests.
- Golden tests for Bengali/English and light/dark.
- Screen reader, large text, reduced motion, and keyboard navigation checks.
- End-to-end staging tests and real-device release smoke tests.
- Performance tests for large catalogs, long curricula, and large attachments.

## 8. Platform and brand cleanup

- `web/manifest.json` still uses `edtech_application`, Flutter starter text, and
  default blue colors instead of Shikhon branding.
- The declared `assets/` directory contains only `.gitkeep`; production imagery,
  course thumbnails, and custom brand assets are not packaged.
- Version remains `1.0.0+1`; a release/version policy is not documented.
- Store signing, bundle/application IDs, privacy metadata, and screenshots are
  outside this repo documentation and must be confirmed per environment.
- Desktop runners exist, but the product UX and release checks are mobile-first.

## 9. Recommended delivery sequence

### P0 — release integrity

1. Freeze and validate the backend contract against the checked-in client.
2. Add CI, code generation checks, repository/auth tests, and staging smoke tests.
3. Close private lesson and assignment-detail data gaps.
4. Decide whether payment and live video are launch scope; either complete them
   or remove/clearly gate their entry points.
5. Complete security/privacy review and release configuration.

### P1 — complete core learning

1. Real payment with server-verified activation.
2. Multi-device staging validation for the implemented LiveKit room.
3. Attempt history/review and quiz restoration after a backend detail endpoint
   exists.
4. Push provider integration, permissions, and preference UI.
5. Profile completeness, avatar, academic preferences, and deep links.

### P2 — resilience and expansion

1. Incremental pagination and full offline lesson-player integration.
2. Upload progress/background transfer and richer media controls.
3. Analytics/leaderboard experiences.
4. Teacher/guardian product strategy and role-specific application architecture.
5. Broader accessibility, performance, and observability automation.

## 10. Definition of “production ready” for this app

At minimum, all P0 items must be closed, every launch-scope journey must have a
real backend integration or be visibly gated, release artifacts must pass
automated and real-device checks, secrets and private content must be protected,
and operations must be able to detect and respond to auth, media, upload,
payment, and live-session failures.
