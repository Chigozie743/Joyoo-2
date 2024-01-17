import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    this.thickness,
    super.key});

  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: Color(0xFFA9A9A9),
    );
  }
}