# Mobile Design System

## Foundation

The upgrade retains the application’s existing Material 3 theme, typography, localization and brand accent. Student, Teacher and Guardian share the same component language; roles are identified through labels and content rather than unrelated color schemes.

## Layout rules

- Responsive page padding from the shared `AppLayout` spacing scale
- Cards group one task or one coherent metric set
- Maximum five primary destinations
- Navigation rail at 880 logical pixels and wider
- Scrollable layouts for large text and compact devices
- Form content constrained to 520 logical pixels on wide screens
- Shared localized loading, empty, partial-error and retry states

## Shared patterns

- `RoleNavigationShell`: adaptive bottom navigation/navigation rail
- `AppPage` / `AppScrollablePage`: centered, width-constrained responsive layouts
- `AppStateView` / `AppStatusBanner`: consistent feedback without exposing raw server internals
- `WorkspaceHeader`: role, organization, unread state and context switching
- Session gate state: centered icon, explanation and one recovery action
- Organization and role selector: large, accessible list tiles with descriptive subtitles
- Metric card: prominent value followed by plain-language label
- Child selector: persistent dropdown on every Guardian child-detail destination
- Attendance panel: explicit open state, roster status controls and server-confirmed finalize action
- Workspace profile: selected role/organization plus switching and logout actions

## Forms and sensitive data

- Password and manually entered Guardian invitation link codes are obscured.
- Deep-link invitation tokens are kept in memory and are never rendered, logged or sent to analytics/crash reporting.
- Guardian secrets live only in the page controllers and are disposed with the page.
- Error text is rendered beside the form without exposing request payloads.
- Destructive/finalizing actions use explicit labels; attendance is persisted before its UI reports success.

## Accessibility and localization

- Material controls preserve semantic roles and minimum interactive sizes.
- Text layouts scroll rather than clip at larger scale factors.
- Existing Bangla and English localization infrastructure remains active.
- Inter and Noto Sans Bengali are bundled with the app, so typography does not depend on a runtime font download.
- New session, Teacher, Guardian and invitation journeys use the shared Bangla/English localization catalog; backend course content is displayed as authored.
- Status is conveyed with text in addition to icons/color.
- Semantic status surfaces use dedicated contrast-safe foreground/background tokens in light and dark themes.
- Route and entrance motion honors the platform's reduced-motion preference.
- Hugeicons is the primary app/content/navigation icon family; native platform controls retain native Material affordances.

## Known design follow-ups

- Guardian OTP uses one accessible, paste-friendly six-digit field with one-time-code autofill.
- Advanced Teacher authoring/moderation workflows need full-screen responsive forms before release.
- Golden coverage for Bangla, large text and tablet rail layouts remains pending.
