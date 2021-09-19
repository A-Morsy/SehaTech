import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/services/Authentication Services/remeberPassword.dart';
import 'package:seha_tech/services/validation/userValidation.dart';
import 'package:seha_tech/views/rememberPassword/widgets/requestResetWidget.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';

class RemberPasswordView extends StatefulWidget with InputValidationMixin {
  RemberPasswordView({Key? key}) : super(key: key);

  @override
  _RemberPasswordViewState createState() => _RemberPasswordViewState();
}

final GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

class _RemberPasswordViewState extends State<RemberPasswordView> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.fifthColor,
      body: Form(
        key: formGlobalKey,
        child: ListView(
          children: [
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 10),
                        child: CustomField(
                          isValid: widget
                              .validatePassword(resetPasswordModel.getPassword),
                          errorText: 'Must be a vaild password',
                          textController: textController1,
                          textColor: Palette.forthColor,
                          fillColor: Colors.white,
                          text: "New Password",
                          obscureText: false,
                          callBackMethod: () => resetPasswordModel.setPassword =
                              resetPasswordModel.getTemp,
                          model: 'resetPassword',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: CustomField(
                            isValid: widget.validatePassword(
                                resetPasswordModel.getNewPassword),
                            errorText: 'Must be a vaild password',
                            textController: textController2,
                            textColor: Palette.forthColor,
                            fillColor: Colors.white,
                            text: "Confirm New Password",
                            obscureText: false,
                            callBackMethod: () => resetPasswordModel
                                .setNewPassword = resetPasswordModel.getTemp,
                            model: 'resetPassword'),
                      ),
                      CustomButton(
                        message: "Reset Password",
                        color: Palette.primaryColor,
                        callBackMethod: () async {
                          if (resetPasswordModel.getPassword ==
                              resetPasswordModel.getNewPassword) {
                            var response = await resetPassword(
                                resetPasswordModel.getOtpCode,
                                resetPasswordModel.getPassword,
                                resetPasswordModel.getEmail,
                                resetPasswordModel.getUrl);
                            String message = ' ';
                            if (response["code"] == 200) {
                              message = response["message"];
                              print(message);
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                            } else {
                              message =  response["error"];
                              print(message);
                            }

                            CustomSnackBar.buildErrorSnackbar(context, message);
                          }
                        },
                        formGlobalKey: formGlobalKey,
                        useValidation: true,
                      ),
                      TextButton(
                          onPressed: () {
                            int count = 0;
                            Navigator.of(context).popUntil((_) => count++ >= 2);
                          },
                          child: Text("Back"))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
