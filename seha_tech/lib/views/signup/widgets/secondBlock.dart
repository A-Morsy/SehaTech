import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'customtextbox.dart';

class EmailBlock extends StatelessWidget {
  const EmailBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(text: 'E-mail:', size: 15.0, color: Palette.forthColor),
            TextBox(message: 'Enter A Valid E-mail', obscureText: false, width: 200, height: 40,keyboardType: TextInputType.emailAddress)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
                text: 'Password:', size: 15.0, color: Palette.forthColor),
            TextBox(message: 'Enter A Valid Password', obscureText: true,width: 200, height: 40,keyboardType: TextInputType.visiblePassword)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
                text: 'Confirm Password:', size: 15.0, color: Palette.forthColor),
            TextBox(message: 'Confirm Your Password', obscureText: true,width: 200, height: 40,keyboardType: TextInputType.visiblePassword)
          ],
        )
      ],
    ));
  }
}
