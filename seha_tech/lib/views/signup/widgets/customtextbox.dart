import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {

  final  String message ;
  final  bool obscureText ;

  const TextBox({Key? key,required this.message, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 40,
        child: TextField(
            obscureText: obscureText ,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: message)
                )
                );
  }
}
