import 'package:flutter/material.dart';
import 'widgets/customDivider.dart';
import 'widgets/firstBlock.dart';
import 'widgets/secondBlock.dart';
import 'widgets/thirdBlock.dart';
import './widgets/signUpStepWedgit.dart';
import '../../Reusable/palette.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({Key? key}) : super(key: key);

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
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
            onPressed: () {},
          ),
          backgroundColor: Color.fromRGBO(28, 201, 188, 1),
          elevation: 0.0,
        ),
        body: Column(children: [
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
            color: Color.fromRGBO(28, 201, 188, 1),
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
                    children: [
                      NamePhotoBlock(),
                      CustomDivider(dividerColor: Palette.primaryColor),
                      EmailBlock(),
                      CustomDivider(dividerColor: Palette.primaryColor),
                      OtherInfoBlock()
                    ],
                  ),
                )),
          )),
        ]),
        floatingActionButton: SizedBox(
            height: 50.0,
            width: 50.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 35,
                ),
                backgroundColor: Palette.primaryColor,
              ),
            )));
  }
}
