import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:flutter/material.dart';

/// Gives every workspace a predictable width and responsive page padding.
class AppPage extends StatelessWidget {
  const AppPage({
    required this.child,
    this.maxWidth = AppLayout.maxContentWidth,
    this.padding,
    this.safeTop = true,
    this.safeBottom = true,
    super.key,
  });

  final Widget child;
  final double maxWidth;
  final EdgeInsetsGeometry? padding;
  final bool safeTop;
  final bool safeBottom;

  @override
  Widget build(BuildContext context) => SafeArea(
    top: safeTop,
    bottom: safeBottom,
    child: Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: padding ?? AppLayout.pagePadding(context),
          child: child,
        ),
      ),
    ),
  );
}

class AppScrollablePage extends StatelessWidget {
  const AppScrollablePage({
    required this.children,
    this.controller,
    this.onRefresh,
    this.maxWidth = AppLayout.maxContentWidth,
    this.padding,
    this.physics,
    super.key,
  });

  final List<Widget> children;
  final ScrollController? controller;
  final Future<void> Function()? onRefresh;
  final double maxWidth;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    final list = ListView(
      controller: controller,
      physics: physics ?? const AlwaysScrollableScrollPhysics(),
      padding: padding ?? AppLayout.pagePadding(context),
      children: children,
    );
    final content = onRefresh == null
        ? list
        : RefreshIndicator(onRefresh: onRefresh!, child: list);
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: content,
        ),
      ),
    );
  }
}
