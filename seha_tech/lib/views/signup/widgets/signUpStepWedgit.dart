import 'package:flutter/material.dart';
import '../../../Reusable/palette.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../widgets/customDivider.dart';

class SignUpStepsWidget extends StatelessWidget {
  final int step;
  final int size;
  final Color bgColor;

  const SignUpStepsWidget(
      {Key? key, required this.step, required this.size, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (int i = 1; i <= size; i++) {
      children.add(Row(children: [
        i <= step
            ? Smalecircle(color: Colors.orange)
            : Smalecircle(color: Colors.white),
        if (i != size)
          i <= step - 1
              ? Container(
                  width: 35.0,
                  child: CustomDivider(dividerColor: Colors.orange))
              : Container(
                  width: 35.0, child: CustomDivider(dividerColor: Colors.white))
      ]));
    }

    return Container(
        color: bgColor,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 10),
        // height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ));
  }
}
