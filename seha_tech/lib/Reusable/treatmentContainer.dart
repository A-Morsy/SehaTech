import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';

class TreatmentContainer extends StatefulWidget {
  final FaIcon icon;
  final Text text;
  const TreatmentContainer({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  _TreatmentContainerState createState() => _TreatmentContainerState();
}

class _TreatmentContainerState extends State<TreatmentContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDivider(dividerColor: Palette.primaryColor),
        InkWell(
          child: Container(
            color: selected ? Palette.fifthColor : Colors.white,
            height: MediaQuery.of(context).size.height * 0.063,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: widget.icon,
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  constraints: BoxConstraints(maxWidth: 200),
                  child: widget.text,
                )
              ],
            ),
          ),
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
        ),
      ],
    );
  }
}
