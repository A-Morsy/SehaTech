import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String message;
  final Color color;
  final VoidCallback callBackMethod;
  final GlobalKey<FormState> formGlobalKey;
  final bool useValidation;

  const CustomButton(
      {Key? key,
      required this.message,
      required this.color,
      required this.callBackMethod,
      required this.useValidation,
      required this.formGlobalKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        message,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 2.0,
      ),
      onPressed: () {
        if (useValidation) {
          if (formGlobalKey.currentState!.validate()) {
            formGlobalKey.currentState!.save();
            callBackMethod();
          }
        } else {
          print("not Valid data");
          print(formGlobalKey.currentState!.validate());
        }
      },
      //onPressed: login() ,
    );
  }
}
