import 'package:flutter/material.dart';
import 'package:seha_tech/views/signup/widgets/signUpStepWedgit.dart';
import '../../../Reusable/palette.dart';

// ignore: must_be_immutable
class SignUpContainer extends StatelessWidget {
  List<Widget> widgetsList;
  final int signUpStep;
  SignUpContainer({required this.widgetsList, required this.signUpStep});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          color: Palette.primaryColor,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SignUpStepsWidget(
                step: signUpStep,
                size: 2,
                bgColor: Palette.primaryColor,
              ),
            ],
          )),
      Expanded(
          child: Container(
        color: Palette.primaryColor,
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              child: ListView(
                children: widgetsList,
              ),
            )),
      )),
    ]);
  }
}
