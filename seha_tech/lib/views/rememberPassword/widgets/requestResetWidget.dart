import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/rememberPassword/widgets/otpWidget.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';
import 'package:seha_tech/services/validation/userValidation.dart';

final textController1 = TextEditingController();

class ResetRequest extends StatefulWidget with InputValidationMixin {
  const ResetRequest({Key? key}) : super(key: key);

  @override
  _ResetRequestState createState() => _ResetRequestState();
}

final GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

class _ResetRequestState extends State<ResetRequest> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Container(
        child: AlertDialog(
          title: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Forgot Your Password ",
                    style: TextStyle(color: Palette.primaryColor)),
                Container(
                  width: 80,
                    child: CustomDivider(dividerColor: Palette.thirdColor))
              ],
            ),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Column(
              children: [
                Text(
                    "Please enter the email address you'd like your password reset  information sent to ",
                    style: TextStyle(fontSize: 12)),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: CustomField(
                    textController: textController1,
                    textColor: Palette.forthColor,
                    fillColor: Colors.white,
                    text: "Enter email address",
                    errorText: 'Must be a vaild Email',
                    isValid: widget.validateEmail(resetPasswordModel.getEmail),
                    obscureText: false,
                    callBackMethod: () => resetPasswordModel.setEmail =
                        resetPasswordModel.getTemp,
                    model: 'resetPassword',
                  ),
                )
              ],
            ),
          ),
          actions: [
            Center(
              child: Container(
                width: 300,
                child: TextButton(
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate()) {
                        formGlobalKey.currentState!.save();
                        showDialog(
                            context: context,
                            builder: (_) => OTPWidget(),
                            barrierDismissible: true);
                        print("Valid");
                      } else {
                        print("not Valid data");
                      }
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
      ),
    );
  }
}
