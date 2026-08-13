import 'dart:async';

import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({this.quizId, super.key});

  final String? quizId;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizAttemptDto? _attempt;
  Timer? _timer;
  final Map<String, Set<String>> _selectedOptions = {};
  final Map<String, String> _textAnswers = {};
  int _index = 0;
  int? _remainingSeconds;
  bool _loading = true;
  bool _saving = false;
  bool _submitting = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _start());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _start() async {
    final id = widget.quizId;
    final repository = context.read<StudentLmsRepository?>();
    if (id == null || id.isEmpty) {
      setState(() {
        _loading = false;
        _error = context.l10n.tr('quiz.apiReadyMissing');
      });
      return;
    }
    if (repository == null) {
      setState(() {
        _loading = false;
        _error = context.l10n.tr('payments.apiUnavailable');
      });
      return;
    }
    try {
      final attempt = await repository.startQuiz(id);
      if (!mounted) return;
      setState(() {
        _attempt = attempt;
        _loading = false;
      });
      _startTimer(attempt.expiresAt);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = context.l10n.tr('common.offline');
      });
    }
  }

  void _startTimer(DateTime? expiresAt) {
    if (expiresAt == null) return;
    void update() {
      final remaining = expiresAt.difference(DateTime.now().toUtc()).inSeconds;
      if (!mounted) return;
      setState(() => _remainingSeconds = remaining.clamp(0, 86400));
      if (remaining <= 0) {
        _timer?.cancel();
        unawaited(_submit(autoSubmitted: true));
      }
    }

    update();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => update());
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text(context.l10n.tr('quiz.title'))),
        body: Center(
          child: AppLoadingView(label: context.l10n.tr('common.loading')),
        ),
      );
    }
    if (_error != null || _attempt == null || _attempt!.questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(context.l10n.tr('quiz.title'))),
        body: Center(
          child: AppStateView(
            icon: AppIcons.quiz,
            title: context.l10n.tr('quiz.title'),
            message: _error ?? context.l10n.tr('quiz.noQuestions'),
            actionLabel: _error == null
                ? null
                : context.l10n.tr('common.retry'),
            onAction: _error == null ? null : _start,
            tone: _error == null ? AppStateTone.info : AppStateTone.error,
          ),
        ),
      );
    }

    final attempt = _attempt!;
    final question = attempt.questions[_index];
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmExit();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _confirmExit,
            icon: const Icon(Icons.close_rounded),
          ),
          title: Text(
            context.l10n.tr(
              'quiz.attempt',
              args: {'number': context.l10n.number(attempt.attemptNumber)},
            ),
          ),
          actions: [
            if (_remainingSeconds != null)
              _TimerBadge(seconds: _remainingSeconds!),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              LinearProgressIndicator(
                minHeight: 5,
                value: (_index + 1) / attempt.questions.length,
                color: Theme.of(context).colorScheme.secondary,
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.secondaryContainer,
              ),
              Expanded(
                child: AppScrollablePage(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 28),
                  children: [
                    Row(
                      children: [
                        Text(
                          context.l10n.tr(
                            'quiz.questionProgress',
                            args: {
                              'current': context.l10n.number(_index + 1),
                              'total': context.l10n.number(
                                attempt.questions.length,
                              ),
                            },
                          ),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          _saving
                              ? context.l10n.tr('quiz.saving')
                              : context.l10n.tr('quiz.autoSave'),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      question.prompt,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(height: 1.45),
                    ),
                    const SizedBox(height: 24),
                    if (question.type == 'short_answer')
                      TextFormField(
                        key: ValueKey(question.id),
                        initialValue: _textAnswers[question.id] ?? '',
                        minLines: 4,
                        maxLines: 8,
                        onChanged: (value) => _textAnswers[question.id] = value,
                        decoration: InputDecoration(
                          hintText: context.l10n.tr('quiz.answerHint'),
                          alignLabelWithHint: true,
                        ),
                      )
                    else
                      ...question.options.asMap().entries.map((entry) {
                        final selected =
                            _selectedOptions[question.id]?.contains(
                              entry.value.id,
                            ) ??
                            false;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _AnswerOption(
                            label: String.fromCharCode(65 + entry.key),
                            text: entry.value.text,
                            selected: selected,
                            onTap: () =>
                                _selectOption(question, entry.value.id),
                          ),
                        );
                      }),
                  ],
                ),
              ),
              _bottomBar(attempt, question),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomBar(QuizAttemptDto attempt, QuizQuestionDto question) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: _index == 0 || _saving
                  ? null
                  : () => _move(question, -1),
              child: Text(context.l10n.tr('common.previous')),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: FilledButton(
              onPressed: _submitting || _saving
                  ? null
                  : _index == attempt.questions.length - 1
                  ? () => _submit()
                  : () => _move(question, 1),
              child: _submitting
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.4,
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      _index == attempt.questions.length - 1
                          ? context.l10n.tr('common.submit')
                          : context.l10n.tr('quiz.nextQuestion'),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectOption(QuizQuestionDto question, String optionId) async {
    final current = {...?_selectedOptions[question.id]};
    if (question.type == 'multiple') {
      current.contains(optionId)
          ? current.remove(optionId)
          : current.add(optionId);
    } else {
      current
        ..clear()
        ..add(optionId);
    }
    setState(() {
      _selectedOptions[question.id] = current;
      _saving = true;
    });
    await _saveAnswer(question);
  }

  Future<void> _move(QuizQuestionDto question, int delta) async {
    if (question.type == 'short_answer') {
      setState(() => _saving = true);
      await _saveAnswer(question);
    }
    if (mounted) setState(() => _index += delta);
  }

  Future<void> _saveAnswer(QuizQuestionDto question) async {
    final repository = context.read<StudentLmsRepository?>();
    final attempt = _attempt;
    if (repository == null || attempt == null) return;
    try {
      await repository.saveAnswer(
        attemptId: attempt.id,
        questionId: question.id,
        selectedOptionIds: question.type == 'short_answer'
            ? null
            : (_selectedOptions[question.id] ?? const {}).toList(),
        textAnswer: question.type == 'short_answer'
            ? _textAnswers[question.id]
            : null,
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.tr('common.offline'))),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _submit({bool autoSubmitted = false}) async {
    final attempt = _attempt;
    final repository = context.read<StudentLmsRepository?>();
    if (attempt == null || repository == null || _submitting) return;
    final current = attempt.questions[_index];
    if (current.type == 'short_answer') await _saveAnswer(current);
    var confirmed = autoSubmitted;
    if (!autoSubmitted && mounted) {
      confirmed =
          await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(context.l10n.tr('quiz.confirmTitle')),
              content: Text(context.l10n.tr('quiz.confirmBody')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(context.l10n.tr('quiz.review')),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(context.l10n.tr('common.submit')),
                ),
              ],
            ),
          ) ??
          false;
    }
    if (!confirmed || !mounted) return;
    setState(() => _submitting = true);
    try {
      final result = await repository.submitQuiz(attempt.id);
      _timer?.cancel();
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          icon: AppIcon(
            result.passed == true ? AppIcons.certificate : AppIcons.analytics,
            color: Theme.of(context).colorScheme.primary,
            size: 52,
          ),
          title: Text(
            result.passed == true
                ? context.l10n.tr('quiz.passed')
                : context.l10n.tr('quiz.completed'),
          ),
          content: Text(
            result.percentage == null
                ? context.l10n.tr('quiz.resultLater')
                : context.l10n.percent(result.percentage!.round()),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text(context.l10n.tr('common.finish')),
            ),
          ],
        ),
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.tr('common.offline'))),
        );
      }
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  Future<void> _confirmExit() async {
    final leave =
        await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(context.l10n.tr('quiz.exitTitle')),
            content: Text(context.l10n.tr('quiz.exitBody')),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(context.l10n.tr('quiz.stay')),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(context.l10n.tr('quiz.exit')),
              ),
            ],
          ),
        ) ??
        false;
    if (leave && mounted) Navigator.pop(context);
  }
}

class _TimerBadge extends StatelessWidget {
  const _TimerBadge({required this.seconds});

  final int seconds;

  @override
  Widget build(BuildContext context) {
    final minute = (seconds ~/ 60).toString().padLeft(2, '0');
    final second = (seconds % 60).toString().padLeft(2, '0');
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Chip(
        avatar: const AppIcon(AppIcons.clock, size: 17),
        label: Text(context.l10n.digits('$minute:$second')),
      ),
    );
  }
}

class _AnswerOption extends StatelessWidget {
  const _AnswerOption({
    required this.label,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final String text;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: selected ? colors.primaryContainer : Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: selected ? colors.primary : colors.outline,
          width: selected ? 1.5 : 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: selected
                    ? colors.primary
                    : colors.primaryContainer,
                foregroundColor: selected
                    ? colors.onPrimary
                    : colors.onPrimaryContainer,
                child: Text(label),
              ),
              const SizedBox(width: 14),
              Expanded(child: Text(text)),
              if (selected)
                AppIcon(AppIcons.check, color: colors.primary, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
