import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class MedicalWidget extends StatelessWidget {
  final String text;
  const MedicalWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextButton(
          onPressed: () {},
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(color: Palette.forthColor, fontSize: 16.0 ),
            ),
          )),
    );
  }
}
