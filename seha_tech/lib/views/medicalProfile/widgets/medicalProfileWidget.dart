import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';


class medicalProfilewidget extends StatelessWidget {
  final List<Widget> widgetsList;

  const medicalProfilewidget({Key? key, required this.widgetsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.fifthColor,
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: const Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: widgetsList,
        ),
      ),
    );
  }
}
