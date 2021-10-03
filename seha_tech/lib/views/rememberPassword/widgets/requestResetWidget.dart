import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/services/Authentication%20Services/remeberPassword.dart';
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

final GlobalKey<FormState> formGlobalKey1 = GlobalKey<FormState>();

class _ResetRequestState extends State<ResetRequest> {
  String insuranceCompany = "AXA Medical Insurance";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey1,
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
            height: MediaQuery.of(context).size.height * 0.25,
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
                ),
                Container(
                  width: 170,
                  //height: MediaQuery.of(context).size.height / 20,
                  padding: EdgeInsets.only(top: 9),
                  child: DropdownButton<String>(
                    value: insuranceCompany,
                    icon: const Icon(Icons.arrow_drop_down_sharp),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Palette.primaryColor),
                    underline: Container(
                      height: 1,
                      color: Palette.primaryColor,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        insuranceCompany = newValue!;
                        resetPasswordModel.setChoosenPayer = insuranceCompany;
                        if (insuranceCompany ==
                            resetPasswordModel.getPayers[0]["name"]) {
                          resetPasswordModel.setUrl =
                              "payer2.sehatech.org:3000";
                        } else if (insuranceCompany ==
                            resetPasswordModel.getPayers[1]["name"]) {
                          resetPasswordModel.setUrl =
                              "http://ec2-3-69-50-95.eu-central-1.compute.amazonaws.com:3000";
                        }
                      });
                    },
                    items: <String>[
                      resetPasswordModel.getPayers[0]["name"],
                      resetPasswordModel.getPayers[1]["name"],
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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
                    onPressed: () async {
                      if (formGlobalKey1.currentState!.validate()) {
                        formGlobalKey1.currentState!.save();

                        var response = await requestPasswordReset(
                            resetPasswordModel.getEmail,
                            resetPasswordModel.getUrl);

                        if (response["result"] == 200) {
                          showDialog(
                              context: context,
                              builder: (_) => OTPWidget(
                                    type: 1,
                                  ),
                              barrierDismissible: true);
                        } else {
                          CustomSnackBar.buildErrorSnackbar(
                              context, "Error" + response["result"]);
                        }

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
