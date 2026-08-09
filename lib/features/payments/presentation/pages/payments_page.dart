import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({this.course, super.key});

  final Course? course;

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  bool _processing = false;

  @override
  Widget build(BuildContext context) {
    final course = widget.course;
    if (course == null) return _PaymentHistory(repository: context.read());
    final colors = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('payments.checkout'))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
        children: [
          Text(
            context.l10n.tr('payments.orderSummary'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 84,
                    height: 72,
                    decoration: BoxDecoration(
                      color: colors.primaryContainer,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(
                      Icons.school_rounded,
                      color: colors.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 5),
                        Text('${course.educationLevel} • ${course.subject}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Card(
            color: isDark
                ? AppColors.darkWarningBackground
                : AppColors.warningBackground,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.science_outlined,
                    color: isDark ? AppColors.darkWarning : AppColors.warning,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.tr('payments.devProvider'),
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 5),
                        Text(context.l10n.tr('payments.devWarning')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  _PriceRow(
                    label: context.l10n.tr('payments.coursePrice'),
                    value: course.displayPrice,
                  ),
                  const Divider(height: 24),
                  _PriceRow(
                    label: context.l10n.tr('payments.total'),
                    value: course.displayPrice,
                    strong: true,
                  ),
                ],
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
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: FilledButton.icon(
            onPressed: _processing
                ? null
                : () => _createDevelopmentIntent(course),
            icon: _processing
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.4,
                      color: Colors.white,
                    ),
                  )
                : const Icon(Icons.receipt_long_rounded),
            label: Text(context.l10n.tr('payments.createDevOrder')),
          ),
        ),
      ),
    );
  }

  Future<void> _createDevelopmentIntent(Course course) async {
    final repository = context.read<StudentLmsRepository?>();
    if (repository == null) return;
    setState(() => _processing = true);
    try {
      final order = await repository.createOrder(course.id);
      await repository.createPaymentIntent(order.id);
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(Icons.receipt_long_rounded, size: 48),
          title: Text(context.l10n.tr('payments.devIntentCreated')),
          content: Text(
            context.l10n.tr(
              'payments.intentDetails',
              args: {'order': order.id, 'status': order.status},
            ),
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: Text(context.l10n.tr('common.ok')),
            ),
          ],
        ),
      );
    } catch (error) {
      if (mounted) _message('$error');
    } finally {
      if (mounted) setState(() => _processing = false);
    }
  }

  void _message(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _PaymentHistory extends StatelessWidget {
  const _PaymentHistory({required this.repository});

  final StudentLmsRepository? repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('payments.history'))),
      body: repository == null
          ? Center(child: Text(context.l10n.tr('payments.apiUnavailable')))
          : FutureBuilder<List<Map<String, dynamic>>>(
              future: repository!.listPayments(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('${snapshot.error}'));
                }
                final items = snapshot.data ?? const [];
                if (items.isEmpty) {
                  return Center(child: Text(context.l10n.tr('payments.empty')));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.receipt_long_outlined),
                        title: Text(
                          '${item['status'] ?? context.l10n.tr('payments.payment')}',
                        ),
                        subtitle: Text('${item['id'] ?? ''}'),
                        trailing: Text(
                          _amount(item['amount_minor'], item['currency']),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }

  String _amount(Object? rawAmount, Object? rawCurrency) {
    final minor = rawAmount is num ? rawAmount.toDouble() : 0;
    final currency = rawCurrency is String ? rawCurrency : '';
    final amount = (minor / 100).toStringAsFixed(minor % 100 == 0 ? 0 : 2);
    return currency == 'BDT' ? '৳$amount' : '$currency $amount';
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow({
    required this.label,
    required this.value,
    this.strong = false,
  });

  final String label;
  final String value;
  final bool strong;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(fontWeight: strong ? FontWeight.w800 : null),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: strong ? AppColors.primary : null,
            fontSize: strong ? 18 : null,
            fontWeight: strong ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
