import 'package:flutter/material.dart';
import '../../../Reusable/palette.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../widgets/customDivider.dart';

class SignUpStepsWidget extends StatelessWidget {
  final int step;

  const SignUpStepsWidget({
    Key? key,
    required this.step,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Palette.primaryColor,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 10),
        height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Smalecircle(color: Colors.orange),
            if (step > 1)
              Container(
                  width: 35.0,
                  child: CustomDivider(dividerColor: Colors.orange))
            else
              Container(
                  width: 35.0,
                  child: CustomDivider(dividerColor: Colors.white)),
            if (step > 1)
              Smalecircle(color: Colors.orange)
            else
              Smalecircle(color: Colors.white),
            if (step > 2)
              Container(
                  width: 35.0,
                  child: CustomDivider(dividerColor: Colors.orange))
            else
              Container(
                  width: 35.0,
                  child: CustomDivider(dividerColor: Colors.white)),
            if (step > 2)
              Smalecircle(color: Colors.orange)
            else
              Smalecircle(color: Colors.white),
          ],
        ));
  }
}
