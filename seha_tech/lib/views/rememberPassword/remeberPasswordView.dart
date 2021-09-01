import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';

class RemberPasswordView extends StatefulWidget {
  RemberPasswordView({Key? key}) : super(key: key);

  @override
  _RemberPasswordViewState createState() => _RemberPasswordViewState();
}

class _RemberPasswordViewState extends State<RemberPasswordView> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.fifthColor,
      body: ListView(
        children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 150 , 0, 10),
                      child: CustomField(
                          textController: textController1,
                          textColor: Palette.forthColor,
                          fillColor: Colors.white,
                          text: "New Password",
                          obscureText: false,
                          callBackMethod: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: CustomField(
                          textController: textController2,
                          textColor: Palette.forthColor,
                          fillColor: Colors.white,
                          text: "Confirm New Password",
                          obscureText: false,
                          callBackMethod: () {}),
                    ),
                    CustomButton(
                        message: "Reset Password",
                        color: Palette.primaryColor,
                        callBackMethod: (){
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        })
                  ],
                )),
          )
        ],
      ),
    );
  }
}
