import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';

class LiveClassesPage extends StatefulWidget {
  const LiveClassesPage({super.key});

  @override
  State<LiveClassesPage> createState() => _LiveClassesPageState();
}

class _LiveClassesPageState extends State<LiveClassesPage> {
  final _liveClassId = TextEditingController();

  @override
  void dispose() {
    _liveClassId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('live.title'))),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            color: AppColors.green50,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.primary,
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: Text(context.l10n.tr('live.apiNotice'))),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            context.l10n.tr('live.testToken'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _liveClassId,
            decoration: InputDecoration(
              labelText: context.l10n.tr('live.id'),
              prefixIcon: const Icon(Icons.videocam_outlined),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: _join,
            icon: const Icon(Icons.login_rounded),
            label: Text(context.l10n.tr('live.joinToken')),
          ),
        ],
      ),
    );
  }

  void _join() {
    final id = _liveClassId.text.trim();
    if (id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(context.l10n.tr('live.idRequired'))),
      );
      return;
    }
    Navigator.pushNamed(context, AppRoutes.liveRoom, arguments: id);
  }
}
