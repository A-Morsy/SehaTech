import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/rememberPassword/widgets/otpWidget.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';

final textController1 = TextEditingController();

class ResetRequest extends StatelessWidget {
  const ResetRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text("Forgot Your Password ",
            style: TextStyle(color: Palette.primaryColor)),
        content: Container(
          height: MediaQuery.of(context).size.height*0.15,
          child: Column(
            children: [
              Text(
                  "Please enter the email address you'd like your password reset  information sent to ",
                  style: TextStyle(fontSize: 12)),
              // Padding(
              //   padding: const EdgeInsets.only(top: 25),
              //   child: CustomField(
              //       textController: textController1,
              //       textColor: Palette.forthColor,
              //       fillColor: Colors.white,
              //       text: "Enter email address",
              //       obscureText: false,
              //       callBackMethod: () =>
              //                 resetPasswordModel.setEmail = resetPasswordModel.getTemp),
              // )
            ],
          ),
        ),
        actions: [
          Center(
            child: Container(
              width: 300,
              child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => OTPWidget(),
                        barrierDismissible: true);
                  },
                  child: Text(
                    "Request reset link",
                    style: TextStyle(color: Palette.thirdColor),
                  )),
            ),
          )
        ],
        elevation: 20.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
