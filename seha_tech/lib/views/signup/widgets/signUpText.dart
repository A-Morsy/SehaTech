import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

import '../signUpOne.dart';

class SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont Have an account? '),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpOne()),
            );
          },
          child: Text(
            'Sign Up',
            style: TextStyle(color: Palette.thirdColor),
          ),
        )
      ],
    );
  }
}
