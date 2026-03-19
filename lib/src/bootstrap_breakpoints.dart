import 'package:flutter/material.dart';

class BootstrapBreakpoints {
  static const xs = 0.0;
  static const sm = 576.0;
  static const md = 768.0;
  static const lg = 992.0;
  static const xl = 1200.0;

  static String current(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    if (w >= xl) return 'xl';
    if (w >= lg) return 'lg';
    if (w >= md) return 'md';
    if (w >= sm) return 'sm';
    return 'xs';
  }
}