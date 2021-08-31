import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/rememberPassword/remeberPasswordView.dart';


class OTPWidget extends StatefulWidget {
  OTPWidget({Key? key}) : super(key: key);

  @override
  _OTPWidgetState createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text("Authentication Code", style: TextStyle(color: Palette.primaryColor)),
        content: OTPTextField(
          length: 5,
          // width: MediaQuery.of(context).size.width * 0.4,
          textFieldAlignment: MainAxisAlignment.spaceAround,
          //fieldStyle: FieldStyle.box,
          //outlineBorderRadius: 15,
          style: TextStyle(fontSize: 17),
          onChanged: (pin) {
            print("Changed: " + pin);
          },
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RemberPasswordView()),
                  );
              },
              child: Text("Verify" , style: TextStyle(color: Palette.thirdColor),))
        ],
        elevation: 20.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
