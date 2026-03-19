import 'package:flutter/material.dart';

class BootstrapRow extends StatelessWidget {
  final List<Widget> children;
  final double gutter;

  const BootstrapRow({
    super.key,
    required this.children,
    this.gutter = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: children
          .map(
            (e) => Padding(
          padding: EdgeInsets.all(gutter / 2),
          child: e,
        ),
      )
          .toList(),
    );
  }
}