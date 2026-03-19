import 'package:flutter/material.dart';
import 'bootstrap_breakpoints.dart';

class BootstrapContainer extends StatelessWidget {
  final Widget child;
  final bool fluid;
  final EdgeInsets padding;
  final Color? color;

  const BootstrapContainer({
    super.key,
    required this.child,
    this.fluid = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.color,
  });

  double _maxWidth(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    if (fluid) return w;

    if (w >= BootstrapBreakpoints.xl) return 1140;
    if (w >= BootstrapBreakpoints.lg) return 960;
    if (w >= BootstrapBreakpoints.md) return 720;
    if (w >= BootstrapBreakpoints.sm) return 540;

    return w;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: _maxWidth(context),
        padding: padding,
        color: color,
        child: child,
      ),
    );
  }
}