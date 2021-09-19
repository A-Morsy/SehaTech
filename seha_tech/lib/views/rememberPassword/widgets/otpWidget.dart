import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/resetpassword.dart';
import 'package:seha_tech/models/signUpModel.dart';
import 'package:seha_tech/services/Authentication%20Services/signUpServices.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/rememberPassword/remeberPasswordView.dart';
import 'package:seha_tech/views/rememberPassword/widgets/requestResetWidget.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';

class OTPWidget extends StatefulWidget {
  final int type;
  OTPWidget({Key? key, required this.type}) : super(key: key);

  @override
  _OTPWidgetState createState() => _OTPWidgetState();
}

final textController2 = TextEditingController();

class _OTPWidgetState extends State<OTPWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Authentication Code",
                style: TextStyle(color: Palette.primaryColor)),
            Container(
                width: 80,
                child: CustomDivider(dividerColor: Palette.thirdColor))
          ],
        )),
        content: TextFormField(
          controller: textController2,
          onFieldSubmitted: (pin) async {
            resetPasswordModel.setOtpCode = pin;
            if (widget.type == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RemberPasswordView()));
              print("Completed: " + resetPasswordModel.getOtpCode);
            } else if (widget.type == 2) {
              var response = await approveUserBytOtp(
                  signUpModel.getEmail, pin, signUpModel.getassociatedBaseUrl);
              // print (response) ;
              String message = '';

              // ignore: unrelated_type_equality_checks
              if (response['result'] == 200) {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(name: "/Page1"),
                    builder: (context) => UserProfile(),
                  ),
                  // MaterialPageRoute(builder: (context) => UserProfile()),
                );
              }

              message = response["message"];

              CustomSnackBar.buildErrorSnackbar(context, message);
            }

            // Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        elevation: 20.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
