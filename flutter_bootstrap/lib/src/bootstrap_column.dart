import 'package:flutter/material.dart';
import 'bootstrap_breakpoints.dart';

class BootstrapColumn extends StatelessWidget {
  final Widget child;

  final int? xs;
  final int? sm;
  final int? md;
  final int? lg;
  final int? xl;

  final int offset;
  final int order;
  final bool auto;

  const BootstrapColumn({
    super.key,
    required this.child,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.offset = 0,
    this.order = 0,
    this.auto = false,
  });

  int _size(BuildContext context) {
    String bp = BootstrapBreakpoints.current(context);

    if (bp == 'xl') return xl ?? lg ?? md ?? sm ?? xs ?? 12;
    if (bp == 'lg') return lg ?? md ?? sm ?? xs ?? 12;
    if (bp == 'md') return md ?? sm ?? xs ?? 12;
    if (bp == 'sm') return sm ?? xs ?? 12;

    return xs ?? 12;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (auto) {
      return Expanded(child: child);
    }

    double colWidth = width / 12 * _size(context);
    double marginLeft = width / 12 * offset;

    return Container(
      width: colWidth,
      margin: EdgeInsets.only(left: marginLeft),
      child: child,
    );
  }
}