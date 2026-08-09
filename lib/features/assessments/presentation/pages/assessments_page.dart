import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';

class AssessmentsPage extends StatefulWidget {
  const AssessmentsPage({super.key});

  @override
  State<AssessmentsPage> createState() => _AssessmentsPageState();
}

class _AssessmentsPageState extends State<AssessmentsPage> {
  final _quizId = TextEditingController();
  final _assignmentId = TextEditingController();

  @override
  void dispose() {
    _quizId.dispose();
    _assignmentId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('assessments.title'))),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const _MissingEndpointNotice(),
          const SizedBox(height: 24),
          Text(
            context.l10n.tr('assessments.testFlow'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          _IdLauncher(
            controller: _quizId,
            title: context.l10n.tr('assessments.quizAttempt'),
            hint: context.l10n.tr('assessments.quizId'),
            icon: Icons.quiz_outlined,
            onOpen: () => _open(AppRoutes.quiz, _quizId.text),
          ),
          const SizedBox(height: 12),
          _IdLauncher(
            controller: _assignmentId,
            title: context.l10n.tr('assessments.assignmentSubmission'),
            hint: context.l10n.tr('assessments.assignmentId'),
            icon: Icons.assignment_outlined,
            onOpen: () => _open(AppRoutes.assignment, _assignmentId.text),
          ),
        ],
      ),
    );
  }

  void _open(String route, String rawId) {
    final id = rawId.trim();
    if (id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(context.l10n.tr('assessments.validId'))),
      );
      return;
    }
    Navigator.pushNamed(context, route, arguments: id);
  }
}

class _MissingEndpointNotice extends StatelessWidget {
  const _MissingEndpointNotice();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.green50,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.info_outline_rounded, color: AppColors.primary),
            const SizedBox(width: 12),
            Expanded(child: Text(context.l10n.tr('assessments.apiNotice'))),
          ],
        ),
      ),
    );
  }
}

class _IdLauncher extends StatelessWidget {
  const _IdLauncher({
    required this.controller,
    required this.title,
    required this.hint,
    required this.icon,
    required this.onOpen,
  });

  final TextEditingController controller;
  final String title;
  final String hint;
  final IconData icon;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(title, style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              decoration: InputDecoration(hintText: hint),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal(
                onPressed: onOpen,
                child: Text(context.l10n.tr('common.open')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
