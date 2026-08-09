import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
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
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: state.loadLiveClasses,
        child: _body(context, state),
      ),
    );
  }

  Widget _body(BuildContext context, StudentLmsController state) {
    if (state.isLoadingLiveClasses && state.liveClasses.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.liveClassesError != null && state.liveClasses.isEmpty) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: [
          const SizedBox(height: 90),
          const AppIcon(AppIcons.cloudOff, size: 58, color: AppColors.primary),
          const SizedBox(height: 16),
          Text(state.liveClassesError!, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: state.loadLiveClasses,
            child: Text(context.l10n.tr('common.retry')),
          ),
        ],
      );
    }
    if (state.liveClasses.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(28),
        children: [
          const SizedBox(height: 90),
          const AppIcon(AppIcons.live, size: 62, color: AppColors.primary),
          const SizedBox(height: 16),
          Text(
            context.l10n.tr('live.empty'),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      );
    }
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
      itemCount: state.liveClasses.length,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (context, index) =>
          _LiveClassCard(item: state.liveClasses[index]),
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
    final minute = start.minute.toString().padLeft(2, '0');
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
                      ? AppColors.errorBackground
                      : AppColors.primaryLight,
                  foregroundColor: isLive ? AppColors.error : AppColors.primary,
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
                Chip(
                  label: Text(
                    context.l10n.tr(isLive ? 'live.liveNow' : 'live.scheduled'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Text(
              '${context.l10n.number(start.day)}/${context.l10n.number(start.month)} • ${context.l10n.number(start.hour)}:${context.l10n.digits(minute)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
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
