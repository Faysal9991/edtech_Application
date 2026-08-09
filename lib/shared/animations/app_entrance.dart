import 'package:flutter/material.dart';

enum EntranceType {
  fadeIn,
  fadeInUp,
  fadeInDown,
  fadeInLeft,
  fadeInRight,
  scaleIn,
  popIn,
  rotateIn,
}

class AppEntrance extends StatefulWidget {
  const AppEntrance({
    required this.child,
    this.type = EntranceType.fadeInUp,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 620),
    this.distance = 28,
    this.curve = Curves.easeOutCubic,
    super.key,
  });

  const AppEntrance.fadeIn({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 520),
    this.curve = Curves.easeOut,
    super.key,
  }) : type = EntranceType.fadeIn,
       distance = 0;

  const AppEntrance.fadeInUp({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 620),
    this.distance = 28,
    this.curve = Curves.easeOutCubic,
    super.key,
  }) : type = EntranceType.fadeInUp;

  const AppEntrance.fadeInDown({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 620),
    this.distance = 28,
    this.curve = Curves.easeOutCubic,
    super.key,
  }) : type = EntranceType.fadeInDown;

  const AppEntrance.fadeInLeft({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 620),
    this.distance = 28,
    this.curve = Curves.easeOutCubic,
    super.key,
  }) : type = EntranceType.fadeInLeft;

  const AppEntrance.fadeInRight({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 620),
    this.distance = 28,
    this.curve = Curves.easeOutCubic,
    super.key,
  }) : type = EntranceType.fadeInRight;

  const AppEntrance.scaleIn({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 560),
    this.curve = Curves.easeOutBack,
    super.key,
  }) : type = EntranceType.scaleIn,
       distance = 0;

  const AppEntrance.popIn({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 680),
    this.curve = Curves.elasticOut,
    super.key,
  }) : type = EntranceType.popIn,
       distance = 0;

  const AppEntrance.rotateIn({
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 680),
    this.curve = Curves.easeOutBack,
    super.key,
  }) : type = EntranceType.rotateIn,
       distance = 0;

  final Widget child;
  final EntranceType type;
  final Duration delay;
  final Duration duration;
  final double distance;
  final Curve curve;

  @override
  State<AppEntrance> createState() => _AppEntranceState();
}

class _AppEntranceState extends State<AppEntrance>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool _started = false;

  @override
  void initState() {
    super.initState();
    final totalDuration = widget.delay + widget.duration;
    _controller = AnimationController(vsync: this, duration: totalDuration);
    final totalMilliseconds = totalDuration.inMilliseconds;
    final intervalStart = totalMilliseconds == 0
        ? 0.0
        : widget.delay.inMilliseconds / totalMilliseconds;
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Interval(intervalStart.clamp(0, 1), 1, curve: widget.curve),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _controller.value = 1;
      return;
    }
    if (!_started) {
      _started = true;
      _controller.forward();
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
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        final value = _animation.value;
        return Opacity(
          opacity: value.clamp(0, 1),
          child: Transform(
            alignment: Alignment.center,
            transform: _transformFor(value),
            child: child,
          ),
        );
      },
    );
  }

  Matrix4 _transformFor(double value) {
    final inverse = 1 - value;
    return switch (widget.type) {
      EntranceType.fadeIn => Matrix4.identity(),
      EntranceType.fadeInUp => Matrix4.translationValues(
        0,
        widget.distance * inverse,
        0,
      ),
      EntranceType.fadeInDown => Matrix4.translationValues(
        0,
        -widget.distance * inverse,
        0,
      ),
      EntranceType.fadeInLeft => Matrix4.translationValues(
        -widget.distance * inverse,
        0,
        0,
      ),
      EntranceType.fadeInRight => Matrix4.translationValues(
        widget.distance * inverse,
        0,
        0,
      ),
      EntranceType.scaleIn => Matrix4.diagonal3Values(
        .86 + (.14 * value),
        .86 + (.14 * value),
        1,
      ),
      EntranceType.popIn => Matrix4.diagonal3Values(
        .62 + (.38 * value),
        .62 + (.38 * value),
        1,
      ),
      EntranceType.rotateIn =>
        Matrix4.identity()
          ..rotateZ(-.12 * inverse)
          ..scaleByDouble(.82 + (.18 * value), .82 + (.18 * value), 1, 1),
    };
  }
}
