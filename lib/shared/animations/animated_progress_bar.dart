import 'package:flutter/material.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    required this.value,
    this.color,
    this.backgroundColor,
    this.height = 7,
    this.duration = const Duration(milliseconds: 900),
    super.key,
  });

  final double value;
  final Color? color;
  final Color? backgroundColor;
  final double height;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final disableAnimations = MediaQuery.disableAnimationsOf(context);
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: value.clamp(0, 1)),
      duration: disableAnimations ? Duration.zero : duration,
      curve: Curves.easeOutCubic,
      builder: (context, animatedValue, _) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: LinearProgressIndicator(
            value: animatedValue,
            minHeight: height,
            color: color,
            backgroundColor: backgroundColor,
          ),
        );
      },
    );
  }
}
