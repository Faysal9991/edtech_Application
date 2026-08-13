# Shikhon LMS

A Bangla-first, student-focused Phase-1 Flutter LMS. Firebase has been removed. The production entry point uses the supplied LMS OpenAPI contract through Dio + Retrofit; local mock data is available only when `MyApp` is constructed without live dependencies (for widget tests and UI previews).

## Full documentation

The maintained product journey, architecture, API, development, operations, and
current-boundary documentation starts at [`docs/README.md`](docs/README.md).

## Architecture

```text
lib/
├── core/
│   ├── auth/
│   ├── error/
│   ├── network/
│   ├── routing/
│   ├── storage/
│   └── theme/
├── features/
│   ├── authentication/
│   ├── home/
│   ├── courses/
│   ├── learning/
│   ├── assessments/
│   ├── live_class/
│   ├── payments/
│   ├── results/
│   ├── notifications/
│   └── profile/
└── shared/
    ├── animations/
    ├── widgets/
    ├── models/
    └── localization/
```

Provider handles presentation state, Freezed provides immutable JSON models, Retrofit defines the typed API contract, and Dio handles networking. Reusable motion lives in `shared/animations` and respects reduced-motion accessibility settings.

## Localization

- Bengali and English are available throughout authentication, all five student tabs, and secondary API flows.
- Bengali is the default and the user's language choice persists locally.
- Dynamic labels, validation feedback, placeholders, tooltips, dialog copy, and Bengali digits use the shared `AppLocalizations` catalog.
- Course titles and other backend-authored content are displayed in the language returned by the API.

## API integration

- Register, login, rotating refresh, session restore, logout, email verification, forgot/reset password, change password, and profile update are connected.
- Access tokens stay in memory; rotating refresh tokens use Flutter Secure Storage.
- Concurrent authenticated `401` responses share one refresh operation and each request retries at most once.
- RFC 7807 errors, field validation messages, request IDs, cursor pagination, and empty/loading/error states are supported.
- The Retrofit client covers all 166 app-callable operations in the current 169-operation OpenAPI document. `/docs` and the two server-to-server webhooks are intentionally not exposed from the mobile client.
- Academic catalogues, batches/schedules, the aggregated student dashboard, live/quiz/assignment discovery, calendar, typed media playback/tracks, admission exams, model tests, negative-marking attempts, merit leaderboards, analytics, notification preferences, and attendance contracts are connected.
- Home uses the dashboard aggregate; assessment and live-class pages now load server-owned lists instead of accepting manually pasted IDs. Quiz and exam answers are auto-saved to their distinct endpoints.
- Presigned uploads use a separate token-free Dio client, preventing LMS bearer tokens from leaking to the storage origin.
- Critical student payloads use immutable Freezed DTOs. Teacher/admin operations are present in Retrofit, while the Phase-1 mobile interface remains student-first.
- Debug network logs contain only method, path, and status; request/response bodies, refresh tokens, upload URLs, and LiveKit tokens are not logged.

The hosted API at `https://lmsservice.maxlived.net` is the default. `API_BASE_URL`
remains configurable and must contain the API origin only—do not append `/api/v1`.

```bash
# Hosted API (default)
flutter run

# Optional local backend: Android emulator
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8080

# Optional local backend: iOS simulator / desktop
flutter run --dart-define=API_BASE_URL=http://localhost:8080

# Optional local backend: physical device
flutter run --dart-define=API_BASE_URL=http://192.168.x.x:8080
```

Android cleartext and iOS local-network exceptions exist only for optional local backend testing. The default hosted API uses HTTPS.

## Remaining production boundaries

The updated contract closes the earlier dashboard, discovery, academic-catalogue, profile, batch, exam, leaderboard, and notification gaps. These boundaries remain:

- Published public lesson responses still do not include private `media_asset_id` or text body; the enrolled lesson response must supply the asset before the typed playback endpoint can be used.
- LiveKit credentials are retrieved without logging or permanent storage, but actual room rendering still needs a compatible LiveKit Flutter SDK.
- Payment intent is still the documented dummy provider and must not be treated as proof of payment; add a production gateway and server-side webhook verification before launch.
- Instructor public identity is not included in the public course response, so the UI does not invent teacher names.

`price_minor` is rendered as `priceMinor / 100`. Confirm that BDT is stored in poisha before going live.

## Design system

The UI uses solid colors only—no gradients. The system follows **Academic Blue + Progress Green + Clean Neutral**: `#155EEF` owns actions, navigation, links, focus, and selected states; `#0F9F80` is reserved for progress and completion; `#F7F9FC`, white, navy, and slate build the neutral foundation. Red, amber, and cyan are limited to error, warning, and information states. Course cards use one consistent blue-tint thumbnail instead of unrelated per-card colors. HugeIcons provides a consistent stroke-rounded icon language, including the accessible floating five-destination navigation bar.

## Build and verify

```bash
flutter pub get
dart run build_runner build
flutter analyze
flutter test
flutter build apk --debug
```

Registration passwords must contain at least 12 characters, matching the OpenAPI schema.
