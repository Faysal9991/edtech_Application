import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatesPage extends StatelessWidget {
  const CertificatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('certificates.title'))),
      body: state.isLoadingStudentData && state.certificates.isEmpty
          ? const Center(child: AppLoadingView())
          : state.studentDataError != null && state.certificates.isEmpty
          ? Center(
              child: AppStateView(
                icon: AppIcons.cloudOff,
                title: context.l10n.tr('certificates.title'),
                message: state.studentDataError!,
                actionLabel: context.l10n.tr('common.retry'),
                onAction: state.loadStudentData,
                tone: AppStateTone.error,
              ),
            )
          : state.certificates.isEmpty
          ? Center(
              child: AppStateView(
                icon: AppIcons.certificate,
                title: context.l10n.tr('certificates.title'),
                message: context.l10n.tr('certificates.empty'),
                compact: true,
              ),
            )
          : AppScrollablePage(
              onRefresh: state.loadStudentData,
              children: [
                if (state.studentDataError != null)
                  AppStatusBanner(
                    icon: AppIcons.warning,
                    message: state.studentDataError!,
                    tone: AppStateTone.warning,
                    actionLabel: context.l10n.tr('common.retry'),
                    onAction: state.loadStudentData,
                  ),
                if (state.studentDataError != null)
                  const SizedBox(height: AppSpacing.md),
                ...state.certificates.map(
                  (certificate) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                    child: _CertificateCard(certificate: certificate),
                  ),
                ),
              ],
            ),
    );
  }
}

class _CertificateCard extends StatefulWidget {
  const _CertificateCard({required this.certificate});
  final CertificateDto certificate;

  @override
  State<_CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<_CertificateCard> {
  bool _downloading = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.certificate;
    final issued = MaterialLocalizations.of(
      context,
    ).formatMediumDate(item.issuedAt.toLocal());
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIconBadge(
              icon: AppIcons.certificate,
              size: 56,
              iconSize: 28,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              foregroundColor: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.certificateNumber,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    issued,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            IconButton.filledTonal(
              tooltip: context.l10n.tr('certificates.download'),
              onPressed: _downloading ? null : _download,
              icon: _downloading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const AppIcon(AppIcons.arrowDown),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _download() async {
    final repository = context.read<StudentLmsRepository?>();
    if (repository == null) {
      _message(context.l10n.tr('certificates.downloadUnavailable'));
      return;
    }
    setState(() => _downloading = true);
    try {
      final url = await repository.certificateDownloadUrl(
        widget.certificate.id,
      );
      final opened = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!opened && mounted) {
        _message(context.l10n.tr('certificates.downloadUnavailable'));
      }
    } catch (_) {
      if (mounted) {
        _message(context.l10n.tr('certificates.downloadUnavailable'));
      }
    } finally {
      if (mounted) setState(() => _downloading = false);
    }
  }

  void _message(String message) => ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(message)));
}
