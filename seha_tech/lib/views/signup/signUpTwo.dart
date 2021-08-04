import 'package:flutter/material.dart';
import '../../Reusable/palette.dart';
import './widgets/identificationBlock.dart';
import './widgets/signUpStepWedgit.dart';
import 'widgets/customDivider.dart';
import 'widgets/identificationBlockFirst.dart';

class SignUpTwo extends StatefulWidget {
  SignUpTwo({Key? key}) : super(key: key);

  @override
  _SignUpTwoState createState() => _SignUpTwoState();
}

class _SignUpTwoState extends State<SignUpTwo> {
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Widget _buildContent() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          backgroundColor: Palette.primaryColor,
          elevation: 0.0,
        ),
        body: ListView(children: [
          Container(
              color: Palette.primaryColor,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SignUpStepsWidget(step: 2),
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
                  child: Column(
                    children: [
                      IdentificationFirstBolck(),
                      CustomDivider(dividerColor: Palette.primaryColor),
                      IdentificationBolck(),
                    ],
                  ),
                )),
          )),
        ]),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 35,
              ),
              backgroundColor: Palette.forthColor,
            ),
            FloatingActionButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SignUpOne()),
                // );
              },
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 35,
              ),
              backgroundColor: Palette.primaryColor,
            ),
          ],
        ));
  }
}
