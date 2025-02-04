import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final Widget icon;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        icon,
        text
      ],
    );
  }
}
