import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/rememberPassword/widgets/otpWidget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => OTPWidget(),
          barrierDismissible: true
        );
      },
      child: Text(
        'Forgot  Password ?',
        style: TextStyle(color: Palette.thirdColor),
      ),
    );
  }
}
