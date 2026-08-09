import 'package:flutter/material.dart';

class FloatingAnimation extends StatefulWidget {
  const FloatingAnimation({
    required this.child,
    this.distance = 8,
    this.duration = const Duration(milliseconds: 1800),
    this.rotate = .015,
    super.key,
  });

  final Widget child;
  final double distance;
  final Duration duration;
  final double rotate;

  @override
  State<FloatingAnimation> createState() => _FloatingAnimationState();
}

class _FloatingAnimationState extends State<FloatingAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _controller.stop();
      _controller.value = .5;
    } else if (!_controller.isAnimating) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _curve,
      child: widget.child,
      builder: (context, child) {
        final normalized = (_curve.value * 2) - 1;
        return Transform.translate(
          offset: Offset(0, normalized * widget.distance),
          child: Transform.rotate(
            angle: normalized * widget.rotate,
            child: child,
          ),
        );
      },
    );
  }
}
