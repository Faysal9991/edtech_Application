# Development and operations

## 1. Prerequisites

- Flutter SDK with a Dart SDK satisfying `>=3.11.0 <4.0.0`.
- Android Studio/Android SDK for Android builds.
- Xcode and CocoaPods for iOS/macOS builds.
- Chrome for Flutter web development.
- Platform toolchains for Linux/macOS desktop builds as applicable.

The repository does not pin Flutter with FVM or another version manager. Verify
the installed toolchain before starting:

```bash
flutter --version
flutter doctor -v
```

## 2. First-time setup

From the repository root:

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
```

Code generation is required after modifying Freezed, JSON-serializable, or
Retrofit declarations. Generated `*.freezed.dart`, `*.g.dart`, and
`api_service.g.dart` files are checked in and should be committed with their
source changes.

## 3. Run configurations

### Hosted API

```bash
flutter run
```

### Android emulator to a local backend

```bash
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8080
```

### iOS simulator or desktop to a local backend

```bash
flutter run --dart-define=API_BASE_URL=http://localhost:8080
```

### Physical device to a backend on the development LAN

```bash
flutter run --dart-define=API_BASE_URL=http://192.168.x.x:8080
```

Replace the example LAN address with the development machine’s reachable IP.
The value must be an origin only. Do not add `/api/v1`.

### Web

```bash
flutter run -d chrome
```

The live API must allow the web origin through CORS. Secure token storage and
external URL behavior should be tested specifically on web before release.

## 4. Live mode versus mock mode

Production `main()` always builds `AppDependencies.live()`.

Mock behavior is selected only when code/tests construct:

```dart
MyApp(storage: LocalStorage(preferences))
```

With no repositories passed:

- Authentication uses `MockAuthRepository`.
- Any valid-looking email and non-empty password can sign in.
- Registration returns a pending preview user and preview verification token.
- Four local courses populate catalog/learning previews.
- No session is restored after app restart.

Do not ship a separate entry point that accidentally omits live dependencies.

## 5. Common development commands

```bash
# Format source and tests
dart format lib test

# Static analysis
flutter analyze

# All tests
flutter test

# One test file
flutter test test/network_contract_test.dart

# Rebuild generated code
dart run build_runner build --delete-conflicting-outputs

# Watch generated code during DTO work
dart run build_runner watch --delete-conflicting-outputs
```

Avoid hand-editing generated files.

## 6. Existing automated checks

| File | Coverage |
| --- | --- |
| `test/widget_test.dart` | Mock sign-in, shell navigation labels, localization parity, Bengali digits |
| `test/network_contract_test.dart` | Serialization, DTO parsing, RFC 7807 errors, assessment privacy, progress clamping |
| `test/theme_test.dart` | Semantic palette and light/dark theme roles |

The project currently has 15 tests. Add repository tests with a fake Dio adapter,
widget tests for error/empty states, golden tests, and integration tests before a
high-confidence production release.

## 7. Build commands

### Android

```bash
flutter build apk --debug
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

Signing, bundle identifiers, capabilities, and App Store metadata must be
configured in Xcode for the target organization.

### Web

```bash
flutter build web --release
```

The checked-in `web/manifest.json` still carries Flutter starter naming/colors
and should be updated before public PWA deployment.

### Desktop

```bash
flutter build macos --release
flutter build linux --release
```

Only run builds supported by the host platform and installed toolchain.

## 8. Configuration and secrets

### Compile-time configuration

Only `API_BASE_URL` is currently exposed as a Dart define. There is no checked-in
`.env` loader, environment flavor system, or remote configuration layer.

For reproducible environments, release automation should explicitly supply the
API origin rather than relying on a developer shell.

### Secret handling

- Never place access/refresh tokens, upload URLs, LiveKit tokens, passwords, or
  gateway secrets in Dart defines or source files.
- Refresh tokens are handled by `flutter_secure_storage`.
- Access tokens stay in memory.
- The debug interceptor intentionally logs only method, path, and status.
- Presigned uploads use a Dio instance without the LMS authorization interceptor.
- Payment gateway secrets and webhook verification belong on the backend.

## 9. Platform networking notes

### Android

The main manifest declares internet and network-state permissions. Debug/profile
manifests permit local cleartext development. The hosted origin uses HTTPS.

If a local backend cannot be reached:

1. Use `10.0.2.2`, not `localhost`, from the standard Android emulator.
2. Confirm the backend listens on a non-loopback interface when using a device.
3. Confirm firewall and LAN routing.
4. Confirm the debug manifest, not a release build, is being used for HTTP.

### iOS

The app allows local networking. For physical devices, use a LAN IP reachable by
the device. Validate App Transport Security settings again before broadening any
exception.

### Web

The backend must allow the Flutter dev server or deployed web origin with the
needed methods/headers. CORS failures are browser policy errors, not Dio token
refresh failures.

## 10. Troubleshooting

### Generated-code errors

Symptoms include missing `_$Type`, undefined serializers, or Retrofit method
mismatches.

```bash
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

Then rerun analysis and tests.

### Repeated `401` responses

Check:

- The API origin is correct and does not include `/api/v1` twice.
- Login/refresh responses match `TokenPairDto`.
- The refresh token is rotating and the newest token is returned.
- Device secure storage is available.
- The request is not one of the intentionally non-refreshable auth paths.
- Server clocks and token expiry are correct.

Each request retries only once. Concurrent failures should produce only one
refresh call.

### “Server response বোঝা যায়নি”

The server returned JSON that did not satisfy a DTO or expected map shape. Capture
the backend request ID, compare the payload with the OpenAPI schema, then update
the backend or DTO. Do not solve contract drift by silently inventing values in
the UI.

### Course exists but lesson media does not play

Check that the course detail response includes a published lesson with
`media_asset_id`, that the playback endpoint returns an absolute signed URL, and
that its content type is supported by `video_player`. Public lesson payloads may
omit private assets by design.

### Assignment upload fails

Verify intent creation, file size/MIME constraints, presigned URL expiry,
object-storage CORS for web, exact upload headers, and the media completion call.
The current client loads the whole file into memory.

### Live room shows “credentials ready” but no video

That is current expected behavior. The token endpoint is connected, but the
LiveKit Flutter SDK and actual room widgets are not implemented.

### Payment intent exists but enrollment is inactive

That is current expected behavior. The provider is a development placeholder;
only a verified backend webhook should mark a real payment and activate
enrollment.

## 11. Release checklist

### Product and backend

- Confirm the target API origin, version, and schema compatibility.
- Verify all production backend migrations and seed/catalog data.
- Confirm BDT minor-unit handling.
- Replace dummy payments with a real gateway and verified webhooks.
- Complete LiveKit room rendering if live classes are in scope.
- Ensure enrolled course detail exposes playable private media.
- Define assignment constraints and ensure the detail screen renders them.

### Security and privacy

- Test secure storage on real Android and iOS devices.
- Verify token rotation, revocation, logout, and retry behavior.
- Confirm production logs and crash reports redact secrets and personal data.
- Review local-network/cleartext exceptions for release variants.
- Review third-party privacy requirements for video, files, and payment SDKs.
- Perform mobile security and dependency review.

### Quality

- Run code generation with a clean diff.
- Run `dart format`, `flutter analyze`, and `flutter test`.
- Build release artifacts for every supported target.
- Exercise the QA checklist in `PRODUCT_AND_USER_JOURNEYS.md`.
- Test Bengali/English, light/dark, text scaling, screen readers, and reduced
  motion on representative devices.
- Test loading, empty, offline, timeout, `401`, `403`, `404`, `409`, and `422`
  responses.
- Add and pass integration tests against a staging backend.

### Store and deployment metadata

- Replace starter web manifest name, description, colors, and icons.
- Confirm Android application ID, signing, launcher assets, and store metadata.
- Confirm iOS bundle ID, signing, privacy strings, capabilities, and store assets.
- Define versioning and changelog policy beyond `1.0.0+1`.
- Publish user-facing privacy policy, terms, support, and account-deletion path.

### Operations

- Add CI for generation-diff checks, analysis, tests, and release builds.
- Add privacy-safe crash reporting and performance monitoring.
- Establish backend health, error-rate, auth-refresh, upload, payment, and live
  session alerts.
- Document rollback and incident-response ownership.

## 12. Documentation maintenance

Update documentation in the same pull request when changing:

- Routes or screen availability.
- Active versus contract-only endpoint use.
- DTO fields, error formats, pagination, or authentication.
- Storage keys or secret lifetime.
- Platform support or build configuration.
- A production boundary listed in `CURRENT_BOUNDARIES.md`.
