import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyCertificatePage extends StatefulWidget {
  const VerifyCertificatePage({super.key});

  @override
  State<VerifyCertificatePage> createState() => _VerifyCertificatePageState();
}

class _VerifyCertificatePageState extends State<VerifyCertificatePage> {
  final _formKey = GlobalKey<FormState>();
  final _number = TextEditingController();
  CertificateVerificationDto? _result;
  bool _failed = false;
  bool _loading = false;

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(context.l10n.tr('profile.verifyCertificate'))),
    body: AppScrollablePage(
      maxWidth: 620,
      children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTextField(
                controller: _number,
                label: context.l10n.tr('certificates.number'),
                hint: context.l10n.tr('certificates.number'),
                prefixAppIcon: AppIcons.certificate,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _verify(),
                validator: (value) => (value?.trim().isEmpty ?? true)
                    ? context.l10n.tr('certificates.number')
                    : null,
              ),
              const SizedBox(height: AppSpacing.md),
              FilledButton.icon(
                onPressed: _loading ? null : _verify,
                icon: _loading
                    ? const SizedBox.square(
                        dimension: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.4,
                          color: Colors.white,
                        ),
                      )
                    : const AppIcon(AppIcons.verified, color: Colors.white),
                label: Text(context.l10n.tr('certificates.verify')),
              ),
            ],
          ),
        ),
        if (_failed) ...[
          const SizedBox(height: AppSpacing.lg),
          AppStateView(
            icon: AppIcons.cloudOff,
            title: context.l10n.tr('certificates.title'),
            message: context.l10n.tr('certificates.verifyFailed'),
            actionLabel: context.l10n.tr('common.retry'),
            onAction: _verify,
            compact: true,
            tone: AppStateTone.error,
          ),
        ],
        if (_result != null) ...[
          const SizedBox(height: AppSpacing.xl),
          _VerificationCard(result: _result!),
        ],
      ],
    ),
  );

  Future<void> _verify() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final repository = context.read<StudentLmsRepository?>();
    if (repository == null) {
      setState(() => _failed = true);
      return;
    }
    setState(() {
      _loading = true;
      _failed = false;
      _result = null;
    });
    try {
      final result = await repository.verifyCertificate(_number.text.trim());
      if (mounted) setState(() => _result = result);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }
}

class _VerificationCard extends StatelessWidget {
  const _VerificationCard({required this.result});
  final CertificateVerificationDto result;

  @override
  Widget build(BuildContext context) {
    final icon = result.valid ? AppIcons.verified : AppIcons.error;
    final title = result.valid
        ? context.l10n.tr('certificates.valid')
        : context.l10n.tr('certificates.invalid');
    return Card(
      color: result.valid
          ? Theme.of(context).colorScheme.secondaryContainer
          : Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            AppIconBadge(
              icon: icon,
              size: 64,
              iconSize: 31,
              backgroundColor: result.valid
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.errorContainer,
              foregroundColor: result.valid
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: AppSpacing.lg),
            _DetailRow(
              label: context.l10n.tr('certificates.student'),
              value: result.studentName,
            ),
            _DetailRow(
              label: context.l10n.tr('certificates.course'),
              value: result.courseTitle,
            ),
            _DetailRow(
              label: context.l10n.tr('certificates.organization'),
              value: result.organizationName,
            ),
            _DetailRow(
              label: context.l10n.tr('certificates.number'),
              value: result.certificateNumber,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
    this.isLast = false,
  });
  final String label;
  final String value;
  final bool isLast;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: isLast ? 0 : AppSpacing.sm),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 112,
          child: Text(label, style: Theme.of(context).textTheme.bodySmall),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ),
  );
}
