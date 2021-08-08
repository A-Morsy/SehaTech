import 'package:flutter/material.dart';
import 'package:seha_tech/main.dart';

class CustomField extends StatefulWidget {
  final TextEditingController textController;
  final Color textColor;
  final Color fillColor;
  final String text;
  final bool obscureText;
  final VoidCallback callBackMethod;

  CustomField(
      {Key? key,
      required,
      required this.textController,
      required this.textColor,
      required this.fillColor,
      required this.text,
      required this.obscureText,
      required this.callBackMethod})
      : super(key: key);

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget.textController,
        onChanged: (var value) {
          signInModel.setTemp = value;
          widget.callBackMethod();
        },
        obscureText: widget.obscureText,
        style: TextStyle(fontSize: 12),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          filled: true,
          hintStyle: TextStyle(color: widget.textColor),
          hintText: widget.text,
          //hintText:AppLocalizations.of(context)!.signInText,
          fillColor: widget.fillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.0)
          ),
        ));
  }
}
