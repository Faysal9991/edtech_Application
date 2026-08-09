import 'package:edtech_application/shared/animations/app_entrance.dart';
import 'package:flutter/material.dart';

class StaggeredAnimation extends StatelessWidget {
  const StaggeredAnimation({
    required this.index,
    required this.child,
    this.type = EntranceType.fadeInUp,
    this.initialDelay = const Duration(milliseconds: 80),
    this.step = const Duration(milliseconds: 75),
    this.maxDelay = const Duration(milliseconds: 650),
    super.key,
  });

  final int index;
  final Widget child;
  final EntranceType type;
  final Duration initialDelay;
  final Duration step;
  final Duration maxDelay;

  @override
  Widget build(BuildContext context) {
    final calculated = initialDelay + (step * index);
    final delay = calculated > maxDelay ? maxDelay : calculated;
    return AppEntrance(type: type, delay: delay, child: child);
  }
}
