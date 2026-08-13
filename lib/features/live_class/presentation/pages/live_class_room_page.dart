import 'dart:async';

import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/features/home/data/repositories/student_lms_repository.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:provider/provider.dart';

class LiveClassRoomPage extends StatefulWidget {
  const LiveClassRoomPage({this.liveClassId, super.key});

  final String? liveClassId;

  @override
  State<LiveClassRoomPage> createState() => _LiveClassRoomPageState();
}

class _LiveClassRoomPageState extends State<LiveClassRoomPage> {
  Room? _room;
  EventsListener<RoomEvent>? _listener;
  Timer? _credentialTimer;
  bool _connecting = true;
  bool _reconnecting = false;
  bool _leaving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _connect());
  }

  Future<void> _connect() async {
    final repository = context.read<StudentLmsRepository?>();
    final id = widget.liveClassId;
    if (repository == null || id == null || id.isEmpty) {
      setState(() {
        _connecting = false;
        _error = context.l10n.tr('live.unavailable');
      });
      return;
    }
    try {
      final credential = await repository.getLiveClassToken(id);
      if (credential.expiresAt.toUtc().isBefore(
        DateTime.now().toUtc().add(const Duration(seconds: 5)),
      )) {
        throw StateError('Live-class token expired before connection.');
      }

      final room = Room(
        roomOptions: const RoomOptions(adaptiveStream: true, dynacast: true),
      );
      final listener = room.createListener()
        ..on<RoomReconnectingEvent>((_) {
          if (mounted) setState(() => _reconnecting = true);
        })
        ..on<RoomReconnectedEvent>((_) {
          if (mounted) setState(() => _reconnecting = false);
        })
        ..on<RoomDisconnectedEvent>((_) {
          if (!_leaving) unawaited(_recoverExpiredConnection());
        })
        ..on<ParticipantEvent>((_) {
          if (mounted) setState(() {});
        })
        ..on<TrackSubscribedEvent>((_) {
          if (mounted) setState(() {});
        })
        ..on<TrackUnsubscribedEvent>((_) {
          if (mounted) setState(() {});
        });
      room.addListener(_roomChanged);
      await room.connect(
        credential.url,
        credential.token,
        connectOptions: const ConnectOptions(autoSubscribe: true),
      );

      if (!mounted) {
        await listener.dispose();
        await room.dispose();
        return;
      }
      await _disposeRoom();
      _room = room;
      _listener = listener;
      _scheduleCredentialRecovery(credential.expiresAt);
      setState(() {
        _connecting = false;
        _reconnecting = false;
        _error = null;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _connecting = false;
        _reconnecting = false;
        _error = '$error';
      });
    }
  }

  void _scheduleCredentialRecovery(DateTime expiresAt) {
    _credentialTimer?.cancel();
    final refreshAt = expiresAt.toUtc().subtract(const Duration(seconds: 30));
    final delay = refreshAt.difference(DateTime.now().toUtc());
    _credentialTimer = Timer(
      delay.isNegative ? Duration.zero : delay,
      _recoverExpiredConnection,
    );
  }

  Future<void> _recoverExpiredConnection() async {
    if (_leaving || _reconnecting || !mounted) return;
    setState(() => _reconnecting = true);
    await _connect();
  }

  void _roomChanged() {
    if (mounted) setState(() {});
  }

  Future<void> _disposeRoom() async {
    final room = _room;
    final listener = _listener;
    _room = null;
    _listener = null;
    if (room != null) room.removeListener(_roomChanged);
    await listener?.dispose();
    await room?.dispose();
  }

  @override
  void dispose() {
    _leaving = true;
    _credentialTimer?.cancel();
    unawaited(_disposeRoom());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackground,
        foregroundColor: AppColors.darkTextPrimary,
        title: Text(context.l10n.tr('live.title')),
      ),
      body: _body(),
      bottomNavigationBar: _room == null ? null : _controls(),
    );
  }

  Widget _body() {
    if (_connecting) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.darkSecondary),
      );
    }
    if (_error != null || _room == null) {
      return _RoomStatus(
        title: context.l10n.tr('live.joinFailed'),
        message: _error ?? context.l10n.tr('live.unavailable'),
        onRetry: _connect,
      );
    }

    final room = _room!;
    final participants = <Participant>[
      if (room.localParticipant != null) room.localParticipant!,
      ...room.remoteParticipants.values,
    ];
    return Stack(
      children: [
        GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: participants.length <= 1 ? 1 : 2,
            childAspectRatio: participants.length <= 1 ? 9 / 16 : 3 / 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: participants.length,
          itemBuilder: (_, index) =>
              _ParticipantTile(participant: participants[index]),
        ),
        if (_reconnecting)
          const Positioned(
            left: 16,
            right: 16,
            top: 10,
            child: MaterialBanner(
              content: Text('Reconnecting with a fresh secure token…'),
              actions: [SizedBox.shrink()],
            ),
          ),
      ],
    );
  }

  Widget _controls() {
    final participant = _room?.localParticipant;
    final microphoneEnabled = participant?.isMicrophoneEnabled() ?? false;
    final cameraEnabled = participant?.isCameraEnabled() ?? false;
    return SafeArea(
      top: false,
      child: ColoredBox(
        color: AppColors.darkSurface,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filledTonal(
                onPressed: participant == null
                    ? null
                    : () async {
                        try {
                          await participant.setMicrophoneEnabled(
                            !microphoneEnabled,
                          );
                        } catch (error) {
                          _showError(error);
                        }
                      },
                icon: Icon(
                  microphoneEnabled ? Icons.mic : Icons.mic_off_outlined,
                ),
              ),
              IconButton.filledTonal(
                onPressed: participant == null
                    ? null
                    : () async {
                        try {
                          await participant.setCameraEnabled(!cameraEnabled);
                        } catch (error) {
                          _showError(error);
                        }
                      },
                icon: Icon(
                  cameraEnabled ? Icons.videocam : Icons.videocam_off_outlined,
                ),
              ),
              IconButton.filled(
                style: IconButton.styleFrom(backgroundColor: AppColors.error),
                onPressed: () async {
                  _leaving = true;
                  await _room?.disconnect();
                  if (mounted) Navigator.pop(context);
                },
                icon: const Icon(Icons.call_end_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showError(Object error) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('$error')));
  }
}

class _ParticipantTile extends StatefulWidget {
  const _ParticipantTile({required this.participant});
  final Participant participant;

  @override
  State<_ParticipantTile> createState() => _ParticipantTileState();
}

class _ParticipantTileState extends State<_ParticipantTile> {
  @override
  void initState() {
    super.initState();
    widget.participant.addListener(_changed);
  }

  @override
  void didUpdateWidget(covariant _ParticipantTile oldWidget) {
    oldWidget.participant.removeListener(_changed);
    widget.participant.addListener(_changed);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.participant.removeListener(_changed);
    super.dispose();
  }

  void _changed() {
    if (mounted) setState(() {});
  }

  VideoTrack? get _videoTrack {
    for (final publication in widget.participant.videoTrackPublications) {
      final track = publication.track;
      if (!publication.muted && track is VideoTrack) return track;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final track = _videoTrack;
    final participant = widget.participant;
    final name = participant.name.isNotEmpty
        ? participant.name
        : participant.identity.toString();
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: ColoredBox(
        color: AppColors.darkSurface,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (track != null)
              VideoTrackRenderer(track)
            else
              const Icon(
                Icons.account_circle_rounded,
                color: AppColors.darkTextSecondary,
                size: 86,
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ColoredBox(
                color: Colors.black.withValues(alpha: .5),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        participant.isSpeaking ? Icons.graphic_eq : Icons.mic,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoomStatus extends StatelessWidget {
  const _RoomStatus({
    required this.message,
    required this.title,
    required this.onRetry,
  });

  final String title;
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.videocam_off_outlined,
              color: AppColors.error,
              size: 64,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.darkTextPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.darkTextSecondary),
            ),
            const SizedBox(height: 18),
            FilledButton.tonal(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
