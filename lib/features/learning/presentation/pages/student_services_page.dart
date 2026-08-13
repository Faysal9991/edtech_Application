import 'dart:async';

import 'package:edtech_application/core/network/mobile_api_dto.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/features/learning/data/services/offline_learning_service.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
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
        _error = context.l10n.tr('studentServices.previewUnavailable');
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
      _error = errors.isEmpty
          ? null
          : context.l10n.tr('studentServices.partialFailure');
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.tr('studentServices.title')),
          bottom: TabBar(
            tabs: [
              Tab(text: context.l10n.tr('studentServices.tabAttendance')),
              Tab(text: context.l10n.tr('studentServices.tabStudy')),
              Tab(text: context.l10n.tr('studentServices.tabAccess')),
            ],
          ),
          actions: [
            IconButton(
              onPressed: _loading ? null : _reload,
              icon: const AppIcon(AppIcons.refresh),
            ),
          ],
        ),
        body: _loading
            ? const Center(child: AppLoadingView())
            : Column(
                children: [
                  if (_error != null)
                    Padding(
                      padding: const EdgeInsets.all(AppSpacing.sm),
                      child: AppStatusBanner(
                        icon: AppIcons.warning,
                        message: _error!,
                        tone: AppStateTone.warning,
                        actionLabel: context.l10n.tr('studentServices.retry'),
                        onAction: _reload,
                      ),
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

  Widget _attendanceTab() => AppPage(
    padding: EdgeInsets.zero,
    child: RefreshIndicator(
      onRefresh: _reload,
      child: ListView(
        padding: AppLayout.pagePadding(context),
        children: [
          FilledButton.icon(
            onPressed: _checkIn,
            icon: const AppIcon(AppIcons.checklist, color: Colors.white),
            label: Text(context.l10n.tr('studentServices.enterAttendanceCode')),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            context.l10n.tr('studentServices.attendanceHint'),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          if (_attendance.isEmpty)
            _EmptyCard(
              icon: AppIcons.attendance,
              message: context.l10n.tr('studentServices.noAttendance'),
            )
          else
            ..._attendance.map(
              (record) => Card(
                child: ListTile(
                  leading: AppIconBadge(
                    icon: record.status == 'present'
                        ? AppIcons.check
                        : AppIcons.attendance,
                  ),
                  title: Text(_attendanceLabel(record.status)),
                  subtitle: Text(_dateTime(record.markedAt)),
                  trailing: TextButton(
                    onPressed: () => _requestCorrection(record),
                    child: Text(context.l10n.tr('studentServices.correct')),
                  ),
                ),
              ),
            ),
        ],
      ),
    ),
  );

  Widget _studyTab() => AppPage(
    padding: EdgeInsets.zero,
    child: RefreshIndicator(
      onRefresh: _reload,
      child: ListView(
        padding: AppLayout.pagePadding(context),
        children: [
          _SectionHeader(
            title: context.l10n.tr('studentServices.weakTopics'),
            trailing: context.l10n.tr(
              'studentServices.masteryRecords',
              args: {'count': context.l10n.number(_mastery.length)},
            ),
          ),
          if (_weakTopics.isEmpty)
            _EmptyCard(
              icon: AppIcons.analytics,
              message: context.l10n.tr('studentServices.noWeakTopics'),
            )
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
          _SectionHeader(
            title: context.l10n.tr('studentServices.studyTasks'),
            trailing: context.l10n.tr(
              'studentServices.streakDays',
              args: {'count': context.l10n.number(_streak)},
            ),
          ),
          if (_tasks.isEmpty)
            _EmptyCard(
              icon: AppIcons.task,
              message: context.l10n.tr('studentServices.noTasks'),
            )
          else
            ..._tasks.map(
              (task) => Card(
                child: ListTile(
                  title: Text(task.title),
                  subtitle: Text(_dateTime(task.dueAt)),
                  trailing: PopupMenuButton<String>(
                    onSelected: (value) => value == 'complete'
                        ? _completeTask(task)
                        : _rescheduleTask(task),
                    itemBuilder: (_) => [
                      PopupMenuItem(
                        value: 'complete',
                        child: Text(
                          context.l10n.tr('studentServices.complete'),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'reschedule',
                        child: Text(
                          context.l10n.tr('studentServices.reschedule'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          _SectionHeader(
            title: context.l10n.tr('studentServices.goals'),
            action: IconButton(
              onPressed: _createGoal,
              icon: const AppIcon(AppIcons.add),
            ),
          ),
          if (_goals.isEmpty)
            _EmptyCard(
              icon: AppIcons.progress,
              message: context.l10n.tr('studentServices.noGoals'),
            )
          else
            ..._goals.map(
              (goal) => Card(
                child: ListTile(
                  title: Text(goal.title),
                  subtitle: Text(
                    context.l10n.tr('studentServices.weeklyTarget'),
                  ),
                  trailing: Text(goal.targetValue.canonical),
                ),
              ),
            ),
          _SectionHeader(
            title: context.l10n.tr('studentServices.doubts'),
            action: IconButton(
              onPressed: _createDoubt,
              icon: const AppIcon(AppIcons.add),
            ),
          ),
          if (_doubts.isEmpty)
            _EmptyCard(
              icon: AppIcons.help,
              message: context.l10n.tr('studentServices.noDoubts'),
            )
          else
            ..._doubts.map(
              (doubt) => Card(
                child: ListTile(
                  onTap: () => _openDoubt(doubt),
                  title: Text(doubt.title),
                  subtitle: Text(_doubtLabel(doubt.status)),
                  trailing: const AppIcon(AppIcons.arrowRight),
                ),
              ),
            ),
        ],
      ),
    ),
  );

  Widget _accessTab() {
    final enrollments = context.watch<StudentLmsController>().enrollments;
    return AppPage(
      padding: EdgeInsets.zero,
      child: RefreshIndicator(
        onRefresh: _reload,
        child: ListView(
          padding: AppLayout.pagePadding(context),
          children: [
            _SectionHeader(
              title: context.l10n.tr('studentServices.offlineAndSyllabus'),
            ),
            if (_offlineStatus != null)
              Card(child: ListTile(title: Text(_offlineStatus!))),
            ...enrollments
                .where((course) => course.enrollmentId != null)
                .map(
                  (course) => Card(
                    child: ListTile(
                      title: Text(course.title),
                      subtitle: Text(
                        context.l10n.tr(
                          'studentServices.availableLearningPlan',
                        ),
                      ),
                      trailing: PopupMenuButton<String>(
                        onSelected: (value) => value == 'download'
                            ? _downloadCourse(course.enrollmentId!)
                            : _showSyllabus(course.enrollmentId!),
                        itemBuilder: (_) => [
                          PopupMenuItem(
                            value: 'download',
                            child: Text(
                              context.l10n.tr(
                                'studentServices.downloadOffline',
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'syllabus',
                            child: Text(
                              context.l10n.tr(
                                'studentServices.syllabusProgress',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            _SectionHeader(
              title: context.l10n.tr('studentServices.admitCards'),
            ),
            if (_admitCards.isEmpty)
              _EmptyCard(
                icon: AppIcons.certificate,
                message: context.l10n.tr('studentServices.noAdmitCards'),
              )
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
                      icon: const AppIcon(AppIcons.arrowDown),
                    ),
                  ),
                ),
              ),
            OutlinedButton.icon(
              onPressed: _verifyPublicRecord,
              icon: const AppIcon(AppIcons.verified),
              label: Text(context.l10n.tr('studentServices.verifyRecord')),
            ),
            _SectionHeader(
              title: context.l10n.tr('studentServices.smsContacts'),
            ),
            ..._smsContacts.map(
              (contact) => Card(
                child: ListTile(
                  title: Text(
                    '${contact.countryCode} •••• ${contact.lastFour}',
                  ),
                  subtitle: Text(_smsStatusLabel(contact.status)),
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: _addSmsContact,
              icon: const AppIcon(AppIcons.notification),
              label: Text(context.l10n.tr('studentServices.addSmsContact')),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _checkIn() async {
    final session = TextEditingController();
    final code = TextEditingController();
    final accepted = await _formDialog(
      title: context.l10n.tr('studentServices.attendanceCheckIn'),
      fields: [
        TextField(
          controller: session,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: context.l10n.tr('studentServices.sessionReference'),
          ),
        ),
        TextField(
          controller: code,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            labelText: context.l10n.tr('studentServices.attendanceCode'),
          ),
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
              title: Text(context.l10n.tr('studentServices.requestCorrection')),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButtonFormField<String>(
                    initialValue: requestedStatus,
                    items: [
                      DropdownMenuItem(
                        value: 'present',
                        child: Text(context.l10n.tr('studentServices.present')),
                      ),
                      DropdownMenuItem(
                        value: 'absent',
                        child: Text(context.l10n.tr('studentServices.absent')),
                      ),
                      DropdownMenuItem(
                        value: 'late',
                        child: Text(context.l10n.tr('studentServices.late')),
                      ),
                      DropdownMenuItem(
                        value: 'excused',
                        child: Text(context.l10n.tr('studentServices.excused')),
                      ),
                    ],
                    onChanged: (value) =>
                        setDialogState(() => requestedStatus = value!),
                  ),
                  TextField(
                    controller: reason,
                    decoration: InputDecoration(
                      labelText: context.l10n.tr('studentServices.reason'),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(context.l10n.tr('common.cancel')),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(context.l10n.tr('studentServices.send')),
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
      title: context.l10n.tr('studentServices.createGoal'),
      fields: [
        TextField(
          controller: title,
          decoration: InputDecoration(
            labelText: context.l10n.tr('studentServices.goalTitle'),
          ),
        ),
        TextField(
          controller: target,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: context.l10n.tr('studentServices.taskTarget'),
          ),
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
    final courses = context.read<StudentLmsController>().enrollments;
    if (courses.isEmpty) {
      _message(context.l10n.tr('studentServices.joinCourseFirst'));
      return;
    }
    var courseId = courses.first.id;
    final title = TextEditingController();
    final body = TextEditingController();
    final accepted =
        await showDialog<bool>(
          context: context,
          builder: (dialogContext) => StatefulBuilder(
            builder: (context, setDialogState) => AlertDialog(
              title: Text(context.l10n.tr('studentServices.askDoubt')),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonFormField<String>(
                      initialValue: courseId,
                      decoration: InputDecoration(
                        labelText: context.l10n.tr('studentServices.course'),
                      ),
                      items: courses
                          .map(
                            (course) => DropdownMenuItem(
                              value: course.id,
                              child: Text(course.title),
                            ),
                          )
                          .toList(),
                      onChanged: (value) =>
                          setDialogState(() => courseId = value ?? courseId),
                    ),
                    TextField(
                      controller: title,
                      decoration: InputDecoration(
                        labelText: context.l10n.tr('studentServices.goalTitle'),
                      ),
                    ),
                    TextField(
                      controller: body,
                      minLines: 3,
                      maxLines: 6,
                      decoration: InputDecoration(
                        labelText: context.l10n.tr('studentServices.question'),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(context.l10n.tr('common.cancel')),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(context.l10n.tr('studentServices.continue')),
                ),
              ],
            ),
          ),
        ) ??
        false;
    if (!accepted) return;
    await _run(() async {
      await _repository!.createDoubt(
        DoubtWriteRequest(
          courseId: courseId,
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
                  subtitle: Text(_dateTime(message.createdAt)),
                ),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  _replyToDoubt(doubt.id);
                },
                child: Text(context.l10n.tr('studentServices.reply')),
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
                child: Text(
                  doubt.status == 'resolved'
                      ? context.l10n.tr('studentServices.reopen')
                      : context.l10n.tr('studentServices.resolve'),
                ),
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
      title: context.l10n.tr('studentServices.reply'),
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
    setState(
      () =>
          _offlineStatus = context.l10n.tr('studentServices.preparingDownload'),
    );
    await _run(() async {
      final result = await service.downloadEnrollment(
        enrollmentId,
        onProgress: (received, total) {
          if (mounted) {
            setState(
              () => _offlineStatus = total == 0
                  ? context.l10n.tr('studentServices.downloading')
                  : context.l10n.tr(
                      'studentServices.downloadingPercent',
                      args: {
                        'percent': context.l10n.percent(
                          (received * 100 / total).clamp(0, 100).round(),
                        ),
                      },
                    ),
            );
          }
        },
      );
      if (mounted) {
        setState(
          () => _offlineStatus = context.l10n.tr(
            'studentServices.filesReady',
            args: {'count': context.l10n.number(result.downloadedFiles)},
          ),
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
        title: Text(context.l10n.tr('studentServices.syllabusProgress')),
        content: SizedBox(
          width: 420,
          child: ListView(
            shrinkWrap: true,
            children: progress.items
                .map(
                  (item) => ListTile(
                    title: Text(item.title),
                    subtitle: Text(
                      context.l10n.tr(
                        'studentServices.syllabusSummary',
                        args: {
                          'completed': context.l10n.number(item.completedUnits),
                          'total': context.l10n.number(item.totalUnits),
                          'delayed': context.l10n.number(item.delayedUnits),
                        },
                      ),
                    ),
                    trailing: Text(
                      context.l10n.percent(item.completionPercentage.round()),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  });

  Future<void> _downloadAdmitCard(String id) async {
    final unavailable = context.l10n.tr('certificates.downloadUnavailable');
    await _run(() async {
      final url = await _repository!.admitCardDownloadUrl(id);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw StateError(unavailable);
      }
    });
  }

  Future<void> _verifyPublicRecord() async {
    final token = TextEditingController();
    var kind = 'admit';
    final noMatch = context.l10n.tr('studentServices.noMatchingRecord');
    final verified = context.l10n.tr('studentServices.recordVerified');
    final accepted =
        await showDialog<bool>(
          context: context,
          builder: (context) => StatefulBuilder(
            builder: (context, setDialogState) => AlertDialog(
              title: Text(
                context.l10n.tr('studentServices.publicVerification'),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButtonFormField<String>(
                    initialValue: kind,
                    items: [
                      DropdownMenuItem(
                        value: 'admit',
                        child: Text(
                          context.l10n.tr('studentServices.admitCard'),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'student',
                        child: Text(
                          context.l10n.tr('studentServices.studentIdentifier'),
                        ),
                      ),
                    ],
                    onChanged: (value) => setDialogState(() => kind = value!),
                  ),
                  TextField(
                    controller: token,
                    decoration: InputDecoration(
                      labelText: context.l10n.tr(
                        'studentServices.verificationToken',
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(context.l10n.tr('common.cancel')),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(context.l10n.tr('studentServices.verify')),
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
      _message(result.isEmpty ? noMatch : verified);
    });
  }

  Future<void> _addSmsContact() async {
    final phone = TextEditingController(text: '+880');
    if (!await _formDialog(
      title: context.l10n.tr('studentServices.addSms'),
      fields: [TextField(controller: phone, keyboardType: TextInputType.phone)],
    )) {
      return;
    }
    await _run(() async {
      await _repository!.createSmsContact(phone.text.trim());
      if (!mounted) return;
      final token = TextEditingController();
      if (await _formDialog(
        title: context.l10n.tr('studentServices.verifySms'),
        fields: [
          TextField(
            controller: token,
            decoration: InputDecoration(
              labelText: context.l10n.tr('studentServices.verificationToken'),
            ),
          ),
        ],
      )) {
        await _repository!.verifySmsContact(token.text.trim());
      }
      if (!mounted) return;
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
              child: Text(context.l10n.tr('common.cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(context.l10n.tr('studentServices.continue')),
            ),
          ],
        ),
      ) ??
      false;

  Future<void> _run(Future<void> Function() operation) async {
    try {
      await operation();
    } catch (_) {
      if (!mounted) return;
      _message(context.l10n.tr('studentServices.operationFailed'));
    }
  }

  void _message(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  String _dateTime(DateTime value) {
    final local = value.toLocal();
    final material = MaterialLocalizations.of(context);
    return '${material.formatMediumDate(local)} • '
        '${material.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
  }

  String _attendanceLabel(String status) => switch (status.toLowerCase()) {
    'present' => context.l10n.tr('studentServices.present'),
    'absent' => context.l10n.tr('studentServices.absent'),
    'late' => context.l10n.tr('studentServices.late'),
    'excused' => context.l10n.tr('studentServices.excused'),
    _ => context.l10n.tr('studentServices.attendanceUpdated'),
  };

  String _doubtLabel(String status) => switch (status.toLowerCase()) {
    'resolved' => context.l10n.tr('studentServices.resolved'),
    'open' => context.l10n.tr('studentServices.open'),
    _ => context.l10n.tr('studentServices.inProgress'),
  };

  String _smsStatusLabel(String status) => switch (status.toLowerCase()) {
    'verified' ||
    'active' => context.l10n.tr('studentServices.contactVerified'),
    'pending' => context.l10n.tr('studentServices.verificationPending'),
    _ => context.l10n.tr('studentServices.contactUnavailable'),
  };
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
  const _EmptyCard({required this.icon, required this.message});
  final List<List<dynamic>> icon;
  final String message;
  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          AppIconBadge(icon: icon),
          const SizedBox(width: AppSpacing.sm),
          Expanded(child: Text(message)),
        ],
      ),
    ),
  );
}
