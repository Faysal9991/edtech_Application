import 'package:flutter/material.dart';

class PressableScale extends StatefulWidget {
  const PressableScale({
    required this.child,
    this.pressedScale = .975,
    this.duration = const Duration(milliseconds: 120),
    super.key,
  });

  final Widget child;
  final double pressedScale;
  final Duration duration;

  @override
  State<PressableScale> createState() => _PressableScaleState();
}

class _PressableScaleState extends State<PressableScale> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final disableAnimations = MediaQuery.disableAnimationsOf(context);
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) => setState(() => _pressed = true),
      onPointerUp: (_) => setState(() => _pressed = false),
      onPointerCancel: (_) => setState(() => _pressed = false),
      child: AnimatedScale(
        scale: _pressed ? widget.pressedScale : 1,
        duration: disableAnimations ? Duration.zero : widget.duration,
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}
