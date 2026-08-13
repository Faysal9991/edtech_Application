# Staging Runtime Verification

Status: **BLOCKED / NOT RUN** on 2026-08-13.

The mobile repository contains no backend source tree, PostgreSQL connection configuration, migration runner, migration `00019`, Docker Compose database, or `integration_test/` staging harness. No staging credentials or three-role test accounts were supplied. Running mutation tests against the production default URL is explicitly unsafe and was not attempted.

This source-level upgrade therefore does **not** constitute production runtime sign-off.

## Required backend inputs

- Backend repository/revision matching `docs/openapi.yaml`
- Migration `00019` and the backend’s normal migration command
- Staging-only PostgreSQL URL/credentials supplied through the backend’s secret manager
- Staging API base URL and TLS-valid host
- Test-account credentials for the eight required account states
- Permission to create/revoke Guardian relationships and attendance sessions in staging

## Migration evidence to capture

1. Record schema migration version before the run.
2. Apply through `00019` using the backend’s actual migration tool.
3. Confirm expected membership/Guardian constraints and indexes in PostgreSQL.
4. Run backend integration tests against the migrated database.
5. Roll back `00019` and confirm the previous schema and data invariants.
6. Re-apply `00019`, rerun tests, and retain sanitized logs/CI artifacts.
7. Confirm the rollback does not orphan users, memberships or student-guardian links.

Do not print connection URLs, database passwords, JWTs, invitation tokens or OTPs in captured output.

## Required staging E2E matrix

| Account/state | Expected result |
|---|---|
| Student only | Auto-select organization/role and load Student dashboard |
| Teacher only | Load Teacher dashboard and complete attendance create/open/roster/mark/close |
| Guardian only | Load linked learners and safe child summaries |
| Teacher + Guardian | Prompt for role; switching clears the prior shell |
| Multi-organization | Prompt for organization; every scoped request carries the new header |
| Suspended membership | Excluded from selection; no scoped data access |
| Revoked Guardian relationship | Child disappears and prior child data cannot reload |
| Organization Admin without mobile role | Admin Portal restricted-access page; no Admin endpoint call |

## Additional staging scenarios

- Token and invitation-ID-plus-OTP Guardian acceptance, including expired, consumed, invalid, rate-limited and organization-mismatch cases
- Concurrent access-token expiry and rotating refresh-token replacement
- Notification deep links for current, switchable and revoked organization/role contexts
- Offline Student progress replay before and after organization/role switches
- Direct signed upload/download verification proving no LMS authorization or organization header reaches storage

Production approval remains blocked until the migration up/down run and this matrix pass against real staging PostgreSQL.
