import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/myPolicy/policyCard.dart';

class MyPolicyBody extends StatelessWidget {
  const MyPolicyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        color: Palette.fifthColor,
        child: ListView(
          children: [FirstPolicyCard(), SecondPolicyCard(), ThirdPolicyCard()],
        ),
      );
  }
}