import 'package:flutter/material.dart';
import 'customtextbox.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          elevation: 10.0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextBox(
              message: 'Day',
              obscureText: false,
              width: 50,
              height: 40,
              keyboardType: TextInputType.datetime),
        ),
        Card(
          elevation: 10.0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextBox(
            message: 'Month',
            obscureText: false,
            width: 50,
            height: 40,
            keyboardType: TextInputType.datetime,
          ),
        ),
        Card(
          elevation: 10.0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextBox(
              message: 'Year',
              obscureText: false,
              width: 70,
              height: 40,
              keyboardType: TextInputType.datetime),
        )
      ],
    ));
  }
}
