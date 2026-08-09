import 'dart:typed_data';

import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
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
  _PickedAttachment? _attachment;
  bool _submitting = false;

  @override
  void dispose() {
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
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.assignment_outlined,
                  size: 58,
                  color: AppColors.primary,
                ),
                SizedBox(height: 14),
                Text(
                  context.l10n.tr('assignment.apiReadyMissing'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('assignment.submission'))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
        children: [
          Card(
            color: AppColors.green50,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.tr('assignment.id'),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 6),
                  SelectableText(assignmentId),
                  const SizedBox(height: 8),
                  Text(context.l10n.tr('assignment.detailsMissing')),
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
          if (_attachment == null)
            OutlinedButton.icon(
              onPressed: _submitting ? null : _pickFile,
              icon: const Icon(Icons.attach_file_rounded),
              label: Text(context.l10n.tr('assignment.attach')),
            )
          else
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: AppColors.green50,
                  child: Icon(
                    Icons.insert_drive_file_outlined,
                    color: AppColors.primary,
                  ),
                ),
                title: Text(_attachment!.file.name),
                subtitle: Text(
                  '${(_attachment!.bytes.length / 1024).ceil()} KB • ${context.l10n.tr('assignment.uploadReady')}',
                ),
                trailing: IconButton(
                  onPressed: _submitting
                      ? null
                      : () => setState(() => _attachment = null),
                  icon: const Icon(Icons.close_rounded),
                ),
              ),
            ),
        ],
      ),
      bottomSheet: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: const Border(top: BorderSide(color: AppColors.border)),
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
                : const Icon(Icons.send_rounded),
            label: Text(context.l10n.tr('assignment.submit')),
          ),
        ),
      ),
    );
  }

  Future<void> _pickFile() async {
    final types = XTypeGroup(
      label: context.l10n.tr('assignment.files'),
      extensions: ['pdf', 'png', 'jpg', 'jpeg', 'doc', 'docx'],
    );
    final file = await openFile(acceptedTypeGroups: [types]);
    if (file == null) return;
    final bytes = await file.readAsBytes();
    if (mounted) {
      setState(() => _attachment = _PickedAttachment(file: file, bytes: bytes));
    }
  }

  Future<void> _submit() async {
    final id = widget.assignmentId;
    final repository = context.read<StudentLmsRepository?>();
    if (id == null || repository == null) return;
    if (_answer.text.trim().isEmpty && _attachment == null) {
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
    try {
      final mediaIds = <String>[];
      final attachment = _attachment;
      if (attachment != null) {
        final assetId = await repository.uploadAssignmentFile(
          bytes: attachment.bytes,
          filename: attachment.file.name,
          contentType: _contentType(_extension(attachment.file.name)),
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
    } catch (error) {
      if (mounted) _message('$error');
    } finally {
      if (mounted) setState(() => _submitting = false);
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

class _PickedAttachment {
  const _PickedAttachment({required this.file, required this.bytes});

  final XFile file;
  final Uint8List bytes;
}
