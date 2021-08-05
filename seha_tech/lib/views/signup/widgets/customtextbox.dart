import 'package:flutter/material.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';

// ignore: must_be_immutable
class TextBox extends StatefulWidget {
  String message;
  bool obscureText;
  double width;
  double height;

  TextInputType keyboardType;
  TextEditingController myController;

  VoidCallback callBackMethod ;

TextBox({
    Key? key,
    required this.message,
    required this.obscureText,
    required this.width,
    required this.height,
    required this.keyboardType,
    required this.myController,
    required this.callBackMethod
  }) : super(key: key);

  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: widget.height,
        child: TextField(
            controller: widget.myController,
            onChanged: (var value) {

              signUpModel.setStringValue = value ;
              widget.callBackMethod ();
            },
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.purple)),
              hintText: widget.message,
            )));
  }
}
