import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const CustomText(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Smalecircle extends StatelessWidget {
  final Color color;

  const Smalecircle({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 15,
      height: 15,
      decoration: new BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
