import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
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
          ? const Center(child: CircularProgressIndicator())
          : state.certificates.isEmpty
          ? Center(child: Text(context.l10n.tr('certificates.empty')))
          : RefreshIndicator(
              onRefresh: state.loadStudentData,
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: state.certificates.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) =>
                    _CertificateCard(certificate: state.certificates[index]),
              ),
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.darkSuccessBackground
                  : AppColors.successBackground,
              child: Icon(
                Icons.workspace_premium_rounded,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.darkSuccess
                    : AppColors.success,
                size: 30,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.certificateNumber,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${item.status} • ${context.l10n.digits(_date(item.issuedAt))}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            IconButton(
              tooltip: context.l10n.tr('certificates.download'),
              onPressed: _downloading ? null : _download,
              icon: _downloading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.download_rounded),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _download() async {
    final repository = context.read<StudentLmsRepository?>();
    if (repository == null) return;
    setState(() => _downloading = true);
    try {
      final url = await repository.certificateDownloadUrl(
        widget.certificate.id,
      );
      final opened = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!opened) throw Exception('URL open failed');
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.l10n.tr(
                'certificates.downloadFailed',
                args: {'error': error},
              ),
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _downloading = false);
    }
  }

  String _date(DateTime value) =>
      '${value.day.toString().padLeft(2, '0')}/${value.month.toString().padLeft(2, '0')}/${value.year}';
}
