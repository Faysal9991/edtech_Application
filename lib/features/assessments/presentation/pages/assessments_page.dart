import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssessmentsPage extends StatefulWidget {
  const AssessmentsPage({super.key});

  @override
  State<AssessmentsPage> createState() => _AssessmentsPageState();
}

class _AssessmentsPageState extends State<AssessmentsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<StudentLmsController>().loadAssessments(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.tr('assessments.title')),
        actions: [
          IconButton(
            tooltip: context.l10n.tr('common.retry'),
            onPressed: state.isLoadingActivities ? null : state.loadAssessments,
            icon: const AppIcon(AppIcons.refresh),
          ),
        ],
      ),
      body: _body(context, state),
    );
  }

  Widget _body(BuildContext context, StudentLmsController state) {
    if (state.isLoadingActivities &&
        state.quizzes.isEmpty &&
        state.assignments.isEmpty &&
        state.exams.isEmpty) {
      return Center(
        child: AppLoadingView(label: context.l10n.tr('common.loading')),
      );
    }
    if (state.activitiesError != null &&
        state.quizzes.isEmpty &&
        state.assignments.isEmpty &&
        state.exams.isEmpty) {
      return Center(
        child: AppStateView(
          icon: AppIcons.cloudOff,
          title: context.l10n.tr('assessments.title'),
          message: context.l10n.tr('common.offline'),
          actionLabel: context.l10n.tr('common.retry'),
          onAction: state.loadAssessments,
          tone: AppStateTone.error,
        ),
      );
    }

    return AppScrollablePage(
      onRefresh: state.loadAssessments,
      children: [
        if (state.activitiesError != null) ...[
          AppStatusBanner(
            icon: AppIcons.cloudOff,
            message: context.l10n.tr('common.offline'),
            tone: AppStateTone.warning,
            actionLabel: context.l10n.tr('common.retry'),
            onAction: state.loadAssessments,
          ),
          const SizedBox(height: 20),
        ],
        _SectionTitle(
          title: context.l10n.tr('assessments.availableQuizzes'),
          count: state.quizzes.length,
        ),
        const SizedBox(height: 10),
        if (state.quizzes.isEmpty)
          _EmptyActivity(text: context.l10n.tr('assessments.noQuizzes'))
        else
          ...state.quizzes.map(
            (quiz) => _ActivityTile(
              icon: AppIcons.task,
              title: quiz.title,
              subtitle: quiz.courseTitle,
              badge: '${quiz.attemptsUsed}/${quiz.attemptLimit}',
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.quiz,
                arguments: quiz.id,
              ),
            ),
          ),
        const SizedBox(height: 26),
        _SectionTitle(
          title: context.l10n.tr('assessments.assignments'),
          count: state.assignments.length,
        ),
        const SizedBox(height: 10),
        if (state.assignments.isEmpty)
          _EmptyActivity(text: context.l10n.tr('assessments.noAssignments'))
        else
          ...state.assignments.map(
            (assignment) => _ActivityTile(
              icon: AppIcons.learning,
              title: assignment.title,
              subtitle: assignment.courseTitle,
              badge: assignment.submissionStatus,
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.assignment,
                arguments: assignment.id,
              ),
            ),
          ),
        const SizedBox(height: 26),
        _SectionTitle(
          title: context.l10n.tr('assessments.exams'),
          count: state.exams.length,
        ),
        const SizedBox(height: 10),
        if (state.exams.isEmpty)
          _EmptyActivity(text: context.l10n.tr('assessments.noExams'))
        else
          ...state.exams.map((exam) => _ExamTile(exam: exam)),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.count});

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
        Badge(label: Text(context.l10n.number(count))),
      ],
    );
  }
}

class _ActivityTile extends StatelessWidget {
  const _ActivityTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.badge,
    required this.onTap,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String subtitle;
  final String badge;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.all(14),
        leading: AppIconBadge(icon: icon),
        title: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(badge, style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 4),
            const AppIcon(AppIcons.arrowRight, size: 18),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}

class _ExamTile extends StatelessWidget {
  const _ExamTile({required this.exam});

  final ExamDto exam;

  @override
  Widget build(BuildContext context) {
    return _ActivityTile(
      icon: AppIcons.analytics,
      title: exam.title,
      subtitle: exam.courseTitle ?? context.l10n.tr('assessments.modelTest'),
      badge: '${context.l10n.number(exam.durationSeconds ~/ 60)} min',
      onTap: () =>
          Navigator.pushNamed(context, AppRoutes.exam, arguments: exam.id),
    );
  }
}

class _EmptyActivity extends StatelessWidget {
  const _EmptyActivity({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
