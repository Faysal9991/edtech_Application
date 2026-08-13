import 'package:edtech_application/core/network/role_api_dto.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/features/profile/presentation/pages/workspace_profile_page.dart';
import 'package:edtech_application/features/teacher/presentation/controllers/teacher_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/role_navigation_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TeacherShell extends StatefulWidget {
  const TeacherShell({super.key});

  @override
  State<TeacherShell> createState() => _TeacherShellState();
}

class _TeacherShellState extends State<TeacherShell> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<TeacherController>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return RoleNavigationShell(
      destinations: [
        RoleDestination(
          label: l.tr('teacher.nav.overview'),
          icon: AppIcons.dashboard,
          page: _TeacherOverviewPage(),
        ),
        RoleDestination(
          label: l.tr('teacher.nav.schedule'),
          icon: AppIcons.calendar,
          page: _TeacherSchedulePage(),
        ),
        RoleDestination(
          label: l.tr('teacher.nav.students'),
          icon: AppIcons.students,
          page: _TeacherStudentsPage(),
        ),
        RoleDestination(
          label: l.tr('teacher.nav.work'),
          icon: AppIcons.assignment,
          page: _TeacherWorkPage(),
        ),
        RoleDestination(
          label: l.tr('nav.profile'),
          icon: AppIcons.profile,
          page: WorkspaceProfilePage(),
        ),
      ],
    );
  }
}

class _TeacherOverviewPage extends StatelessWidget {
  const _TeacherOverviewPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final dashboard = state.dashboard;
    final organization = context
        .watch<AuthController?>()
        ?.activeMembership
        ?.organizationName;
    final teacherName = _mapTitle(dashboard?.profile ?? const {}, fallback: '');

    return AppScrollablePage(
      onRefresh: state.load,
      children: [
        _WorkspaceHeader(
          icon: AppIcons.teacher,
          title: teacherName.isEmpty
              ? _t(context, 'teacher.overview.workspace')
              : _t(
                  context,
                  'teacher.overview.welcome',
                  args: {'name': teacherName},
                ),
          subtitle: organization == null || organization.isEmpty
              ? _t(context, 'teacher.overview.subtitle')
              : _t(
                  context,
                  'teacher.overview.organizationRole',
                  args: {'organization': organization},
                ),
        ),
        const SizedBox(height: AppSpacing.lg),
        if (state.error != null && dashboard != null) ...[
          AppStatusBanner(
            title: _t(context, 'teacher.error.stale'),
            message: _stateError(
              context,
              state.error,
              fallback: 'teacher.error.load',
            ),
            icon: AppIcons.warning,
            tone: AppStateTone.warning,
            actionLabel: _t(context, 'common.retry'),
            onAction: state.load,
          ),
          const SizedBox(height: AppSpacing.lg),
        ],
        if (state.loading && dashboard == null)
          AppLoadingView(label: _t(context, 'teacher.loading.workspace'))
        else if (dashboard == null)
          AppStateView(
            icon: AppIcons.cloudOff,
            title: _t(context, 'teacher.error.workspaceUnavailable'),
            message: _stateError(
              context,
              state.error,
              fallback: 'teacher.error.load',
            ),
            actionLabel: _t(context, 'common.retry'),
            onAction: state.load,
            tone: AppStateTone.error,
          )
        else ...[
          _SectionHeader(
            title: _t(context, 'teacher.overview.atAGlance'),
            subtitle: _t(context, 'teacher.overview.atAGlanceSubtitle'),
          ),
          const SizedBox(height: AppSpacing.sm),
          _MetricsGrid(entries: dashboard.counts.entries.toList()),
          const SizedBox(height: AppSpacing.xl),
          _SectionHeader(
            title: _t(context, 'teacher.overview.today'),
            subtitle: dashboard.todaysLiveClasses.isEmpty
                ? null
                : _t(
                    context,
                    'teacher.overview.liveClassesScheduled',
                    args: {
                      'count': _number(
                        context,
                        dashboard.todaysLiveClasses.length,
                      ),
                    },
                  ),
          ),
          const SizedBox(height: AppSpacing.sm),
          if (dashboard.todaysLiveClasses.isEmpty)
            _CompactEmptyState(
              icon: AppIcons.calendar,
              title: _t(context, 'teacher.overview.noLiveClasses'),
              message: _t(context, 'teacher.overview.noLiveClassesBody'),
            )
          else
            for (final item in dashboard.todaysLiveClasses) ...[
              _DashboardItemCard(item: item, icon: AppIcons.live),
              const SizedBox(height: AppSpacing.sm),
            ],
          const SizedBox(height: AppSpacing.sm),
          _SectionHeader(
            title: _t(context, 'teacher.overview.upcomingAssessments'),
            subtitle: _t(
              context,
              'teacher.overview.upcomingAssessmentsSubtitle',
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          if (dashboard.upcomingAssessments.isEmpty)
            _CompactEmptyState(
              icon: AppIcons.checklist,
              title: _t(context, 'teacher.overview.noAssessments'),
              message: _t(context, 'teacher.overview.noAssessmentsBody'),
            )
          else
            for (final item in dashboard.upcomingAssessments) ...[
              _DashboardItemCard(item: item, icon: AppIcons.assignment),
              const SizedBox(height: AppSpacing.sm),
            ],
          if (dashboard.recentAnnouncements.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.sm),
            _SectionHeader(
              title: _t(context, 'teacher.overview.recentAnnouncements'),
              subtitle: _t(
                context,
                'teacher.overview.recentAnnouncementsSubtitle',
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            for (final item in dashboard.recentAnnouncements.take(3)) ...[
              _DashboardItemCard(item: item, icon: AppIcons.notification),
              const SizedBox(height: AppSpacing.sm),
            ],
          ],
        ],
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _TeacherSchedulePage extends StatelessWidget {
  const _TeacherSchedulePage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final activeSession = _activeClassSession(state);

    return AppScrollablePage(
      onRefresh: state.load,
      children: [
        _WorkspaceHeader(
          icon: AppIcons.schedule,
          title: _t(context, 'teacher.schedule.title'),
          subtitle: _t(context, 'teacher.schedule.subtitle'),
        ),
        const SizedBox(height: AppSpacing.lg),
        if (state.error != null) ...[
          AppStatusBanner(
            title: _t(context, 'teacher.error.actionAttention'),
            message: _stateError(
              context,
              state.error,
              fallback: 'teacher.error.load',
            ),
            icon: AppIcons.warning,
            tone: AppStateTone.warning,
          ),
          const SizedBox(height: AppSpacing.md),
        ],
        if (state.hasActiveAttendance) ...[
          AppStatusBanner(
            title: _t(context, 'teacher.attendance.inProgress'),
            message: activeSession == null
                ? _t(context, 'teacher.attendance.inProgressBody')
                : _t(
                    context,
                    'teacher.attendance.activeSession',
                    args: {
                      'class': activeSession.title,
                      'batch': activeSession.batchName ?? activeSession.batchId,
                    },
                  ),
            icon: AppIcons.attendance,
            tone: AppStateTone.info,
            actionLabel: _t(context, 'teacher.attendance.continue'),
            onAction: () => _openAttendance(context, state),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
        _SectionHeader(
          title: _t(context, 'teacher.schedule.assignedClasses'),
          subtitle: _t(context, 'teacher.schedule.assignedClassesSubtitle'),
        ),
        const SizedBox(height: AppSpacing.sm),
        if (state.loading && state.classSessions.isEmpty)
          AppLoadingView(
            label: _t(context, 'teacher.loading.schedule'),
            compact: true,
          )
        else if (state.classSessions.isEmpty)
          _CompactEmptyState(
            icon: AppIcons.calendar,
            title: _t(context, 'teacher.schedule.noClasses'),
            message: _t(context, 'teacher.schedule.noClassesBody'),
          )
        else
          for (final session in state.classSessions) ...[
            _ClassSessionCard(session: session),
            const SizedBox(height: AppSpacing.sm),
          ],
        const SizedBox(height: AppSpacing.lg),
        _SectionHeader(
          title: _t(context, 'teacher.availability.title'),
          subtitle: _t(context, 'teacher.availability.subtitle'),
          action: FilledButton.tonalIcon(
            onPressed: state.availabilitySaving
                ? null
                : () => _showAvailabilityEditor(context, state),
            icon: const AppIcon(AppIcons.add, size: 20),
            label: Text(_t(context, 'teacher.availability.addTime')),
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        if (state.availabilitySaving)
          const Padding(
            padding: EdgeInsets.only(bottom: AppSpacing.sm),
            child: LinearProgressIndicator(),
          ),
        if (state.availability.isEmpty && !state.loading)
          _CompactEmptyState(
            icon: AppIcons.clock,
            title: _t(context, 'teacher.availability.empty'),
            message: _t(context, 'teacher.availability.emptyBody'),
          )
        else
          for (final item in state.availability) ...[
            _AvailabilityCard(item: item),
            const SizedBox(height: AppSpacing.sm),
          ],
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _ClassSessionCard extends StatelessWidget {
  const _ClassSessionCard({required this.session});

  final TeacherClassSessionDto session;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final activeForThisClass =
        state.attendanceSession?.classSessionId == session.id;
    final anotherAttendanceIsActive =
        state.hasActiveAttendance && !activeForThisClass;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppIconBadge(
                  icon: AppIcons.school,
                  size: 46,
                  iconSize: 22,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        session.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: AppSpacing.xxs),
                      Text(
                        session.courseTitle ?? session.courseId,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                _StatusPill(
                  label: _localizedStatus(context, session.status),
                  status: session.status,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            _IconText(
              icon: AppIcons.students,
              text: session.batchName ?? session.batchId,
            ),
            const SizedBox(height: AppSpacing.xs),
            _IconText(
              icon: AppIcons.clock,
              text: _dateRange(context, session.startsAt, session.endsAt),
            ),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: double.infinity,
              child: activeForThisClass
                  ? FilledButton.tonalIcon(
                      onPressed: () => _openAttendance(context, state),
                      icon: const AppIcon(AppIcons.attendance, size: 20),
                      label: Text(_t(context, 'teacher.attendance.continue')),
                    )
                  : FilledButton.tonalIcon(
                      onPressed:
                          state.attendanceLoading || anotherAttendanceIsActive
                          ? null
                          : () => _confirmStartAttendance(
                              context,
                              state,
                              session,
                            ),
                      icon: const AppIcon(AppIcons.attendance, size: 20),
                      label: Text(
                        anotherAttendanceIsActive
                            ? _t(context, 'teacher.attendance.finishFirst')
                            : _t(context, 'teacher.attendance.take'),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AvailabilityCard extends StatelessWidget {
  const _AvailabilityCard({required this.item});

  final TeacherAvailabilityDto item;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final deleting = state.deletingAvailabilityIds.contains(item.id);
    final available = item.availabilityType == 'available';
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.md,
          AppSpacing.sm,
          AppSpacing.xs,
          AppSpacing.sm,
        ),
        child: Row(
          children: [
            AppIconBadge(
              icon: available ? AppIcons.check : AppIcons.clock,
              size: 44,
              iconSize: 21,
              backgroundColor: available
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.surfaceContainerHigh,
              foregroundColor: available
                  ? Theme.of(context).colorScheme.onSecondaryContainer
                  : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    available
                        ? _t(context, 'teacher.availability.available')
                        : _t(context, 'teacher.availability.unavailable'),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    _dateRange(context, item.startsAt, item.endsAt),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            deleting
                ? const Padding(
                    padding: EdgeInsets.all(AppSpacing.sm),
                    child: SizedBox.square(
                      dimension: 22,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : IconButton(
                    tooltip: _t(context, 'teacher.availability.remove'),
                    onPressed: () =>
                        _confirmDeleteAvailability(context, state, item),
                    icon: AppIcon(
                      AppIcons.delete,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class _AttendanceSessionPage extends StatelessWidget {
  const _AttendanceSessionPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final session = state.attendanceSession;
    final roster = state.attendanceRoster?.items;

    return Scaffold(
      appBar: AppBar(title: Text(_t(context, 'teacher.attendance.take'))),
      body: AppScrollablePage(
        maxWidth: AppLayout.maxReadingWidth,
        children: [
          if (session == null)
            AppStateView(
              icon: AppIcons.check,
              title: _t(context, 'teacher.attendance.finalized'),
              message: _t(context, 'teacher.attendance.finalizedBody'),
              actionLabel: _t(context, 'teacher.attendance.backToSchedule'),
              onAction: () => Navigator.maybePop(context),
              tone: AppStateTone.success,
            )
          else ...[
            _WorkspaceHeader(
              icon: AppIcons.attendance,
              title: _t(context, 'teacher.attendance.inProgress'),
              subtitle: _t(context, 'teacher.attendance.reviewEveryLearner'),
            ),
            const SizedBox(height: AppSpacing.lg),
            if (state.error != null) ...[
              AppStatusBanner(
                title: _t(context, 'teacher.error.attendanceIncomplete'),
                message: _stateError(
                  context,
                  state.error,
                  fallback: 'teacher.error.attendanceOpen',
                ),
                icon: AppIcons.warning,
                tone: AppStateTone.warning,
              ),
              const SizedBox(height: AppSpacing.md),
            ],
            _AttendanceCodeCard(state: state),
            const SizedBox(height: AppSpacing.md),
            _AttendanceSummary(state: state),
            const SizedBox(height: AppSpacing.xl),
            _SectionHeader(
              title: _t(context, 'teacher.attendance.roster'),
              subtitle: roster == null
                  ? _t(context, 'teacher.loading.roster')
                  : _t(
                      context,
                      'teacher.attendance.learnerCount',
                      args: {'count': _number(context, roster.length)},
                    ),
              action: state.unmarkedAttendanceCount > 0
                  ? TextButton(
                      onPressed: state.attendanceLoading
                          ? null
                          : () => _confirmMarkRemainingPresent(context, state),
                      child: Text(
                        _t(
                          context,
                          'teacher.attendance.markRemainingPresent',
                          args: {
                            'count': _number(
                              context,
                              state.unmarkedAttendanceCount,
                            ),
                          },
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(height: AppSpacing.sm),
            if (state.attendanceLoading && roster == null)
              AppLoadingView(label: _t(context, 'teacher.loading.roster'))
            else if (roster == null)
              AppStateView(
                icon: AppIcons.cloudOff,
                title: _t(context, 'teacher.error.rosterUnavailable'),
                message: _stateError(
                  context,
                  state.error,
                  fallback: 'teacher.error.rosterLoad',
                ),
                actionLabel: _t(context, 'teacher.attendance.retryRoster'),
                onAction: state.attendanceLoading
                    ? null
                    : state.reloadAttendanceRoster,
                compact: true,
                tone: AppStateTone.error,
              )
            else if (roster.isEmpty)
              _CompactEmptyState(
                icon: AppIcons.students,
                title: _t(context, 'teacher.attendance.emptyRoster'),
                message: _t(context, 'teacher.attendance.emptyRosterBody'),
              )
            else
              for (final student in roster) ...[
                _AttendanceStudentCard(student: student),
                const SizedBox(height: AppSpacing.sm),
              ],
            if (state.unmarkedAttendanceCount > 0) ...[
              const SizedBox(height: AppSpacing.sm),
              AppStatusBanner(
                title: _t(
                  context,
                  'teacher.attendance.unreviewedCount',
                  args: {
                    'count': _number(context, state.unmarkedAttendanceCount),
                  },
                ),
                message: _t(context, 'teacher.attendance.unreviewedBody'),
                icon: AppIcons.warning,
                tone: AppStateTone.warning,
              ),
            ],
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: state.canFinalizeAttendance
                    ? () => _confirmFinalizeAttendance(context, state)
                    : null,
                icon: state.attendanceLoading
                    ? const SizedBox.square(
                        dimension: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const AppIcon(AppIcons.check, size: 20),
                label: Text(_t(context, 'teacher.attendance.reviewFinalize')),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
          ],
        ],
      ),
    );
  }
}

class _AttendanceCodeCard extends StatelessWidget {
  const _AttendanceCodeCard({required this.state});

  final TeacherController state;

  @override
  Widget build(BuildContext context) {
    final code = state.attendanceCode;
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _t(context, 'teacher.attendance.joinCode'),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            if (code == null)
              Text(
                _t(context, 'teacher.attendance.codeUnavailable'),
                style: Theme.of(context).textTheme.titleLarge,
              )
            else
              Row(
                children: [
                  Expanded(
                    child: Semantics(
                      label: _t(
                        context,
                        'teacher.attendance.joinCodeSemantics',
                        args: {'code': code},
                      ),
                      child: SelectableText(
                        code,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  IconButton.filledTonal(
                    tooltip: _t(context, 'teacher.attendance.copyCode'),
                    onPressed: () async {
                      await Clipboard.setData(ClipboardData(text: code));
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              _t(context, 'teacher.attendance.codeCopied'),
                            ),
                          ),
                        );
                      }
                    },
                    icon: const AppIcon(AppIcons.clipboard),
                  ),
                ],
              ),
            if (state.attendanceCodeExpiresAt case final expiresAt?) ...[
              const SizedBox(height: AppSpacing.xs),
              Text(
                _t(
                  context,
                  'teacher.attendance.codeExpires',
                  args: {'date': _formatDateTime(context, expiresAt)},
                ),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _AttendanceSummary extends StatelessWidget {
  const _AttendanceSummary({required this.state});

  final TeacherController state;

  @override
  Widget build(BuildContext context) {
    final counts = state.attendanceCounts;
    return Semantics(
      container: true,
      label: _t(
        context,
        'teacher.attendance.summarySemantics',
        args: {
          'unreviewed': _number(context, state.unmarkedAttendanceCount),
          'present': _number(context, counts['present'] ?? 0),
          'absent': _number(context, counts['absent'] ?? 0),
          'late': _number(context, counts['late'] ?? 0),
          'excused': _number(context, counts['excused'] ?? 0),
        },
      ),
      child: Wrap(
        spacing: AppSpacing.xs,
        runSpacing: AppSpacing.xs,
        children: [
          _CountChip(
            label: _t(context, 'teacher.attendance.unreviewed'),
            value: state.unmarkedAttendanceCount,
            tone: AppStateTone.warning,
          ),
          _CountChip(
            label: _t(context, 'teacher.status.present'),
            value: counts['present'] ?? 0,
            tone: AppStateTone.success,
          ),
          _CountChip(
            label: _t(context, 'teacher.status.absent'),
            value: counts['absent'] ?? 0,
          ),
          _CountChip(
            label: _t(context, 'teacher.status.late'),
            value: counts['late'] ?? 0,
          ),
          _CountChip(
            label: _t(context, 'teacher.status.excused'),
            value: counts['excused'] ?? 0,
          ),
        ],
      ),
    );
  }
}

class _CountChip extends StatelessWidget {
  const _CountChip({
    required this.label,
    required this.value,
    this.tone = AppStateTone.neutral,
  });

  final String label;
  final int value;
  final AppStateTone tone;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final background = switch (tone) {
      AppStateTone.success => colors.secondaryContainer,
      AppStateTone.warning => colors.tertiaryContainer,
      _ => colors.surfaceContainerHigh,
    };
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        '${_number(context, value)} $label',
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _AttendanceStudentCard extends StatelessWidget {
  const _AttendanceStudentCard({required this.student});

  final AttendanceRosterItemDto student;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    final status = state.attendanceMarks[student.studentUserId];
    final selector = DropdownButtonFormField<String>(
      key: ValueKey('${student.studentUserId}-${status ?? 'unmarked'}'),
      initialValue: status,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: _t(context, 'teacher.attendance.statusLabel'),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm,
        ),
      ),
      hint: Text(_t(context, 'teacher.attendance.chooseStatus')),
      items: [
        DropdownMenuItem(
          value: 'present',
          child: Text(_t(context, 'teacher.status.present')),
        ),
        DropdownMenuItem(
          value: 'absent',
          child: Text(_t(context, 'teacher.status.absent')),
        ),
        DropdownMenuItem(
          value: 'late',
          child: Text(_t(context, 'teacher.status.late')),
        ),
        DropdownMenuItem(
          value: 'excused',
          child: Text(_t(context, 'teacher.status.excused')),
        ),
      ],
      onChanged: state.attendanceLoading
          ? null
          : (value) {
              if (value != null) {
                state.markAttendance(student.studentUserId, value);
              }
            },
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final stacked =
                constraints.maxWidth < 520 ||
                MediaQuery.textScalerOf(context).scale(1) > 1.35;
            final identity = Row(
              children: [
                AppIconBadge(
                  icon: AppIcons.student,
                  size: 44,
                  iconSize: 21,
                  backgroundColor: status == null
                      ? Theme.of(context).colorScheme.surfaceContainerHigh
                      : Theme.of(context).colorScheme.primaryContainer,
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        student.displayName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: AppSpacing.xxs),
                      Text(
                        student.email,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            );
            if (stacked) {
              return Column(
                children: [
                  identity,
                  const SizedBox(height: AppSpacing.md),
                  selector,
                ],
              );
            }
            return Row(
              children: [
                Expanded(child: identity),
                const SizedBox(width: AppSpacing.md),
                SizedBox(width: 210, child: selector),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _TeacherStudentsPage extends StatelessWidget {
  const _TeacherStudentsPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    return AppScrollablePage(
      onRefresh: state.load,
      children: [
        _WorkspaceHeader(
          icon: AppIcons.students,
          title: _t(context, 'teacher.students.title'),
          subtitle: _t(context, 'teacher.students.subtitle'),
        ),
        const SizedBox(height: AppSpacing.lg),
        if (state.error != null) ...[
          AppStatusBanner(
            message: _stateError(
              context,
              state.error,
              fallback: 'teacher.error.students',
            ),
            icon: AppIcons.warning,
            tone: AppStateTone.warning,
          ),
          const SizedBox(height: AppSpacing.md),
        ],
        if (state.batches.isNotEmpty)
          DropdownButtonFormField<String>(
            key: ValueKey(state.selectedBatchId),
            initialValue: state.selectedBatchId,
            isExpanded: true,
            decoration: InputDecoration(
              labelText: _t(context, 'teacher.students.batch'),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12),
                child: AppIcon(AppIcons.school),
              ),
            ),
            items: state.batches
                .where((item) => item['id'] is String)
                .map(
                  (batch) => DropdownMenuItem(
                    value: batch['id']! as String,
                    child: Text(
                      _mapTitle(
                        batch,
                        fallback: _t(context, 'teacher.students.batch'),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
                .toList(),
            onChanged: (id) {
              if (id != null) state.selectBatch(id);
            },
          ),
        const SizedBox(height: AppSpacing.lg),
        if (state.studentsLoading)
          AppLoadingView(label: _t(context, 'teacher.loading.roster'))
        else if (state.batches.isEmpty && !state.loading)
          _CompactEmptyState(
            icon: AppIcons.school,
            title: _t(context, 'teacher.students.noBatches'),
            message: _t(context, 'teacher.students.noBatchesBody'),
          )
        else if (state.students.isEmpty)
          _CompactEmptyState(
            icon: AppIcons.students,
            title: _t(context, 'teacher.students.empty'),
            message: _t(context, 'teacher.students.emptyBody'),
          )
        else
          for (final student in state.students) ...[
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(AppSpacing.sm),
                leading: const AppIconBadge(
                  icon: AppIcons.student,
                  size: 44,
                  iconSize: 21,
                ),
                title: Text(
                  _mapTitle(student, fallback: _t(context, 'role.student')),
                ),
                subtitle: Text(
                  '${student['email'] ?? student['student_user_id'] ?? ''}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _TeacherWorkPage extends StatelessWidget {
  const _TeacherWorkPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TeacherController>();
    return AppScrollablePage(
      onRefresh: state.load,
      children: [
        _WorkspaceHeader(
          icon: AppIcons.work,
          title: _t(context, 'teacher.work.title'),
          subtitle: _t(context, 'teacher.work.subtitle'),
        ),
        const SizedBox(height: AppSpacing.lg),
        if (state.error != null) ...[
          AppStatusBanner(
            message: _stateError(
              context,
              state.error,
              fallback: 'teacher.error.load',
            ),
            icon: AppIcons.warning,
            tone: AppStateTone.warning,
            actionLabel: _t(context, 'common.retry'),
            onAction: state.load,
          ),
          const SizedBox(height: AppSpacing.md),
        ],
        if (state.loading && state.courses.isEmpty)
          AppLoadingView(label: _t(context, 'teacher.loading.work'))
        else ...[
          _CountSection(
            title: _t(context, 'teacher.work.courses'),
            icon: AppIcons.book,
            items: state.courses,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CountSection(
            title: _t(context, 'teacher.work.quizzes'),
            icon: AppIcons.quiz,
            items: state.quizzes,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CountSection(
            title: _t(context, 'teacher.work.exams'),
            icon: AppIcons.results,
            items: state.exams,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CountSection(
            title: _t(context, 'teacher.work.assignments'),
            icon: AppIcons.assignment,
            items: state.assignments,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CountSection(
            title: _t(context, 'teacher.work.submissions'),
            icon: AppIcons.checklist,
            items: state.submissions,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CountSection(
            title: _t(context, 'teacher.work.liveClasses'),
            icon: AppIcons.live,
            items: state.liveClasses,
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _CountSection extends StatelessWidget {
  const _CountSection({
    required this.title,
    required this.icon,
    required this.items,
  });

  final String title;
  final List<List<dynamic>> icon;
  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    final visibleItems = items.take(20).toList();
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ExpansionTile(
        leading: AppIcon(icon),
        title: Text(title),
        subtitle: Text(
          items.isEmpty
              ? _t(context, 'teacher.work.empty')
              : _t(
                  context,
                  'teacher.work.itemCount',
                  args: {'count': _number(context, items.length)},
                ),
        ),
        children: [
          if (items.isEmpty)
            Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Text(_t(context, 'teacher.work.noItems')),
            )
          else ...[
            for (final item in visibleItems) _WorkItemTile(item),
            if (items.length > visibleItems.length)
              Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Text(
                  _t(
                    context,
                    'teacher.work.showingItems',
                    args: {
                      'shown': _number(context, visibleItems.length),
                      'total': _number(context, items.length),
                    },
                  ),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
          ],
        ],
      ),
    );
  }
}

class _WorkItemTile extends StatelessWidget {
  const _WorkItemTile(this.item);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    final status = '${item['status'] ?? item['type'] ?? ''}';
    return ListTile(
      title: Text(_mapTitle(item, fallback: _t(context, 'teacher.untitled'))),
      subtitle: status.isEmpty ? null : Text(_localizedStatus(context, status)),
    );
  }
}

class _DashboardItemCard extends StatelessWidget {
  const _DashboardItemCard({required this.item, required this.icon});

  final Map<String, dynamic> item;
  final List<List<dynamic>> icon;

  @override
  Widget build(BuildContext context) {
    final status = '${item['status'] ?? item['type'] ?? ''}';
    final date = _rawDate(item);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIconBadge(icon: icon, size: 46, iconSize: 22),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _mapTitle(item, fallback: _t(context, 'teacher.untitled')),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  if (date != null) ...[
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      _formatDateTime(context, date),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ],
              ),
            ),
            if (status.isNotEmpty)
              _StatusPill(
                label: _localizedStatus(context, status),
                status: status,
              ),
          ],
        ),
      ),
    );
  }
}

class _MetricsGrid extends StatelessWidget {
  const _MetricsGrid({required this.entries});

  final List<MapEntry<String, dynamic>> entries;

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) {
      return _CompactEmptyState(
        icon: AppIcons.analytics,
        title: _t(context, 'teacher.overview.noSummary'),
        message: _t(context, 'teacher.overview.noSummaryBody'),
      );
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        final textScale = MediaQuery.textScalerOf(context).scale(1);
        final columns = constraints.maxWidth >= 900
            ? 4
            : constraints.maxWidth >= 620
            ? 3
            : constraints.maxWidth < 340 || textScale > 1.5
            ? 1
            : 2;
        final width =
            (constraints.maxWidth - (columns - 1) * AppSpacing.sm) / columns;
        return Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: entries
              .map(
                (entry) => SizedBox(
                  width: width,
                  child: _MetricCard(
                    label: _localizedMetric(context, entry.key),
                    value: _number(context, entry.value),
                    icon: _metricIcon(entry.key),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final List<List<dynamic>> icon;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIconBadge(icon: icon, size: 42, iconSize: 20),
          const SizedBox(height: AppSpacing.sm),
          Text(value, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: AppSpacing.xxs),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    ),
  );
}

class _WorkspaceHeader extends StatelessWidget {
  const _WorkspaceHeader({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppIconBadge(icon: icon, size: 52, iconSize: 25),
      const SizedBox(width: AppSpacing.md),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Semantics(
              header: true,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: AppSpacing.xxs),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, this.subtitle, this.action});

  final String title;
  final String? subtitle;
  final Widget? action;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final stacked =
          constraints.maxWidth < 430 ||
          MediaQuery.textScalerOf(context).scale(1) > 1.35;
      final heading = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            header: true,
            child: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: AppSpacing.xxs),
            Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
          ],
        ],
      );
      if (action == null) return heading;
      if (stacked) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            heading,
            const SizedBox(height: AppSpacing.sm),
            Align(alignment: Alignment.centerLeft, child: action),
          ],
        );
      }
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: heading),
          const SizedBox(width: AppSpacing.md),
          action!,
        ],
      );
    },
  );
}

class _CompactEmptyState extends StatelessWidget {
  const _CompactEmptyState({
    required this.icon,
    required this.title,
    required this.message,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) => Card(
    child: AppStateView(
      icon: icon,
      title: title,
      message: message,
      compact: true,
    ),
  );
}

class _IconText extends StatelessWidget {
  const _IconText({required this.icon, required this.text});

  final List<List<dynamic>> icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppIcon(
        icon,
        size: 19,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      const SizedBox(width: AppSpacing.xs),
      Expanded(child: Text(text, style: Theme.of(context).textTheme.bodySmall)),
    ],
  );
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.label, this.status});

  final String label;
  final String? status;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final normalized = (status ?? label).toLowerCase();
    final successful =
        normalized.contains('active') ||
        normalized.contains('scheduled') ||
        normalized.contains('published') ||
        normalized.contains('available');
    final warning =
        normalized.contains('pending') ||
        normalized.contains('progress') ||
        normalized.contains('draft');
    final pair = successful
        ? (colors.secondaryContainer, colors.onSecondaryContainer)
        : warning
        ? (colors.tertiaryContainer, colors.onTertiaryContainer)
        : (colors.surfaceContainerHigh, colors.onSurfaceVariant);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: pair.$1,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: pair.$2,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

Future<void> _confirmStartAttendance(
  BuildContext context,
  TeacherController state,
  TeacherClassSessionDto session,
) async {
  final confirmed =
      await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          icon: const AppIcon(AppIcons.attendance, size: 30),
          title: Text(_t(dialogContext, 'teacher.dialog.startAttendanceTitle')),
          content: Text(
            _t(
              dialogContext,
              'teacher.dialog.startAttendanceBody',
              args: {
                'class': session.title,
                'batch': session.batchName ?? session.batchId,
                'schedule': _dateRange(
                  dialogContext,
                  session.startsAt,
                  session.endsAt,
                ),
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(_t(dialogContext, 'teacher.dialog.notNow')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(_t(dialogContext, 'teacher.attendance.start')),
            ),
          ],
        ),
      ) ??
      false;
  if (!confirmed || !context.mounted) return;
  await state.startAttendance(session.id);
  if (!context.mounted) return;
  if (state.attendanceSession?.classSessionId == session.id) {
    await _openAttendance(context, state);
  } else {
    _showMessage(
      context,
      _stateError(
        context,
        state.error,
        fallback: 'teacher.error.attendanceOpen',
      ),
    );
  }
}

Future<void> _openAttendance(BuildContext context, TeacherController state) =>
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ChangeNotifierProvider.value(
          value: state,
          child: const _AttendanceSessionPage(),
        ),
      ),
    );

Future<void> _confirmMarkRemainingPresent(
  BuildContext context,
  TeacherController state,
) async {
  final count = state.unmarkedAttendanceCount;
  final confirmed =
      await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(
            _t(
              dialogContext,
              'teacher.dialog.markPresentTitle',
              args: {'count': _number(dialogContext, count)},
            ),
          ),
          content: Text(_t(dialogContext, 'teacher.dialog.markPresentBody')),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(_t(dialogContext, 'common.cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(_t(dialogContext, 'teacher.attendance.markPresent')),
            ),
          ],
        ),
      ) ??
      false;
  if (confirmed) state.markAllUnmarked('present');
}

Future<void> _confirmFinalizeAttendance(
  BuildContext context,
  TeacherController state,
) async {
  final counts = state.attendanceCounts;
  final confirmed =
      await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          icon: const AppIcon(AppIcons.checklist, size: 30),
          title: Text(
            _t(dialogContext, 'teacher.dialog.finalizeAttendanceTitle'),
          ),
          content: Text(
            _t(
              dialogContext,
              'teacher.dialog.finalizeAttendanceBody',
              args: {
                'present': _number(dialogContext, counts['present'] ?? 0),
                'absent': _number(dialogContext, counts['absent'] ?? 0),
                'late': _number(dialogContext, counts['late'] ?? 0),
                'excused': _number(dialogContext, counts['excused'] ?? 0),
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(_t(dialogContext, 'teacher.dialog.keepReviewing')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(_t(dialogContext, 'teacher.attendance.saveFinalize')),
            ),
          ],
        ),
      ) ??
      false;
  if (!confirmed || !context.mounted) return;
  final saved = await state.saveAndCloseAttendance();
  if (!context.mounted) return;
  if (saved) {
    _showMessage(context, _t(context, 'teacher.attendance.saved'));
    Navigator.maybePop(context);
  } else {
    _showMessage(
      context,
      _stateError(
        context,
        state.error,
        fallback: 'teacher.error.attendanceFinalize',
      ),
    );
  }
}

Future<void> _showAvailabilityEditor(
  BuildContext context,
  TeacherController state,
) async {
  final now = DateTime.now();
  var startsAt = DateTime(
    now.year,
    now.month,
    now.day + 1,
    now.hour < 17 ? now.hour + 1 : 9,
  );
  var endsAt = startsAt.add(const Duration(hours: 1));
  var type = 'available';
  var submitting = false;
  String? localError;

  final saved = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    builder: (sheetContext) => StatefulBuilder(
      builder: (sheetContext, setSheetState) => SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            AppSpacing.lg,
            AppSpacing.lg,
            AppSpacing.lg,
            MediaQuery.viewInsetsOf(sheetContext).bottom + AppSpacing.lg,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: AppLayout.maxFormWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const AppIconBadge(icon: AppIcons.clock),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _t(sheetContext, 'teacher.availability.addTitle'),
                              style: Theme.of(
                                sheetContext,
                              ).textTheme.titleLarge,
                            ),
                            Text(
                              _t(
                                sheetContext,
                                'teacher.availability.addSubtitle',
                              ),
                              style: Theme.of(sheetContext).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  DropdownButtonFormField<String>(
                    initialValue: type,
                    decoration: InputDecoration(
                      labelText: _t(sheetContext, 'teacher.availability.type'),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'available',
                        child: Text(
                          _t(sheetContext, 'teacher.availability.available'),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'unavailable',
                        child: Text(
                          _t(sheetContext, 'teacher.availability.unavailable'),
                        ),
                      ),
                    ],
                    onChanged: submitting
                        ? null
                        : (value) {
                            if (value != null) {
                              setSheetState(() => type = value);
                            }
                          },
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _DateTimeField(
                    label: _t(sheetContext, 'teacher.availability.starts'),
                    value: startsAt,
                    enabled: !submitting,
                    onTap: () async {
                      final selected = await _pickDateTime(
                        sheetContext,
                        startsAt,
                      );
                      if (selected == null || !sheetContext.mounted) return;
                      setSheetState(() {
                        final duration = endsAt.difference(startsAt);
                        startsAt = selected;
                        endsAt = selected.add(
                          duration.isNegative || duration == Duration.zero
                              ? const Duration(hours: 1)
                              : duration,
                        );
                        localError = null;
                      });
                    },
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _DateTimeField(
                    label: _t(sheetContext, 'teacher.availability.ends'),
                    value: endsAt,
                    enabled: !submitting,
                    onTap: () async {
                      final selected = await _pickDateTime(
                        sheetContext,
                        endsAt,
                      );
                      if (selected == null || !sheetContext.mounted) return;
                      setSheetState(() {
                        endsAt = selected;
                        localError = null;
                      });
                    },
                  ),
                  if (localError != null) ...[
                    const SizedBox(height: AppSpacing.md),
                    AppStatusBanner(
                      message: localError!,
                      icon: AppIcons.warning,
                      tone: AppStateTone.error,
                    ),
                  ],
                  const SizedBox(height: AppSpacing.xl),
                  FilledButton.icon(
                    onPressed: submitting
                        ? null
                        : () async {
                            if (!endsAt.isAfter(startsAt)) {
                              setSheetState(
                                () => localError = _t(
                                  sheetContext,
                                  'teacher.error.endAfterStart',
                                ),
                              );
                              return;
                            }
                            setSheetState(() {
                              submitting = true;
                              localError = null;
                            });
                            final success = await state.addAvailability(
                              startsAt: startsAt,
                              endsAt: endsAt,
                              type: type,
                            );
                            if (!sheetContext.mounted) return;
                            if (success) {
                              Navigator.pop(sheetContext, true);
                            } else {
                              setSheetState(() {
                                submitting = false;
                                localError =
                                    state.error ??
                                    _stateError(
                                      sheetContext,
                                      state.error,
                                      fallback:
                                          'teacher.error.availabilitySave',
                                    );
                              });
                            }
                          },
                    icon: submitting
                        ? const SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const AppIcon(AppIcons.check, size: 20),
                    label: Text(_t(sheetContext, 'teacher.availability.save')),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  TextButton(
                    onPressed: submitting
                        ? null
                        : () => Navigator.pop(sheetContext, false),
                    child: Text(_t(sheetContext, 'common.cancel')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
  if (saved == true && context.mounted) {
    _showMessage(context, _t(context, 'teacher.availability.saved'));
  }
}

class _DateTimeField extends StatelessWidget {
  const _DateTimeField({
    required this.label,
    required this.value,
    required this.enabled,
    required this.onTap,
  });

  final String label;
  final DateTime value;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => OutlinedButton(
    onPressed: enabled ? onTap : null,
    style: OutlinedButton.styleFrom(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
    ),
    child: Row(
      children: [
        const AppIcon(AppIcons.calendar),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                _formatDateTime(context, value),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        const AppIcon(AppIcons.arrowDown, size: 18),
      ],
    ),
  );
}

Future<DateTime?> _pickDateTime(BuildContext context, DateTime initial) async {
  final date = await showDatePicker(
    context: context,
    initialDate: initial,
    firstDate: DateTime.now().subtract(const Duration(days: 1)),
    lastDate: DateTime.now().add(const Duration(days: 730)),
  );
  if (date == null || !context.mounted) return null;
  final time = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.fromDateTime(initial),
  );
  if (time == null) return null;
  return DateTime(date.year, date.month, date.day, time.hour, time.minute);
}

Future<void> _confirmDeleteAvailability(
  BuildContext context,
  TeacherController state,
  TeacherAvailabilityDto item,
) async {
  final confirmed =
      await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          icon: AppIcon(
            AppIcons.delete,
            color: Theme.of(dialogContext).colorScheme.error,
            size: 30,
          ),
          title: Text(
            _t(dialogContext, 'teacher.dialog.removeAvailabilityTitle'),
          ),
          content: Text(_dateRange(dialogContext, item.startsAt, item.endsAt)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(_t(dialogContext, 'teacher.dialog.keep')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(dialogContext).colorScheme.error,
              ),
              child: Text(_t(dialogContext, 'teacher.availability.remove')),
            ),
          ],
        ),
      ) ??
      false;
  if (!confirmed || !context.mounted) return;
  final removed = await state.removeAvailability(item.id);
  if (!context.mounted) return;
  _showMessage(
    context,
    removed
        ? _t(context, 'teacher.availability.removed')
        : _stateError(
            context,
            state.error,
            fallback: 'teacher.error.availabilityRemove',
          ),
  );
}

TeacherClassSessionDto? _activeClassSession(TeacherController state) {
  final id = state.attendanceSession?.classSessionId;
  if (id == null) return null;
  return state.classSessions.where((item) => item.id == id).firstOrNull;
}

DateTime? _rawDate(Map<String, dynamic> item) {
  for (final key in const [
    'starts_at',
    'due_at',
    'scheduled_at',
    'published_at',
    'created_at',
  ]) {
    final value = item[key];
    if (value is String) {
      final parsed = DateTime.tryParse(value);
      if (parsed != null) return parsed;
    }
  }
  return null;
}

String _formatDateTime(BuildContext context, DateTime value) {
  final local = value.toLocal();
  final localizations = MaterialLocalizations.of(context);
  final date = localizations.formatMediumDate(local);
  final time = localizations.formatTimeOfDay(
    TimeOfDay.fromDateTime(local),
    alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
  );
  return '$date • $time';
}

String _dateRange(BuildContext context, DateTime start, DateTime end) {
  final localStart = start.toLocal();
  final localEnd = end.toLocal();
  final localizations = MaterialLocalizations.of(context);
  final startDate = localizations.formatMediumDate(localStart);
  final startTime = localizations.formatTimeOfDay(
    TimeOfDay.fromDateTime(localStart),
    alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
  );
  final endTime = localizations.formatTimeOfDay(
    TimeOfDay.fromDateTime(localEnd),
    alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
  );
  final sameDay =
      localStart.year == localEnd.year &&
      localStart.month == localEnd.month &&
      localStart.day == localEnd.day;
  if (sameDay) return '$startDate • $startTime – $endTime';
  return '$startDate • $startTime – ${_formatDateTime(context, localEnd)}';
}

List<List<dynamic>> _metricIcon(String key) {
  final normalized = key.toLowerCase();
  if (normalized.contains('student') || normalized.contains('learner')) {
    return AppIcons.students;
  }
  if (normalized.contains('class') || normalized.contains('live')) {
    return AppIcons.live;
  }
  if (normalized.contains('assignment') || normalized.contains('submission')) {
    return AppIcons.assignment;
  }
  if (normalized.contains('quiz') || normalized.contains('exam')) {
    return AppIcons.results;
  }
  if (normalized.contains('course')) return AppIcons.book;
  return AppIcons.analytics;
}

String _humanize(String value) {
  final words = value
      .replaceAll('-', '_')
      .split('_')
      .where((word) => word.isNotEmpty)
      .toList();
  if (words.isEmpty) return value;
  return words
      .map(
        (word) => '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}',
      )
      .join(' ');
}

String _localizedStatus(BuildContext context, String value) {
  final normalized = value.trim().toLowerCase().replaceAll('-', '_');
  const known = {
    'active',
    'scheduled',
    'published',
    'available',
    'unavailable',
    'pending',
    'in_progress',
    'draft',
    'completed',
    'cancelled',
    'closed',
    'open',
    'upcoming',
    'quiz',
    'exam',
    'assignment',
    'submission',
    'live_class',
  };
  if (known.contains(normalized)) {
    return _t(context, 'teacher.status.$normalized');
  }
  return _t(context, 'teacher.status.other', args: {'value': _humanize(value)});
}

String _localizedMetric(BuildContext context, String key) {
  final normalized = key.trim().toLowerCase().replaceAll('-', '_');
  const known = {
    'students',
    'learners',
    'classes',
    'live_classes',
    'assignments',
    'submissions',
    'quizzes',
    'exams',
    'courses',
  };
  if (known.contains(normalized)) {
    return _t(context, 'teacher.metric.$normalized');
  }
  return _t(context, 'teacher.metric.other', args: {'value': _humanize(key)});
}

String _t(
  BuildContext context,
  String key, {
  Map<String, Object?> args = const {},
}) => AppLocalizations.of(context).tr(key, args: args);

String _number(BuildContext context, Object? value) {
  final l = AppLocalizations.of(context);
  return value is num ? l.number(value) : l.digits('${value ?? ''}');
}

String _stateError(
  BuildContext context,
  String? key, {
  required String fallback,
}) => _t(context, key ?? fallback);

String _mapTitle(Map<String, dynamic> map, {String fallback = ''}) =>
    '${map['title'] ?? map['display_name'] ?? map['name'] ?? fallback}'.trim();

void _showMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}
