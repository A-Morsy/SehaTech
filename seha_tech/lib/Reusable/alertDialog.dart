import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import '../Reusable/palette.dart';

class StatusDialog extends StatelessWidget {
  final String body;
  final String title;

  StatusDialog({Key? key, required this.title, required this.body});

  // SignInModel signInModel = SignInModel();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.all(20.0),
      titlePadding: EdgeInsets.all(20.0),
      scrollable: true,
      content: Container(width: 100, height: 150, child: Text(body)),
      contentTextStyle: TextStyle(fontSize: 17, color: Palette.forthColor),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title),
        Container(
          width: 30,
          child: CustomDivider(dividerColor: Palette.thirdColor),
        ),
      ]),
      titleTextStyle: TextStyle(
          color: Palette.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20),
      backgroundColor: Colors.white,
    );
  }
}
