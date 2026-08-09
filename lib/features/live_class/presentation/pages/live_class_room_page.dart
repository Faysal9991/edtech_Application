import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LiveClassRoomPage extends StatefulWidget {
  const LiveClassRoomPage({this.liveClassId, super.key});

  final String? liveClassId;

  @override
  State<LiveClassRoomPage> createState() => _LiveClassRoomPageState();
}

class _LiveClassRoomPageState extends State<LiveClassRoomPage> {
  Future<LiveClassTokenResponse>? _tokenFuture;

  @override
  void initState() {
    super.initState();
    final repository = context.read<StudentLmsRepository?>();
    final id = widget.liveClassId;
    if (repository != null && id != null) {
      _tokenFuture = repository.getLiveClassToken(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.darkScaffold,
        foregroundColor: Colors.white,
        title: Text(context.l10n.tr('live.title')),
      ),
      body: FutureBuilder<LiveClassTokenResponse>(
        future: _tokenFuture,
        builder: (context, snapshot) {
          if (_tokenFuture == null) {
            return _RoomStatus(
              title: context.l10n.tr('live.joinFailed'),
              message: context.l10n.tr('live.unavailable'),
            );
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.green200),
            );
          }
          if (snapshot.hasError) {
            return _RoomStatus(
              title: context.l10n.tr('live.joinFailed'),
              message: '${snapshot.error}',
            );
          }
          final credential = snapshot.data!;
          return _RoomStatus(
            icon: Icons.verified_user_outlined,
            title: context.l10n.tr('live.roomReady'),
            message: context.l10n.tr(
              'live.secureCredential',
              args: {
                'url': credential.url,
                'expires': credential.expiresAt.toLocal(),
              },
            ),
          );
        },
      ),
    );
  }
}

class _RoomStatus extends StatelessWidget {
  const _RoomStatus({
    required this.message,
    required this.title,
    this.icon = Icons.videocam_off_outlined,
  });

  final String title;
  final String message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColors.green200, size: 64),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.darkTextSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
