import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/app_page.dart';
import 'package:edtech_application/shared/widgets/app_state_view.dart';
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
    if (course == null) {
      return _PaymentHistory(repository: context.read<StudentLmsRepository?>());
    }
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('payments.checkout'))),
      body: AppScrollablePage(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 124),
        children: [
          Text(
            context.l10n.tr('payments.orderSummary'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppSpacing.sm),
          _CourseSummary(course: course),
          const SizedBox(height: AppSpacing.xl),
          AppStatusBanner(
            icon: AppIcons.warning,
            title: context.l10n.tr('payments.devProvider'),
            message: context.l10n.tr('payments.devWarning'),
            tone: AppStateTone.warning,
          ),
          const SizedBox(height: AppSpacing.xl),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                children: [
                  _PriceRow(
                    label: context.l10n.tr('payments.coursePrice'),
                    value: course.displayPrice,
                  ),
                  const Divider(height: AppSpacing.xl),
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
                : const AppIcon(AppIcons.work, color: Colors.white),
            label: Text(context.l10n.tr('payments.createDevOrder')),
          ),
        ),
      ),
    );
  }

  Future<void> _createDevelopmentIntent(Course course) async {
    final repository = context.read<StudentLmsRepository?>();
    if (repository == null) {
      _message(context.l10n.tr('payments.apiUnavailable'));
      return;
    }
    setState(() => _processing = true);
    try {
      final order = await repository.createOrder(course.id);
      await repository.createPaymentIntent(order.id);
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          icon: const AppIcon(AppIcons.warning, size: 42),
          title: Text(context.l10n.tr('payments.devIntentCreated')),
          content: Text(context.l10n.tr('payments.devWarning')),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(context.l10n.tr('common.ok')),
            ),
          ],
        ),
      );
    } catch (_) {
      if (mounted) _message(context.l10n.tr('payments.apiUnavailable'));
    } finally {
      if (mounted) setState(() => _processing = false);
    }
  }

  void _message(String message) => ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(message)));
}

class _CourseSummary extends StatelessWidget {
  const _CourseSummary({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIconBadge(
              icon: AppIcons.school,
              size: 72,
              iconSize: 31,
              backgroundColor: colors.primaryContainer,
              foregroundColor: colors.onPrimaryContainer,
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    '${course.educationLevel} • ${course.subject}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PaymentHistory extends StatelessWidget {
  const _PaymentHistory({required this.repository});
  final StudentLmsRepository? repository;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(context.l10n.tr('payments.history'))),
    body: repository == null
        ? Center(
            child: AppStateView(
              icon: AppIcons.cloudOff,
              title: context.l10n.tr('payments.apiUnavailable'),
              message: context.l10n.tr('payments.apiUnavailable'),
              tone: AppStateTone.error,
            ),
          )
        : FutureBuilder<List<Map<String, dynamic>>>(
            future: repository!.listPayments(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: AppLoadingView());
              }
              if (snapshot.hasError) {
                return Center(
                  child: AppStateView(
                    icon: AppIcons.cloudOff,
                    title: context.l10n.tr('payments.apiUnavailable'),
                    message: context.l10n.tr('payments.apiUnavailable'),
                    tone: AppStateTone.error,
                  ),
                );
              }
              final items = snapshot.data ?? const [];
              if (items.isEmpty) {
                return Center(
                  child: AppStateView(
                    icon: AppIcons.work,
                    title: context.l10n.tr('payments.history'),
                    message: context.l10n.tr('payments.empty'),
                    compact: true,
                  ),
                );
              }
              return AppPage(
                safeTop: false,
                padding: EdgeInsets.zero,
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  itemCount: items.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, index) =>
                      _PaymentCard(item: items[index]),
                ),
              );
            },
          ),
  );
}

class _PaymentCard extends StatelessWidget {
  const _PaymentCard({required this.item});
  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      contentPadding: const EdgeInsets.all(AppSpacing.md),
      leading: const AppIconBadge(icon: AppIcons.work),
      title: Text(context.l10n.tr('payments.payment')),
      subtitle: Text(_status(context, item['status'])),
      trailing: Text(
        _amount(context, item['amount_minor'], item['currency']),
        style: const TextStyle(fontWeight: FontWeight.w800),
      ),
    ),
  );

  String _status(BuildContext context, Object? raw) =>
      switch ('$raw'.toLowerCase()) {
        'paid' ||
        'succeeded' ||
        'completed' => context.l10n.tr('payments.paymentCompleted'),
        'pending' ||
        'created' ||
        'requires_action' => context.l10n.tr('payments.paymentPending'),
        _ => context.l10n.tr('payments.paymentUnavailable'),
      };

  String _amount(BuildContext context, Object? rawAmount, Object? rawCurrency) {
    final minor = rawAmount is num ? rawAmount.toDouble() : 0;
    final currency = rawCurrency is String ? rawCurrency : '';
    final amount = (minor / 100).toStringAsFixed(minor % 100 == 0 ? 0 : 2);
    final localizedAmount = context.l10n.digits(amount);
    return currency == 'BDT'
        ? '৳$localizedAmount'
        : '$currency $localizedAmount';
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
  Widget build(BuildContext context) => Row(
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
