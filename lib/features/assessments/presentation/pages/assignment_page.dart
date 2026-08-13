import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:edtech_application/core/network/expanded_api_dto.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({this.assignmentId, super.key});

  final String? assignmentId;

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  final _answer = TextEditingController();
  final List<_PickedAttachment> _attachments = [];
  StudentAssignmentDto? _assignment;
  CancelToken? _uploadCancellation;
  double? _uploadProgress;
  bool _submitting = false;
  bool _loadingDetails = true;
  bool _detailsUnavailable = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadAssignment());
  }

  @override
  void dispose() {
    _uploadCancellation?.cancel('Assignment page closed');
    _answer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final assignmentId = widget.assignmentId;
    if (assignmentId == null || assignmentId.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(context.l10n.tr('assignment.title'))),
        body: Center(
          child: AppStateView(
            icon: AppIcons.assignment,
            title: context.l10n.tr('assignment.title'),
            message: context.l10n.tr('assignment.apiReadyMissing'),
            tone: AppStateTone.info,
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('assignment.submission'))),
      body: AppScrollablePage(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 120),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const AppIconBadge(
                        icon: AppIcons.assignment,
                        size: 42,
                        iconSize: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _assignment?.title ??
                              context.l10n.tr('assignment.title'),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  if (_loadingDetails)
                    AppLoadingView(
                      label: context.l10n.tr('common.loading'),
                      compact: true,
                    )
                  else if (_detailsUnavailable)
                    AppStatusBanner(
                      icon: AppIcons.info,
                      message: context.l10n.tr('assignment.detailsMissing'),
                      tone: AppStateTone.info,
                    )
                  else ...[
                    const SizedBox(height: 8),
                    Text(
                      _assignment?.instructions.isNotEmpty == true
                          ? _assignment!.instructions
                          : context.l10n.tr('assignment.detailsMissing'),
                    ),
                    if (_assignment?.dueAt != null) ...[
                      const SizedBox(height: 8),
                      _DueDate(value: _assignment!.dueAt!),
                    ],
                    if (_assignment?.allowedFileTypes.isNotEmpty == true) ...[
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: _assignment!.allowedFileTypes
                            .map(
                              (type) => Chip(label: Text(type.toUpperCase())),
                            )
                            .toList(),
                      ),
                    ],
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            context.l10n.tr('assignment.answer'),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _answer,
            minLines: 7,
            maxLines: 12,
            maxLength: 5000,
            decoration: InputDecoration(
              hintText: context.l10n.tr('assignment.answerHint'),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: _submitting ? null : _pickFiles,
            icon: const AppIcon(AppIcons.add, size: 20),
            label: Text(context.l10n.tr('assignment.attach')),
          ),
          ..._attachments.asMap().entries.map(
            (entry) => Card(
              child: ListTile(
                leading: const AppIconBadge(
                  icon: AppIcons.clipboard,
                  size: 42,
                  iconSize: 20,
                ),
                title: Text(entry.value.file.name),
                subtitle: Text(
                  '${(entry.value.bytes.length / 1024).ceil()} KB • ${context.l10n.tr('assignment.uploadReady')}',
                ),
                trailing: IconButton(
                  onPressed: _submitting
                      ? null
                      : () => setState(() => _attachments.removeAt(entry.key)),
                  icon: const Icon(Icons.close_rounded),
                ),
              ),
            ),
          ),
          if (_uploadProgress != null) ...[
            const SizedBox(height: 10),
            LinearProgressIndicator(value: _uploadProgress),
            TextButton.icon(
              onPressed: () => _uploadCancellation?.cancel(),
              icon: const Icon(Icons.cancel_outlined),
              label: Text(context.l10n.tr('common.cancel')),
            ),
          ],
        ],
      ),
      bottomSheet: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: FilledButton.icon(
            onPressed: _submitting ? null : _submit,
            icon: _submitting
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.4,
                      color: Colors.white,
                    ),
                  )
                : const AppIcon(AppIcons.assignment, size: 20),
            label: Text(context.l10n.tr('assignment.submit')),
          ),
        ),
      ),
    );
  }

  Future<void> _loadAssignment() async {
    final id = widget.assignmentId;
    final repository = context.read<StudentLmsRepository?>();
    if (id == null || repository == null) return;
    try {
      final assignment = await repository.getAssignment(id);
      if (mounted) {
        setState(() {
          _assignment = assignment;
          _loadingDetails = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _loadingDetails = false;
          _detailsUnavailable = true;
        });
      }
    }
  }

  Future<void> _pickFiles() async {
    final types = XTypeGroup(
      label: context.l10n.tr('assignment.files'),
      extensions: ['pdf', 'png', 'jpg', 'jpeg', 'doc', 'docx'],
    );
    final files = await openFiles(acceptedTypeGroups: [types]);
    if (files.isEmpty) return;
    final picked = <_PickedAttachment>[];
    for (final file in files) {
      picked.add(
        _PickedAttachment(file: file, bytes: await file.readAsBytes()),
      );
    }
    if (mounted) {
      setState(() => _attachments.addAll(picked));
    }
  }

  Future<void> _submit() async {
    final id = widget.assignmentId;
    final repository = context.read<StudentLmsRepository?>();
    if (id == null || repository == null) return;
    if (_answer.text.trim().isEmpty && _attachments.isEmpty) {
      _message(context.l10n.tr('assignment.answerOrFile'));
      return;
    }
    final confirmed =
        await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(context.l10n.tr('assignment.confirmTitle')),
            content: Text(context.l10n.tr('assignment.confirmBody')),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(context.l10n.tr('assignment.goBack')),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(context.l10n.tr('common.submit')),
              ),
            ],
          ),
        ) ??
        false;
    if (!confirmed || !mounted) return;
    setState(() => _submitting = true);
    _uploadCancellation = CancelToken();
    try {
      final mediaIds = <String>[];
      for (final attachment in _attachments) {
        final assetId = await repository.uploadAssignmentFile(
          bytes: attachment.bytes,
          filename: attachment.file.name,
          contentType: _contentType(_extension(attachment.file.name)),
          allowedContentTypes: _assignment?.allowedFileTypes ?? const [],
          cancelToken: _uploadCancellation,
          onSendProgress: (sent, total) {
            if (mounted && total > 0) {
              setState(() => _uploadProgress = sent / total);
            }
          },
        );
        mediaIds.add(assetId);
      }
      final submissionId = await repository.createAssignmentSubmission(
        assignmentId: id,
        text: _answer.text,
        mediaAssetIds: mediaIds.isEmpty ? null : mediaIds,
      );
      await repository.submitAssignment(submissionId);
      if (!mounted) return;
      _message(context.l10n.tr('assignment.success'));
      Navigator.pop(context);
    } catch (_) {
      if (mounted) _message(context.l10n.tr('common.offline'));
    } finally {
      _uploadCancellation = null;
      if (mounted) {
        setState(() {
          _submitting = false;
          _uploadProgress = null;
        });
      }
    }
  }

  String _contentType(String? extension) => switch (extension?.toLowerCase()) {
    'pdf' => 'application/pdf',
    'png' => 'image/png',
    'jpg' || 'jpeg' => 'image/jpeg',
    'doc' => 'application/msword',
    'docx' =>
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    _ => 'application/octet-stream',
  };

  String? _extension(String name) {
    final index = name.lastIndexOf('.');
    return index < 0 || index == name.length - 1
        ? null
        : name.substring(index + 1);
  }

  void _message(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _DueDate extends StatelessWidget {
  const _DueDate({required this.value});

  final DateTime value;

  @override
  Widget build(BuildContext context) {
    final localized = MaterialLocalizations.of(context);
    final date = localized.formatMediumDate(value.toLocal());
    final time = localized.formatTimeOfDay(
      TimeOfDay.fromDateTime(value.toLocal()),
    );
    return Row(
      children: [
        const AppIcon(AppIcons.calendar, size: 17),
        const SizedBox(width: 6),
        Expanded(child: Text('$date • $time')),
      ],
    );
  }
}

class _PickedAttachment {
  const _PickedAttachment({required this.file, required this.bytes});

  final XFile file;
  final Uint8List bytes;
}
