import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/network/role_api_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/guardian/presentation/controllers/guardian_controller.dart';
import 'package:edtech_application/features/profile/presentation/pages/workspace_profile_page.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/role_navigation_shell.dart';
import 'package:edtech_application/shared/widgets/section_header.dart';
import 'package:edtech_application/shared/widgets/workspace_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GuardianShell extends StatefulWidget {
  const GuardianShell({super.key});

  @override
  State<GuardianShell> createState() => _GuardianShellState();
}

class _GuardianShellState extends State<GuardianShell> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<GuardianController>().load();
    });
  }

  @override
  Widget build(BuildContext context) => RoleNavigationShell(
    destinations: [
      RoleDestination(
        label: context.l10n.tr('guardian.nav.home'),
        icon: AppIcons.home,
        page: const _GuardianOverviewPage(),
      ),
      RoleDestination(
        label: context.l10n.tr('guardian.nav.learning'),
        icon: AppIcons.progress,
        page: const _GuardianLearningPage(),
      ),
      RoleDestination(
        label: context.l10n.tr('guardian.nav.calendar'),
        icon: AppIcons.calendar,
        page: const _GuardianCalendarPage(),
      ),
      RoleDestination(
        label: context.l10n.tr('guardian.nav.updates'),
        icon: AppIcons.notification,
        page: const _GuardianUpdatesPage(),
      ),
      RoleDestination(
        label: context.l10n.tr('nav.profile'),
        icon: AppIcons.profile,
        page: const WorkspaceProfilePage(),
      ),
    ],
  );
}

class _GuardianOverviewPage extends StatelessWidget {
  const _GuardianOverviewPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GuardianController>();
    if (state.loading && state.dashboard == null) {
      return AppLoadingView(label: context.l10n.tr('guardian.loading'));
    }
    final summary = state.summary;
    return AppScrollablePage(
      onRefresh: state.load,
      children: [
        _GuardianHeader(
          title: context.l10n.tr('guardian.homeTitle'),
          subtitle: context.l10n.tr('guardian.homeSubtitle'),
        ),
        const SizedBox(height: AppSpacing.xl),
        _LearnerSwitcher(state: state),
        if (state.error != null) ...[
          const SizedBox(height: AppSpacing.md),
          AppStatusBanner(
            title: context.l10n.tr('guardian.loadFailed'),
            message: state.error!,
            icon: AppIcons.warning,
            tone: AppStateTone.error,
            actionLabel: context.l10n.tr('common.retry'),
            onAction: state.load,
          ),
        ],
        if (state.students.isEmpty && !state.loading) ...[
          const SizedBox(height: AppSpacing.xl),
          AppStateView(
            icon: AppIcons.guardian,
            title: context.l10n.tr('guardian.noLearner'),
            message: context.l10n.tr('guardian.noLearnerBody'),
            tone: AppStateTone.neutral,
          ),
        ] else if (state.childLoading && summary == null) ...[
          AppLoadingView(label: context.l10n.tr('guardian.loadingLearner')),
        ] else if (summary != null) ...[
          const SizedBox(height: AppSpacing.lg),
          _ProgressHero(summary: summary),
          const SizedBox(height: AppSpacing.xl),
          SectionHeader(
            title: context.l10n.tr('guardian.attentionTitle'),
            subtitle: context.l10n.tr('guardian.attentionSubtitle'),
          ),
          const SizedBox(height: AppSpacing.sm),
          _AdaptiveMetrics(
            values: [
              _MetricData(
                icon: AppIcons.attendance,
                value: context.l10n.number(summary.absences),
                label: context.l10n.tr('guardian.absences'),
                tone: summary.absences > 0
                    ? AppStateTone.warning
                    : AppStateTone.success,
              ),
              _MetricData(
                icon: AppIcons.assignment,
                value: context.l10n.number(summary.dueAssignments),
                label: context.l10n.tr('guardian.dueAssignments'),
                tone: summary.dueAssignments > 0
                    ? AppStateTone.info
                    : AppStateTone.success,
              ),
              _MetricData(
                icon: AppIcons.quiz,
                value: context.l10n.number(summary.upcomingExams),
                label: context.l10n.tr('guardian.upcomingExams'),
              ),
              _MetricData(
                icon: AppIcons.book,
                value: context.l10n.number(summary.activeEnrollments),
                label: context.l10n.tr('guardian.activeCourses'),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          SectionHeader(
            title: context.l10n.tr('guardian.supportTitle'),
            subtitle: context.l10n.tr('guardian.supportSubtitle'),
          ),
          const SizedBox(height: AppSpacing.sm),
          _LearningSupport(state: state),
        ],
      ],
    );
  }
}

class _GuardianLearningPage extends StatelessWidget {
  const _GuardianLearningPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GuardianController>();
    final progress = state.progress?.items ?? const <GuardianProgressDto>[];
    final results = state.results?.items ?? const <GuardianResultDto>[];
    return AppScrollablePage(
      onRefresh: state.loadSelectedStudent,
      children: [
        _GuardianHeader(
          title: context.l10n.tr('guardian.learningTitle'),
          subtitle: context.l10n.tr('guardian.learningSubtitle'),
        ),
        const SizedBox(height: AppSpacing.xl),
        _LearnerSwitcher(state: state),
        _ChildRequestFeedback(state: state),
        const SizedBox(height: AppSpacing.xl),
        SectionHeader(title: context.l10n.tr('guardian.courseProgress')),
        const SizedBox(height: AppSpacing.sm),
        if (progress.isEmpty && !state.childLoading)
          AppStateView(
            compact: true,
            icon: AppIcons.progress,
            title: context.l10n.tr('guardian.noProgress'),
            message: context.l10n.tr('guardian.noProgressBody'),
          )
        else
          ...progress.map(_ProgressCard.new),
        const SizedBox(height: AppSpacing.xl),
        SectionHeader(title: context.l10n.tr('guardian.publishedResults')),
        const SizedBox(height: AppSpacing.sm),
        if (results.isEmpty && !state.childLoading)
          AppStateView(
            compact: true,
            icon: AppIcons.results,
            title: context.l10n.tr('guardian.noResults'),
            message: context.l10n.tr('guardian.noResultsBody'),
          )
        else
          ...results.map(_ResultCard.new),
      ],
    );
  }
}

class _GuardianCalendarPage extends StatelessWidget {
  const _GuardianCalendarPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GuardianController>();
    final items = [...?state.calendar?.items]
      ..sort((a, b) => a.startsAt.compareTo(b.startsAt));
    return AppScrollablePage(
      onRefresh: state.loadSelectedStudent,
      children: [
        _GuardianHeader(
          title: context.l10n.tr('guardian.calendarTitle'),
          subtitle: context.l10n.tr('guardian.calendarSubtitle'),
        ),
        const SizedBox(height: AppSpacing.xl),
        _LearnerSwitcher(state: state),
        _ChildRequestFeedback(state: state),
        const SizedBox(height: AppSpacing.lg),
        if (items.isEmpty && !state.childLoading)
          AppStateView(
            icon: AppIcons.calendar,
            title: context.l10n.tr('guardian.noCalendar'),
            message: context.l10n.tr('guardian.noCalendarBody'),
          )
        else
          ...items.map(_CalendarCard.new),
      ],
    );
  }
}

class _GuardianUpdatesPage extends StatelessWidget {
  const _GuardianUpdatesPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GuardianController>();
    final attendance =
        state.attendance?.items ?? const <GuardianAttendanceDto>[];
    return AppScrollablePage(
      onRefresh: state.loadSelectedStudent,
      children: [
        _GuardianHeader(
          title: context.l10n.tr('guardian.updatesTitle'),
          subtitle: context.l10n.tr('guardian.updatesSubtitle'),
        ),
        const SizedBox(height: AppSpacing.xl),
        _LearnerSwitcher(state: state),
        _ChildRequestFeedback(state: state),
        const SizedBox(height: AppSpacing.lg),
        Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            leading: const AppIconBadge(icon: AppIcons.notification),
            title: Text(context.l10n.tr('guardian.notices')),
            subtitle: Text(
              context.l10n.tr(
                'guardian.unreadNotices',
                args: {
                  'count': context.l10n.number(
                    state.dashboard?.unreadNotifications ?? 0,
                  ),
                },
              ),
            ),
            trailing: const AppIcon(AppIcons.arrowRight, size: 20),
            onTap: () => Navigator.pushNamed(context, AppRoutes.notifications),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        SectionHeader(title: context.l10n.tr('guardian.attendance')),
        const SizedBox(height: AppSpacing.sm),
        if (attendance.isEmpty && !state.childLoading)
          AppStateView(
            compact: true,
            icon: AppIcons.attendance,
            title: context.l10n.tr('guardian.noAttendance'),
            message: context.l10n.tr('guardian.noAttendanceBody'),
          )
        else
          ...attendance.map(_AttendanceCard.new),
      ],
    );
  }
}

class _GuardianHeader extends StatelessWidget {
  const _GuardianHeader({required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final state = context.watch<GuardianController>();
    return WorkspaceHeader(
      icon: AppIcons.guardian,
      eyebrow:
          auth.activeMembership?.organizationName ??
          context.l10n.tr('role.guardian'),
      title: title,
      subtitle: subtitle,
      unreadCount: state.dashboard?.unreadNotifications ?? 0,
      onContextTap: () => _showWorkspaceContext(context),
    );
  }
}

class _LearnerSwitcher extends StatelessWidget {
  const _LearnerSwitcher({required this.state});
  final GuardianController state;

  @override
  Widget build(BuildContext context) {
    final selected = state.selectedStudent;
    if (state.students.isEmpty) return const SizedBox.shrink();
    return Semantics(
      button: state.students.length > 1,
      label: selected == null
          ? context.l10n.tr('guardian.chooseLearner')
          : '${context.l10n.tr('guardian.selectedLearner')}: '
                '${selected.displayName}',
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          leading: const AppIconBadge(icon: AppIcons.student),
          title: Text(selected?.displayName ?? ''),
          subtitle: Text(
            selected == null
                ? context.l10n.tr('guardian.chooseLearner')
                : _relationshipLabel(context, selected.relationshipType),
          ),
          trailing: state.students.length > 1
              ? const AppIcon(AppIcons.arrowDown, size: 20)
              : const AppIcon(AppIcons.verified, size: 20),
          onTap: state.students.length > 1
              ? () => _showLearnerPicker(context, state)
              : null,
        ),
      ),
    );
  }
}

class _ChildRequestFeedback extends StatelessWidget {
  const _ChildRequestFeedback({required this.state});
  final GuardianController state;

  @override
  Widget build(BuildContext context) {
    if (state.childLoading) {
      return const Padding(
        padding: EdgeInsets.only(top: AppSpacing.md),
        child: LinearProgressIndicator(),
      );
    }
    if (state.error != null) {
      return Padding(
        padding: const EdgeInsets.only(top: AppSpacing.md),
        child: AppStatusBanner(
          title: context.l10n.tr('guardian.loadFailed'),
          message: state.error!,
          icon: AppIcons.warning,
          tone: AppStateTone.error,
          actionLabel: context.l10n.tr('common.retry'),
          onAction: state.loadSelectedStudent,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class _ProgressHero extends StatelessWidget {
  const _ProgressHero({required this.summary});
  final GuardianStudentSummaryDto summary;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final progress = (summary.averageProgress / 100).clamp(0.0, 1.0);
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors.primary, colors.primary.withValues(alpha: .82)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            summary.displayName,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: colors.onPrimary),
          ),
          const SizedBox(height: AppSpacing.xxs),
          Text(
            context.l10n.tr('guardian.overallProgress'),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colors.onPrimary.withValues(alpha: .82),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Expanded(
                child: Semantics(
                  label: context.l10n.tr('guardian.overallProgress'),
                  value: _percent(context, summary.averageProgress),
                  child: AnimatedProgressBar(
                    value: progress,
                    height: 9,
                    color: colors.onPrimary,
                    backgroundColor: colors.onPrimary.withValues(alpha: .22),
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Text(
                _percent(context, summary.averageProgress),
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: colors.onPrimary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AdaptiveMetrics extends StatelessWidget {
  const _AdaptiveMetrics({required this.values});
  final List<_MetricData> values;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final largeText = MediaQuery.textScalerOf(context).scale(1) > 1.35;
      final columns = largeText && constraints.maxWidth < 620
          ? 1
          : constraints.maxWidth >= 760
          ? 4
          : 2;
      final itemWidth =
          (constraints.maxWidth - AppSpacing.sm * (columns - 1)) / columns;
      return Wrap(
        spacing: AppSpacing.sm,
        runSpacing: AppSpacing.sm,
        children: values
            .map(
              (value) => SizedBox(
                width: itemWidth,
                child: _MetricTile(data: value),
              ),
            )
            .toList(),
      );
    },
  );
}

class _MetricData {
  const _MetricData({
    required this.icon,
    required this.value,
    required this.label,
    this.tone = AppStateTone.neutral,
  });
  final List<List<dynamic>> icon;
  final String value;
  final String label;
  final AppStateTone tone;
}

class _MetricTile extends StatelessWidget {
  const _MetricTile({required this.data});
  final _MetricData data;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(data.icon, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: AppSpacing.sm),
          Text(data.value, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: AppSpacing.xxs),
          Text(data.label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    ),
  );
}

class _LearningSupport extends StatelessWidget {
  const _LearningSupport({required this.state});
  final GuardianController state;

  @override
  Widget build(BuildContext context) {
    final items = [
      ...?state.learning?.weakTopics.map((item) => (item, AppIcons.progress)),
      ...?state.learning?.supportUpdates.map((item) => (item, AppIcons.help)),
    ];
    if (items.isEmpty) {
      return AppStateView(
        compact: true,
        icon: AppIcons.help,
        title: context.l10n.tr('guardian.noSupport'),
        message: context.l10n.tr('guardian.noSupportBody'),
      );
    }
    return Column(
      children: items.map((entry) {
        final item = entry.$1;
        final title =
            item['title'] ?? item['topic_title'] ?? item['topic'] ?? '';
        final detail = item['description'] ?? item['status'] ?? '';
        return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            leading: AppIconBadge(icon: entry.$2, size: 44, iconSize: 21),
            title: Text('$title'),
            subtitle: '$detail'.isEmpty ? null : Text(_humanize('$detail')),
          ),
        );
      }).toList(),
    );
  }
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard(this.item);
  final GuardianProgressDto item;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const AppIconBadge(icon: AppIcons.book, size: 42, iconSize: 20),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  item.courseTitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              _StatusChip(label: _statusLabel(context, item.status)),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Semantics(
            label: item.courseTitle,
            value: _percent(context, item.completionPercentage),
            child: AnimatedProgressBar(
              value: (item.completionPercentage / 100).clamp(0, 1),
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            context.l10n.tr(
              'guardian.progressComplete',
              args: {'percent': _percent(context, item.completionPercentage)},
            ),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    ),
  );
}

class _ResultCard extends StatelessWidget {
  const _ResultCard(this.item);
  final GuardianResultDto item;

  @override
  Widget build(BuildContext context) {
    final label = item.passed
        ? context.l10n.tr('guardian.passed')
        : context.l10n.tr('guardian.needsSupport');
    return Semantics(
      label:
          '${item.courseTitle}. $label. '
          '${_percent(context, item.finalPercentage)}',
      child: Card(
        child: ListTile(
          leading: AppIconBadge(
            icon: item.passed ? AppIcons.verified : AppIcons.info,
            backgroundColor: item.passed
                ? Theme.of(context).colorScheme.secondaryContainer
                : Theme.of(context).colorScheme.surfaceContainerHigh,
            foregroundColor: item.passed
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          title: Text(item.courseTitle),
          subtitle: Text(
            context.l10n.tr(
              'guardian.passMark',
              args: {'percent': _percent(context, item.passingPercentage)},
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _percent(context, item.finalPercentage),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(label, style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
      ),
    );
  }
}

class _CalendarCard extends StatelessWidget {
  const _CalendarCard(this.item);
  final StudentCalendarItemDto item;

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      leading: AppIconBadge(icon: _calendarIcon(item.type)),
      title: Text(item.title),
      subtitle: Text(_formatDateTime(context, item.startsAt)),
      trailing: _StatusChip(label: _statusLabel(context, item.status)),
    ),
  );
}

class _AttendanceCard extends StatelessWidget {
  const _AttendanceCard(this.item);
  final GuardianAttendanceDto item;

  @override
  Widget build(BuildContext context) {
    final status = _statusLabel(context, item.status);
    return Semantics(
      label:
          '${item.classTitle}. $status. '
          '${_formatDateTime(context, item.classSessionStartsAt)}',
      child: Card(
        child: ListTile(
          leading: AppIconBadge(
            icon: _attendanceIcon(item.status),
            backgroundColor: item.status == 'present'
                ? Theme.of(context).colorScheme.secondaryContainer
                : Theme.of(context).colorScheme.surfaceContainerHigh,
            foregroundColor: item.status == 'present'
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          title: Text(item.classTitle),
          subtitle: Text(_formatDateTime(context, item.classSessionStartsAt)),
          trailing: _StatusChip(label: status),
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) =>
      Chip(visualDensity: VisualDensity.compact, label: Text(label));
}

Future<void> _showLearnerPicker(
  BuildContext context,
  GuardianController state,
) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  isScrollControlled: true,
  builder: (sheetContext) => SafeArea(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        0,
        AppSpacing.lg,
        AppSpacing.lg,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.tr('guardian.chooseLearner'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppSpacing.sm),
          ...state.students.map(
            (student) => ListTile(
              leading: const AppIconBadge(
                icon: AppIcons.student,
                size: 42,
                iconSize: 20,
              ),
              title: Text(student.displayName),
              subtitle: Text(
                _relationshipLabel(context, student.relationshipType),
              ),
              trailing:
                  state.selectedStudent?.studentUserId == student.studentUserId
                  ? const AppIcon(AppIcons.check)
                  : null,
              onTap: () {
                Navigator.pop(sheetContext);
                state.selectStudent(student);
              },
            ),
          ),
        ],
      ),
    ),
  ),
);

Future<void> _showWorkspaceContext(BuildContext context) async {
  final auth = context.read<AuthController>();
  await showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (sheetContext) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.lg,
          0,
          AppSpacing.lg,
          AppSpacing.lg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              auth.activeMembership?.organizationName ?? '',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSpacing.xxs),
            Text(context.l10n.tr('role.guardian')),
            const SizedBox(height: AppSpacing.lg),
            if (auth.activeMembership != null &&
                auth.rolesFor(auth.activeMembership!).length > 1)
              ListTile(
                leading: const AppIcon(AppIcons.switchUser),
                title: Text(context.l10n.tr('profile.switchRole')),
                onTap: () {
                  Navigator.pop(sheetContext);
                  auth.clearRoleSelection();
                },
              ),
            if (auth.activeMemberships.length > 1)
              ListTile(
                leading: const AppIcon(AppIcons.organization),
                title: Text(context.l10n.tr('profile.switchOrganization')),
                onTap: () {
                  Navigator.pop(sheetContext);
                  auth.clearOrganizationSelection();
                },
              ),
          ],
        ),
      ),
    ),
  );
}

String _percent(BuildContext context, num value) =>
    context.l10n.digits('${value.toStringAsFixed(1)}%');

String _formatDateTime(BuildContext context, DateTime value) {
  final local = value.toLocal();
  final material = MaterialLocalizations.of(context);
  return '${material.formatMediumDate(local)} • '
      '${material.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
}

String _statusLabel(BuildContext context, String status) => switch (status) {
  'present' => context.l10n.tr('guardian.status.present'),
  'absent' => context.l10n.tr('guardian.status.absent'),
  'late' => context.l10n.tr('guardian.status.late'),
  'excused' => context.l10n.tr('guardian.status.excused'),
  'active' => context.l10n.tr('guardian.status.active'),
  'completed' => context.l10n.tr('guardian.status.completed'),
  'scheduled' => context.l10n.tr('guardian.status.scheduled'),
  'published' => context.l10n.tr('guardian.status.published'),
  _ => _humanize(status),
};

String _relationshipLabel(BuildContext context, String relationship) =>
    switch (relationship) {
      'father' => context.l10n.tr('guardian.relationship.father'),
      'mother' => context.l10n.tr('guardian.relationship.mother'),
      'parent' => context.l10n.tr('guardian.relationship.parent'),
      'legal_guardian' => context.l10n.tr(
        'guardian.relationship.legalGuardian',
      ),
      _ => _humanize(relationship),
    };

List<List<dynamic>> _calendarIcon(String type) => switch (type) {
  'exam' || 'quiz' => AppIcons.quiz,
  'assignment' => AppIcons.assignment,
  'live_class' || 'class' => AppIcons.live,
  _ => AppIcons.calendar,
};

List<List<dynamic>> _attendanceIcon(String status) => switch (status) {
  'present' => AppIcons.check,
  'late' => AppIcons.clock,
  'excused' => AppIcons.info,
  _ => AppIcons.error,
};

String _humanize(String value) {
  if (value.isEmpty) return value;
  final text = value.replaceAll('_', ' ').trim();
  return '${text[0].toUpperCase()}${text.substring(1)}';
}
