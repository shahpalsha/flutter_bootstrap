import 'package:flutter/material.dart';
import 'bootstrap_breakpoints.dart';

class BootstrapBuilder extends StatelessWidget {
  final Widget Function(String breakpoint) builder;

  const BootstrapBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return builder(BootstrapBreakpoints.current(context));
  }
}