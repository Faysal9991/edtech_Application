import 'dart:async';

import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExamPage extends StatefulWidget {
  const ExamPage({required this.examId, super.key});

  final String? examId;

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  ExamAttemptDto? _attempt;
  Timer? _timer;
  final Map<String, Set<String>> _selected = {};
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
    final repository = context.read<StudentLmsRepository?>();
    final examId = widget.examId;
    if (repository == null || examId == null || examId.isEmpty) {
      setState(() {
        _loading = false;
        _error = context.l10n.tr('exam.unavailable');
      });
      return;
    }
    try {
      final attempt = await repository.startExam(examId);
      if (!mounted) return;
      setState(() {
        _attempt = attempt;
        _loading = false;
      });
      _startTimer(attempt.submitBefore ?? attempt.expiresAt);
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = '$error';
      });
    }
  }

  void _startTimer(DateTime? deadline) {
    if (deadline == null) return;
    void update() {
      final seconds = deadline.difference(DateTime.now().toUtc()).inSeconds;
      if (!mounted) return;
      setState(() => _remainingSeconds = seconds.clamp(0, 86400));
      if (seconds <= 0) {
        _timer?.cancel();
        unawaited(_submit(force: true));
      }
    }

    update();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => update());
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text(context.l10n.tr('exam.title'))),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    final attempt = _attempt;
    if (_error != null || attempt == null || attempt.questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(context.l10n.tr('exam.title'))),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Text(
              _error ?? context.l10n.tr('quiz.noQuestions'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

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
          title: Text(context.l10n.tr('exam.title')),
          actions: [
            if (_remainingSeconds != null)
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Center(child: _timerLabel(_remainingSeconds!)),
              ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              LinearProgressIndicator(
                minHeight: 5,
                value: (_index + 1) / attempt.questions.length,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(20),
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
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          _saving
                              ? context.l10n.tr('quiz.saving')
                              : context.l10n.tr('quiz.autoSave'),
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
                        ),
                      )
                    else
                      ...question.options.asMap().entries.map(
                        (entry) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _ExamOption(
                            label: String.fromCharCode(65 + entry.key),
                            text: entry.value.text,
                            selected:
                                _selected[question.id]?.contains(
                                  entry.value.id,
                                ) ??
                                false,
                            onTap: () => _select(question, entry.value.id),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              _navigation(attempt, question),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navigation(ExamAttemptDto attempt, PublicQuestionDto question) {
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
              onPressed: _saving || _submitting
                  ? null
                  : _index == attempt.questions.length - 1
                  ? _submit
                  : () => _move(question, 1),
              child: _submitting
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
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

  Future<void> _select(PublicQuestionDto question, String optionId) async {
    final selected = {...?_selected[question.id]};
    if (question.type == 'multiple') {
      selected.contains(optionId)
          ? selected.remove(optionId)
          : selected.add(optionId);
    } else {
      selected
        ..clear()
        ..add(optionId);
    }
    setState(() {
      _selected[question.id] = selected;
      _saving = true;
    });
    await _save(question);
  }

  Future<void> _move(PublicQuestionDto question, int delta) async {
    if (question.type == 'short_answer') {
      setState(() => _saving = true);
      await _save(question);
    }
    if (mounted) setState(() => _index += delta);
  }

  Future<void> _save(PublicQuestionDto question) async {
    final repository = context.read<StudentLmsRepository?>();
    final attempt = _attempt;
    if (repository == null || attempt == null) return;
    try {
      await repository.saveExamAnswer(
        attemptId: attempt.id,
        questionId: question.id,
        selectedOptionIds: question.type == 'short_answer'
            ? null
            : (_selected[question.id] ?? const {}).toList(),
        textAnswer: question.type == 'short_answer'
            ? _textAnswers[question.id]
            : null,
      );
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$error')));
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _submit({bool force = false}) async {
    final repository = context.read<StudentLmsRepository?>();
    final attempt = _attempt;
    if (repository == null || attempt == null || _submitting) return;
    final current = attempt.questions[_index];
    if (current.type == 'short_answer') await _save(current);
    var confirmed = force;
    if (!force && mounted) {
      confirmed =
          await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(context.l10n.tr('quiz.confirmTitle')),
              content: Text(context.l10n.tr('exam.submitWarning')),
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
      final result = await repository.submitExam(attempt.id);
      _timer?.cancel();
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          icon: const Icon(
            Icons.emoji_events_rounded,
            color: AppColors.primary,
            size: 52,
          ),
          title: Text(context.l10n.tr('exam.submitted')),
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
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$error')));
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
            title: Text(context.l10n.tr('quiz.leaveTitle')),
            content: Text(context.l10n.tr('quiz.leaveBody')),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(context.l10n.tr('quiz.keepGoing')),
              ),
              FilledButton.tonal(
                onPressed: () => Navigator.pop(context, true),
                child: Text(context.l10n.tr('quiz.leave')),
              ),
            ],
          ),
        ) ??
        false;
    if (leave && mounted) Navigator.pop(context);
  }

  Widget _timerLabel(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final remainder = (seconds % 60).toString().padLeft(2, '0');
    return Chip(
      avatar: const Icon(Icons.timer_outlined, size: 18),
      label: Text(context.l10n.digits('$minutes:$remainder')),
    );
  }
}

class _ExamOption extends StatelessWidget {
  const _ExamOption({
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
      color: selected ? colors.primaryContainer : colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: selected ? colors.primary : colors.outlineVariant,
          width: selected ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: selected
                    ? colors.primary
                    : colors.surfaceContainerHighest,
                foregroundColor: selected ? colors.onPrimary : colors.onSurface,
                child: Text(label),
              ),
              const SizedBox(width: 14),
              Expanded(child: Text(text)),
            ],
          ),
        ),
      ),
    );
  }
}
