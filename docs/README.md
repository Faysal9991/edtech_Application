# Shikhon LMS documentation

This directory documents the Flutter client as it exists in the repository on
2026-08-13. The backend implementation is not part of this repository; backend
behavior is described only where it is represented by the typed Retrofit
contract and the client code that calls it.

## Start here

| Document | Audience | Purpose |
| --- | --- | --- |
| [Mobile API coverage](MOBILE_API_COVERAGE.md) | Mobile/backend engineers, QA | Authoritative 252-operation non-Admin contract matrix and exact integration status |
| [Mobile information architecture](MOBILE_INFORMATION_ARCHITECTURE.md) | Product, design, mobile engineers | Shared session flow and isolated Student, Teacher and Guardian shells |
| [Mobile design system](MOBILE_DESIGN_SYSTEM.md) | Design and mobile engineers | Role-consistent adaptive UI patterns and accessibility rules |
| [Staging runtime verification](STAGING_RUNTIME_VERIFICATION.md) | Backend, QA, release engineers | PostgreSQL migration and eight-account E2E release gate |
| [Product and user journeys](PRODUCT_AND_USER_JOURNEYS.md) | Product, QA, design, support | What the student can do, the end-to-end journeys, screen inventory, and navigation map |
| [Application architecture](ARCHITECTURE.md) | Mobile engineers, technical leads | Runtime composition, layers, state, networking, authentication, data flow, storage, localization, and security |
| [API integration reference](API_REFERENCE.md) | Mobile and backend engineers, QA | Base URL rules, API behavior, endpoints used by the UI, and the wider 166-operation client contract |
| [Development and operations](DEVELOPMENT_AND_OPERATIONS.md) | Developers, release engineers | Setup, generation, testing, builds, configuration, troubleshooting, and release checks |
| [Current boundaries and roadmap](CURRENT_BOUNDARIES.md) | Product and engineering | Known placeholders, production blockers, technical risks, and recommended next work |

## Product snapshot

Shikhon is a Bangla-first learning-management client built with Flutter. It
supports isolated Student, Teacher and Guardian workspaces, Bengali and English,
light and dark themes, and responsive Material 3 UI. The mature Student flow is
joined by core Teacher and Guardian experiences driven by active organization
memberships.

1. Register, verify email, sign in, restore a session, and manage a profile.
2. Discover courses and inspect their curriculum.
3. Enroll in free courses or start the development payment flow for paid ones.
4. Watch private lesson media and report learning progress.
5. Join the assessment, assignment, model-test, and live-class flows.
6. Review results, notifications, and certificates.
7. Teach assigned classes, manage availability and run physical attendance.
8. Monitor linked learners through Guardian-safe progress, attendance and results.

The production entry point connects to `https://lmsservice.maxlived.net` by
default. Tests and previews can instantiate `MyApp` without live repositories;
that mode uses the local authentication and course mocks.

## Implementation status vocabulary

The documents use these terms consistently:

- **Implemented**: there is a user-facing screen and a connected client flow.
- **Partially implemented**: the screen and some API work exist, but a required
  production integration or complete experience is missing.
- **Contract-only**: Retrofit exposes the endpoint, but this Flutter app has no
  corresponding user-facing workflow.
- **Mock-only**: available only when `MyApp` is constructed without live
  dependencies, primarily for tests and previews.
- **Not implemented**: neither an active client flow nor an equivalent screen
  exists in this repository.

## Source-of-truth order

When documentation and code disagree, use this order:

1. Backend OpenAPI specification and backend behavior.
2. `lib/core/network/api_service.dart` for the mobile API surface.
3. Repositories and controllers for client behavior.
4. Pages for the current user experience.
5. These documents.

Update the affected document in the same change as any route, endpoint, DTO,
storage, or user-journey change.
