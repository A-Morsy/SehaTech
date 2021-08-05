import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String message;
  final Color color;
  final VoidCallback callBackMethod;

  const CustomButton(
      {Key? key,
      required this.message,
      required this.color,
      required this.callBackMethod})
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
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        elevation: 2.0,
      ),
      onPressed: () {
        callBackMethod();
      },
      //onPressed: login() ,
    );
  }
}
