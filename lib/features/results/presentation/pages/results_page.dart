import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/animations/animated_progress_bar.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({this.embedded = false, super.key});

  final bool embedded;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    final body = _ResultContent(state: state);
    if (embedded) {
      return SafeArea(
        child: Column(
          children: [
            PageHeader(
              title: context.l10n.tr('results.title'),
              subtitle: context.l10n.tr('results.subtitle'),
            ),
            Expanded(child: body),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('results.title'))),
      body: body,
    );
  }
}

class _ResultContent extends StatelessWidget {
  const _ResultContent({required this.state});

  final StudentLmsController state;

  @override
  Widget build(BuildContext context) {
    if (state.isLoadingStudentData && state.results.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.studentDataError != null && state.results.isEmpty) {
      return _Status(
        icon: AppIcons.cloudOff,
        message: state.studentDataError!,
        action: FilledButton.tonal(
          onPressed: () =>
              context.read<StudentLmsController>().loadStudentData(),
          child: Text(context.l10n.tr('common.retry')),
        ),
      );
    }
    if (state.results.isEmpty) {
      return _Status(
        icon: AppIcons.analytics,
        message: context.l10n.tr('results.empty'),
      );
    }

    final average =
        state.results
            .map((item) => item.quizAverage)
            .fold<double>(0, (sum, value) => sum + value) /
        state.results.length;
    return RefreshIndicator(
      onRefresh: state.loadStudentData,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
        children: [
          Row(
            children: [
              Expanded(
                child: _Metric(
                  value: context.l10n.percent(average.round()),
                  label: context.l10n.tr('results.averageQuiz'),
                  icon: AppIcons.analytics,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _Metric(
                  value: context.l10n.number(state.results.length),
                  label: context.l10n.tr('results.courseResults'),
                  icon: AppIcons.task,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            context.l10n.tr('results.byCourse'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          ...state.results.map((result) => _ResultCard(result: result)),
        ],
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric({required this.value, required this.label, required this.icon});

  final String value;
  final String label;
  final List<List<dynamic>> icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIconBadge(icon: icon),
            const SizedBox(height: 14),
            Text(value, style: Theme.of(context).textTheme.headlineMedium),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({required this.result});

  final ResultDto result;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    result.courseTitle,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
                Chip(label: Text(result.status)),
              ],
            ),
            const SizedBox(height: 12),
            _ScoreLine(
              label: context.l10n.tr('results.quiz'),
              value: result.quizAverage,
            ),
            const SizedBox(height: 10),
            _ScoreLine(
              label: context.l10n.tr('results.assignment'),
              value: result.assignmentAverage,
            ),
            const SizedBox(height: 10),
            _ScoreLine(
              label: context.l10n.tr('results.completion'),
              value: result.completion,
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreLine extends StatelessWidget {
  const _ScoreLine({required this.label, required this.value});

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    final normalized = (value / 100).clamp(0.0, 1.0);
    return Row(
      children: [
        SizedBox(width: 92, child: Text(label)),
        Expanded(
          child: AnimatedProgressBar(
            value: normalized,
            height: 8,
            color: AppColors.secondary,
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(width: 46, child: Text(context.l10n.percent(value.round()))),
      ],
    );
  }
}

class _Status extends StatelessWidget {
  const _Status({required this.icon, required this.message, this.action});

  final List<List<dynamic>> icon;
  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIcon(icon, size: 56, color: AppColors.primary),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
            if (action != null) ...[const SizedBox(height: 16), action!],
          ],
        ),
      ),
    );
  }
}
