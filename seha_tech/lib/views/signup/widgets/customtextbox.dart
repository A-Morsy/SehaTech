import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String message;
  final bool obscureText;
  final double width;
  final double height;

  final TextInputType keyboardType;

  const TextBox({
    Key? key,
    required this.message,
    required this.obscureText,
    required this.width,
    required this.height,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.purple)),
              hintText: message,
            )));
  }
}
