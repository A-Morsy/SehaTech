import 'package:flutter/material.dart';
import 'package:seha_tech/services/validation/userValidation.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';

// ignore: must_be_immutable
class TextBox extends StatefulWidget with InputValidationMixin {
  String message;
  bool obscureText;
  double width;
  double height;

  TextInputType keyboardType;
  TextEditingController myController;

  final String errorText;
  final bool isValid;

  VoidCallback callBackMethod;

  TextBox(
      {Key? key,
      required this.message,
      required this.obscureText,
      required this.width,
      required this.height,
      required this.keyboardType,
      required this.myController,
      required this.callBackMethod,
      required this.isValid,
      required this.errorText})
      : super(key: key);

  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5 , bottom: 5),
      child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: TextFormField(
              controller: widget.myController,
              onChanged: (var value) {
                signUpModel.setStringValue = value;
                widget.callBackMethod();
              },
              validator: (value) {
                setState(() {});
                if (!widget.isValid) {
                  return null;
                } else {
                  return widget.errorText;
                }
              },
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(

                enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.blue)),
                hintText: widget.isValid ? widget.message : widget.errorText,
                errorBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.red)),
              ))),
    );
  }
}
