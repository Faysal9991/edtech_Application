import 'dart:async';

import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentServicesPage extends StatefulWidget {
  const StudentServicesPage({super.key});

  @override
  State<StudentServicesPage> createState() => _StudentServicesPageState();
}

class _StudentServicesPageState extends State<StudentServicesPage> {
  List<PhysicalAttendanceRecordDto> _attendance = const [];
  List<TopicMasteryDto> _mastery = const [];
  List<TopicMasteryDto> _weakTopics = const [];
  List<DoubtThreadDto> _doubts = const [];
  List<StudyTaskDto> _tasks = const [];
  List<StudentGoalDto> _goals = const [];
  List<AdmitCardDto> _admitCards = const [];
  List<SmsContactDto> _smsContacts = const [];
  int _streak = 0;
  bool _loading = true;
  String? _error;
  String? _offlineStatus;

  StudentLmsRepository? get _repository =>
      context.read<StudentLmsRepository?>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _reload());
  }

  Future<void> _reload() async {
    final repository = _repository;
    if (repository == null) {
      setState(() {
        _loading = false;
        _error = 'Live API is unavailable in preview mode.';
      });
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    final errors = <Object>[];
    Future<void> load(Future<void> Function() operation) async {
      try {
        await operation();
      } catch (error) {
        errors.add(error);
      }
    }

    await Future.wait([
      load(() async {
        _attendance = (await repository.listAttendance()).items;
      }),
      load(() async {
        _mastery = (await repository.getTopicMastery()).items;
      }),
      load(() async {
        _weakTopics = (await repository.getWeakTopics()).items;
      }),
      load(() async {
        _doubts = (await repository.listDoubts()).items;
      }),
      load(() async {
        _tasks = (await repository.listStudyTasks()).items;
      }),
      load(() async {
        final goals = await repository.listGoals();
        _goals = goals.items;
        _streak = goals.currentStreakDays;
      }),
      load(() async {
        _admitCards = (await repository.listAdmitCards()).items;
      }),
      load(() async {
        _smsContacts = (await repository.listSmsContacts()).items;
      }),
    ]);
    if (!mounted) return;
    setState(() {
      _loading = false;
      _error = errors.isEmpty ? null : '${errors.first}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Student services'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Attendance'),
              Tab(text: 'Study'),
              Tab(text: 'Access'),
            ],
          ),
          actions: [
            IconButton(
              onPressed: _loading ? null : _reload,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  if (_error != null)
                    MaterialBanner(
                      content: Text('Some sections could not load: $_error'),
                      actions: [
                        TextButton(
                          onPressed: _reload,
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  Expanded(
                    child: TabBarView(
                      children: [_attendanceTab(), _studyTab(), _accessTab()],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _attendanceTab() => RefreshIndicator(
    onRefresh: _reload,
    child: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        FilledButton.icon(
          onPressed: _checkIn,
          icon: const Icon(Icons.qr_code_scanner_rounded),
          label: const Text('Enter attendance code'),
        ),
        const SizedBox(height: 12),
        if (_attendance.isEmpty)
          const _EmptyCard('No physical attendance records yet.')
        else
          ..._attendance.map(
            (record) => Card(
              child: ListTile(
                leading: Icon(
                  record.status == 'present'
                      ? Icons.check_circle_outline
                      : Icons.event_busy_outlined,
                ),
                title: Text(record.status),
                subtitle: Text(
                  '${record.markedAt.toLocal()} • ${record.source}',
                ),
                trailing: TextButton(
                  onPressed: () => _requestCorrection(record),
                  child: const Text('Correct'),
                ),
              ),
            ),
          ),
      ],
    ),
  );

  Widget _studyTab() => RefreshIndicator(
    onRefresh: _reload,
    child: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _SectionHeader(
          title: 'Weak topics',
          trailing: '${_mastery.length} mastery records',
        ),
        if (_weakTopics.isEmpty)
          const _EmptyCard('No weak topics identified.')
        else
          ..._weakTopics.map(
            (topic) => Card(
              child: ListTile(
                title: Text(topic.topicName ?? topic.topicId),
                subtitle: Text(
                  [
                    topic.subjectName,
                    topic.chapterName,
                  ].whereType<String>().join(' • '),
                ),
                trailing: Text(topic.score.canonical),
              ),
            ),
          ),
        _SectionHeader(title: 'Study tasks', trailing: '🔥 $_streak days'),
        if (_tasks.isEmpty)
          const _EmptyCard('No study-plan tasks.')
        else
          ..._tasks.map(
            (task) => Card(
              child: ListTile(
                title: Text(task.title),
                subtitle: Text('${task.dueAt.toLocal()} • ${task.status}'),
                trailing: PopupMenuButton<String>(
                  onSelected: (value) => value == 'complete'
                      ? _completeTask(task)
                      : _rescheduleTask(task),
                  itemBuilder: (_) => const [
                    PopupMenuItem(value: 'complete', child: Text('Complete')),
                    PopupMenuItem(
                      value: 'reschedule',
                      child: Text('Reschedule'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        _SectionHeader(
          title: 'Goals',
          action: IconButton(
            onPressed: _createGoal,
            icon: const Icon(Icons.add),
          ),
        ),
        if (_goals.isEmpty)
          const _EmptyCard('No active goals.')
        else
          ..._goals.map(
            (goal) => Card(
              child: ListTile(
                title: Text(goal.title),
                subtitle: Text('${goal.targetType} • ${goal.status}'),
                trailing: Text(goal.targetValue.canonical),
              ),
            ),
          ),
        _SectionHeader(
          title: 'Doubts',
          action: IconButton(
            onPressed: _createDoubt,
            icon: const Icon(Icons.add_comment_outlined),
          ),
        ),
        if (_doubts.isEmpty)
          const _EmptyCard('No doubt threads.')
        else
          ..._doubts.map(
            (doubt) => Card(
              child: ListTile(
                onTap: () => _openDoubt(doubt),
                title: Text(doubt.title),
                subtitle: Text('${doubt.status} • ${doubt.priority}'),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          ),
      ],
    ),
  );

  Widget _accessTab() {
    final enrollments = context.watch<StudentLmsController>().enrollments;
    return RefreshIndicator(
      onRefresh: _reload,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _SectionHeader(title: 'Offline learning & syllabus'),
          if (_offlineStatus != null)
            Card(child: ListTile(title: Text(_offlineStatus!))),
          ...enrollments
              .where((course) => course.enrollmentId != null)
              .map(
                (course) => Card(
                  child: ListTile(
                    title: Text(course.title),
                    subtitle: Text(course.status),
                    trailing: PopupMenuButton<String>(
                      onSelected: (value) => value == 'download'
                          ? _downloadCourse(course.enrollmentId!)
                          : _showSyllabus(course.enrollmentId!),
                      itemBuilder: (_) => const [
                        PopupMenuItem(
                          value: 'download',
                          child: Text('Download offline'),
                        ),
                        PopupMenuItem(
                          value: 'syllabus',
                          child: Text('Syllabus progress'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          const _SectionHeader(title: 'Admit cards'),
          if (_admitCards.isEmpty)
            const _EmptyCard('No ready admit cards.')
          else
            ..._admitCards.map(
              (card) => Card(
                child: ListTile(
                  title: Text(card.examTitle),
                  subtitle: Text(
                    '${card.venueName} • ${card.roomName} • ${card.seatLabel}',
                  ),
                  trailing: IconButton(
                    onPressed: () => _downloadAdmitCard(card.id),
                    icon: const Icon(Icons.download_outlined),
                  ),
                ),
              ),
            ),
          OutlinedButton.icon(
            onPressed: _verifyPublicRecord,
            icon: const Icon(Icons.verified_outlined),
            label: const Text('Verify admit card or student ID'),
          ),
          const _SectionHeader(title: 'SMS contacts'),
          ..._smsContacts.map(
            (contact) => Card(
              child: ListTile(
                title: Text('${contact.countryCode} •••• ${contact.lastFour}'),
                subtitle: Text(contact.status),
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: _addSmsContact,
            icon: const Icon(Icons.sms_outlined),
            label: const Text('Add / verify SMS contact'),
          ),
        ],
      ),
    );
  }

  Future<void> _checkIn() async {
    final session = TextEditingController();
    final code = TextEditingController();
    final accepted = await _formDialog(
      title: 'Attendance check-in',
      fields: [
        TextField(
          controller: session,
          decoration: const InputDecoration(labelText: 'Session ID'),
        ),
        TextField(
          controller: code,
          decoration: const InputDecoration(labelText: 'Server-issued code'),
        ),
      ],
    );
    if (!accepted) return;
    await _run(() async {
      await _repository!.checkInAttendance(
        attendanceSessionId: session.text.trim(),
        code: code.text.trim(),
      );
      await _reload();
    });
  }

  Future<void> _requestCorrection(PhysicalAttendanceRecordDto record) async {
    final reason = TextEditingController();
    var requestedStatus = 'present';
    final accepted =
        await showDialog<bool>(
          context: context,
          builder: (context) => StatefulBuilder(
            builder: (context, setDialogState) => AlertDialog(
              title: const Text('Request correction'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButtonFormField<String>(
                    initialValue: requestedStatus,
                    items: const [
                      DropdownMenuItem(
                        value: 'present',
                        child: Text('Present'),
                      ),
                      DropdownMenuItem(value: 'absent', child: Text('Absent')),
                      DropdownMenuItem(value: 'late', child: Text('Late')),
                      DropdownMenuItem(
                        value: 'excused',
                        child: Text('Excused'),
                      ),
                    ],
                    onChanged: (value) =>
                        setDialogState(() => requestedStatus = value!),
                  ),
                  TextField(
                    controller: reason,
                    decoration: const InputDecoration(labelText: 'Reason'),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Send'),
                ),
              ],
            ),
          ),
        ) ??
        false;
    if (!accepted) return;
    await _run(() async {
      await _repository!.requestAttendanceCorrection(
        attendanceRecordId: record.id,
        requestedStatus: requestedStatus,
        reason: reason.text,
      );
    });
  }

  Future<void> _completeTask(StudyTaskDto task) async => _run(() async {
    await _repository!.completeStudyTask(
      taskId: task.id,
      version: task.version,
    );
    await _reload();
  });

  Future<void> _rescheduleTask(StudyTaskDto task) async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date == null) return;
    await _run(() async {
      await _repository!.rescheduleStudyTask(
        taskId: task.id,
        version: task.version,
        dueAt: date,
      );
      await _reload();
    });
  }

  Future<void> _createGoal() async {
    final title = TextEditingController();
    final target = TextEditingController(text: '7');
    final accepted = await _formDialog(
      title: 'Create goal',
      fields: [
        TextField(
          controller: title,
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: target,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Task target'),
        ),
      ],
    );
    if (!accepted) return;
    await _run(() async {
      final today = DateUtils.dateOnly(DateTime.now());
      await _repository!.createGoal(
        StudentGoalWriteRequest(
          title: title.text.trim(),
          targetType: 'tasks',
          targetValue: FixedDecimal.parse(target.text.trim()),
          startsOn: today,
          endsOn: today.add(const Duration(days: 7)),
        ),
      );
      await _reload();
    });
  }

  Future<void> _createDoubt() async {
    final course = TextEditingController();
    final title = TextEditingController();
    final body = TextEditingController();
    final accepted = await _formDialog(
      title: 'Ask a doubt',
      fields: [
        TextField(
          controller: course,
          decoration: const InputDecoration(labelText: 'Course ID'),
        ),
        TextField(
          controller: title,
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: body,
          minLines: 3,
          maxLines: 6,
          decoration: const InputDecoration(labelText: 'Question'),
        ),
      ],
    );
    if (!accepted) return;
    await _run(() async {
      await _repository!.createDoubt(
        DoubtWriteRequest(
          courseId: course.text.trim(),
          title: title.text.trim(),
          body: body.text.trim(),
        ),
      );
      await _reload();
    });
  }

  Future<void> _openDoubt(DoubtThreadDto doubt) async {
    await _run(() async {
      final detail = await _repository!.getDoubt(doubt.id);
      if (!mounted) return;
      await showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        isScrollControlled: true,
        builder: (context) => SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: [
              Text(
                detail.thread.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ...detail.messages.map(
                (message) => ListTile(
                  title: Text(message.body),
                  subtitle: Text(
                    '${message.authorRole} • ${message.createdAt.toLocal()}',
                  ),
                ),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  _replyToDoubt(doubt.id);
                },
                child: const Text('Reply'),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await _run(() async {
                    if (doubt.status == 'resolved') {
                      await _repository!.reopenDoubt(doubt.id);
                    } else {
                      await _repository!.resolveDoubt(doubt.id);
                    }
                    await _reload();
                  });
                },
                child: Text(doubt.status == 'resolved' ? 'Reopen' : 'Resolve'),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future<void> _replyToDoubt(String doubtId) async {
    final body = TextEditingController();
    if (!await _formDialog(
      title: 'Reply',
      fields: [TextField(controller: body, minLines: 3, maxLines: 6)],
    )) {
      return;
    }
    await _run(() async {
      await _repository!.replyToDoubt(doubtId: doubtId, body: body.text);
      await _reload();
    });
  }

  Future<void> _downloadCourse(String enrollmentId) async {
    final service = context.read<OfflineLearningService?>();
    if (service == null) return;
    setState(() => _offlineStatus = 'Preparing secure offline download…');
    await _run(() async {
      final result = await service.downloadEnrollment(
        enrollmentId,
        onProgress: (received, total) {
          if (mounted) {
            setState(
              () => _offlineStatus = total == 0
                  ? 'Downloading…'
                  : 'Downloading ${(received * 100 / total).clamp(0, 100).round()}%',
            );
          }
        },
      );
      if (mounted) {
        setState(
          () =>
              _offlineStatus = '${result.downloadedFiles} files ready offline.',
        );
      }
    });
  }

  Future<void> _showSyllabus(String enrollmentId) async => _run(() async {
    final progress = await _repository!.getSyllabusProgress(enrollmentId);
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Syllabus progress'),
        content: SizedBox(
          width: 420,
          child: ListView(
            shrinkWrap: true,
            children: progress.items
                .map(
                  (item) => ListTile(
                    title: Text(item.title),
                    subtitle: Text(
                      '${item.completedUnits}/${item.totalUnits} units • ${item.delayedUnits} delayed',
                    ),
                    trailing: Text('${item.completionPercentage.round()}%'),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  });

  Future<void> _downloadAdmitCard(String id) async => _run(() async {
    final url = await _repository!.admitCardDownloadUrl(id);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw StateError('Could not open the signed admit-card URL.');
    }
  });

  Future<void> _verifyPublicRecord() async {
    final token = TextEditingController();
    var kind = 'admit';
    final accepted =
        await showDialog<bool>(
          context: context,
          builder: (context) => StatefulBuilder(
            builder: (context, setDialogState) => AlertDialog(
              title: const Text('Public verification'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButtonFormField<String>(
                    initialValue: kind,
                    items: const [
                      DropdownMenuItem(
                        value: 'admit',
                        child: Text('Admit card'),
                      ),
                      DropdownMenuItem(
                        value: 'student',
                        child: Text('Student identifier'),
                      ),
                    ],
                    onChanged: (value) => setDialogState(() => kind = value!),
                  ),
                  TextField(
                    controller: token,
                    decoration: const InputDecoration(
                      labelText: 'Verification token',
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Verify'),
                ),
              ],
            ),
          ),
        ) ??
        false;
    if (!accepted) return;
    await _run(() async {
      final result = kind == 'admit'
          ? (await _repository!.verifyAdmitCard(token.text)).studentName
          : (await _repository!.verifyStudentIdentifier(
              token.text,
            )).displayName;
      _message('Verified: $result');
    });
  }

  Future<void> _addSmsContact() async {
    final phone = TextEditingController(text: '+880');
    if (!await _formDialog(
      title: 'Add SMS contact',
      fields: [TextField(controller: phone, keyboardType: TextInputType.phone)],
    )) {
      return;
    }
    await _run(() async {
      await _repository!.createSmsContact(phone.text.trim());
      if (!mounted) return;
      final token = TextEditingController();
      if (await _formDialog(
        title: 'Verify SMS contact',
        fields: [
          TextField(
            controller: token,
            decoration: const InputDecoration(labelText: 'Verification token'),
          ),
        ],
      )) {
        await _repository!.verifySmsContact(token.text.trim());
      }
      await _reload();
    });
  }

  Future<bool> _formDialog({
    required String title,
    required List<Widget> fields,
  }) async =>
      await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: fields),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Continue'),
            ),
          ],
        ),
      ) ??
      false;

  Future<void> _run(Future<void> Function() operation) async {
    try {
      await operation();
    } catch (error) {
      _message('$error');
    }
  }

  void _message(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, this.trailing, this.action});
  final String title;
  final String? trailing;
  final Widget? action;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(4, 18, 4, 8),
    child: Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        if (trailing != null) Text(trailing!),
        ?action,
      ],
    ),
  );
}

class _EmptyCard extends StatelessWidget {
  const _EmptyCard(this.message);
  final String message;
  @override
  Widget build(BuildContext context) => Card(
    child: Padding(padding: const EdgeInsets.all(18), child: Text(message)),
  );
}
