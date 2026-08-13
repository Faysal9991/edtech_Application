import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LiveClassesPage extends StatefulWidget {
  const LiveClassesPage({super.key});

  @override
  State<LiveClassesPage> createState() => _LiveClassesPageState();
}

class _LiveClassesPageState extends State<LiveClassesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<StudentLmsController>().loadLiveClasses(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.tr('live.title')),
        actions: [
          IconButton(
            tooltip: context.l10n.tr('common.retry'),
            onPressed: state.isLoadingLiveClasses
                ? null
                : state.loadLiveClasses,
            icon: const AppIcon(AppIcons.refresh),
          ),
        ],
      ),
      body: _body(context, state),
    );
  }

  Widget _body(BuildContext context, StudentLmsController state) {
    if (state.isLoadingLiveClasses && state.liveClasses.isEmpty) {
      return Center(
        child: AppLoadingView(label: context.l10n.tr('common.loading')),
      );
    }
    if (state.liveClassesError != null && state.liveClasses.isEmpty) {
      return Center(
        child: AppStateView(
          icon: AppIcons.cloudOff,
          title: context.l10n.tr('live.title'),
          message: context.l10n.tr('common.offline'),
          actionLabel: context.l10n.tr('common.retry'),
          onAction: state.loadLiveClasses,
          tone: AppStateTone.error,
        ),
      );
    }
    if (state.liveClasses.isEmpty) {
      return Center(
        child: AppStateView(
          icon: AppIcons.live,
          title: context.l10n.tr('live.title'),
          message: context.l10n.tr('live.empty'),
          tone: AppStateTone.info,
        ),
      );
    }
    return AppScrollablePage(
      onRefresh: state.loadLiveClasses,
      children: [
        if (state.liveClassesError != null) ...[
          AppStatusBanner(
            icon: AppIcons.cloudOff,
            message: context.l10n.tr('common.offline'),
            tone: AppStateTone.warning,
            actionLabel: context.l10n.tr('common.retry'),
            onAction: state.loadLiveClasses,
          ),
          const SizedBox(height: 20),
        ],
        ...state.liveClasses.expand(
          (item) => [_LiveClassCard(item: item), const SizedBox(height: 12)],
        ),
      ],
    );
  }
}

class _LiveClassCard extends StatelessWidget {
  const _LiveClassCard({required this.item});

  final StudentLiveClassDto item;

  @override
  Widget build(BuildContext context) {
    final isLive = item.status == 'live';
    final start = item.scheduledStartAt.toLocal();
    final end = item.scheduledEndAt.toLocal();
    final localizations = MaterialLocalizations.of(context);
    final date = localizations.formatMediumDate(start);
    final startTime = localizations.formatTimeOfDay(
      TimeOfDay.fromDateTime(start),
    );
    final endTime = localizations.formatTimeOfDay(TimeOfDay.fromDateTime(end));
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppIconBadge(
                  icon: AppIcons.live,
                  backgroundColor: isLive
                      ? Theme.of(context).colorScheme.errorContainer
                      : Theme.of(context).colorScheme.primaryContainer,
                  foregroundColor: isLive
                      ? Theme.of(context).colorScheme.onErrorContainer
                      : Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 5),
                      Text(item.courseTitle),
                    ],
                  ),
                ),
                if (item.status == 'live' || item.status == 'scheduled')
                  Chip(
                    label: Text(
                      isLive
                          ? context.l10n.tr('live.liveNow')
                          : context.l10n.tr('live.scheduled'),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                const AppIcon(AppIcons.calendar, size: 17),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    '$date • $startTime–$endTime',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            if (item.description.isNotEmpty) ...[
              const SizedBox(height: 10),
              Text(
                item.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: item.status == 'ended' || item.status == 'cancelled'
                    ? null
                    : () => Navigator.pushNamed(
                        context,
                        AppRoutes.liveRoom,
                        arguments: item.id,
                      ),
                icon: const AppIcon(AppIcons.live, size: 20),
                label: Text(context.l10n.tr('live.joinNow')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
