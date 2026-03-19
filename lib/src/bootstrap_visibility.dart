import 'package:flutter/material.dart';
import 'bootstrap_breakpoints.dart';

class BootstrapVisibility extends StatelessWidget {
  final Widget child;
  final List<String> visibleOn;

  const BootstrapVisibility({
    super.key,
    required this.child,
    required this.visibleOn,
  });

  @override
  Widget build(BuildContext context) {
    String bp = BootstrapBreakpoints.current(context);

    if (visibleOn.contains(bp)) return child;

    return const SizedBox();
  }
}