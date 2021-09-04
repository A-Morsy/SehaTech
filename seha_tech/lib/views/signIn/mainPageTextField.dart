import 'package:flutter/material.dart';
import 'package:seha_tech/main.dart';

typedef void StringCallback(int val);

// ignore: must_be_immutable
class CustomField extends StatefulWidget {
  final TextEditingController textController;
  final Color textColor;
  final Color fillColor;
  final String text;
  final bool obscureText;
  final VoidCallback callBackMethod;
  final String errorText;
  final bool isSubmited;
  final bool isValid;


  CustomField(
      {Key? key,
      required this.textController,
      required this.textColor,
      required this.fillColor,
      required this.text,
      required this.obscureText,
      required this.callBackMethod,
      errorText,
      isSubmited,
      isValid})
      : this.errorText = errorText,
        this.isSubmited = isSubmited,
        this.isValid = isValid,
        super(key: key);

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.textController,
        onChanged: (value) {
          signInModel.setTemp = value;
          widget.callBackMethod();
        },
        obscureText: widget.obscureText,
        style: TextStyle(fontSize: 12),
        validator: (value) {
          if (!widget.isValid) {
            return null;
          } else {
            return widget.errorText;
          }
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          filled: true,
          hintStyle: TextStyle(color: widget.textColor),
          hintText: widget.text,
          // errorText:
          //     widget.isValid && widget.isSubmited ? widget.errorText : '',
          // hintText:AppLocalizations.of(context)!.signInText,
          fillColor: widget.fillColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0)),
        ));
  }
}
