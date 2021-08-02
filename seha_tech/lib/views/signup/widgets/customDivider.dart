import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final dividerColor;
  const CustomDivider({
    Key? key,
    required this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      color: dividerColor,
    );
  }
}
