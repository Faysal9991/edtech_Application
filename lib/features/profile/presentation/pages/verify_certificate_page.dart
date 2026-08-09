import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyCertificatePage extends StatefulWidget {
  const VerifyCertificatePage({super.key});

  @override
  State<VerifyCertificatePage> createState() => _VerifyCertificatePageState();
}

class _VerifyCertificatePageState extends State<VerifyCertificatePage> {
  final _number = TextEditingController();
  CertificateVerificationDto? _result;
  String? _error;
  bool _loading = false;

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('profile.verifyCertificate'))),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: _number,
            decoration: InputDecoration(
              labelText: context.l10n.tr('certificates.number'),
              prefixIcon: const Icon(Icons.workspace_premium_outlined),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: _loading ? null : _verify,
            child: _loading
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.4,
                      color: Colors.white,
                    ),
                  )
                : Text(context.l10n.tr('certificates.verify')),
          ),
          if (_error != null) ...[
            const SizedBox(height: 18),
            Text(
              _error!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          if (_result != null) ...[
            const SizedBox(height: 24),
            _VerificationCard(result: _result!),
          ],
        ],
      ),
    );
  }

  Future<void> _verify() async {
    final number = _number.text.trim();
    final repository = context.read<StudentLmsRepository?>();
    if (number.isEmpty || repository == null) return;
    setState(() {
      _loading = true;
      _error = null;
      _result = null;
    });
    try {
      final result = await repository.verifyCertificate(number);
      if (mounted) setState(() => _result = result);
    } catch (error) {
      if (mounted) setState(() => _error = '$error');
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
    return Card(
      color: result.valid ? AppColors.green50 : null,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Icon(
              result.valid ? Icons.verified_rounded : Icons.gpp_bad_outlined,
              size: 58,
              color: result.valid
                  ? AppColors.primary
                  : Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 12),
            Text(
              result.valid
                  ? context.l10n.tr('certificates.valid')
                  : context.l10n.tr('certificates.invalid'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Divider(height: 28),
            _row(context.l10n.tr('certificates.student'), result.studentName),
            _row(context.l10n.tr('certificates.course'), result.courseTitle),
            _row(
              context.l10n.tr('certificates.organization'),
              result.organizationName,
            ),
            _row(
              context.l10n.tr('certificates.number'),
              result.certificateNumber,
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 100, child: Text(label)),
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
