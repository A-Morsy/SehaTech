import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import '../signup/widgets/customDivider.dart';

class ForgetPassFirst extends StatelessWidget {
  final textController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Forget Password'),
          centerTitle: true,
          //this part need to render defferently in each lang
          // the arrow doesnt want to change direction
          leading: AppLocalizations.of(context)!.localeName == 'en'
              ? IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
          backgroundColor: Palette.primaryColor,
          elevation: 0.0,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            color: Palette.fifthColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40, bottom: 30),
                  child: Image.asset(
                    'assets/images/paper-plane.png',
                    // color: Palette.thirdColor,
                    width: 130,
                    height: 130,
                  ),
                ),
                Text(
                  'Enter Your email below to receive password reset instructions.',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 50,
                    margin: EdgeInsets.only(top: 5, bottom: 15),
                    child: CustomDivider(dividerColor: Palette.thirdColor)),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: CustomField(
                        textController: textController1,
                        textColor: Palette.forthColor,
                        fillColor: Colors.white,
                        text: AppLocalizations.of(context)!.emailSignIn,
                        obscureText: true,
                        callBackMethod: () {})),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      // width: MediaQuery.of(context).size.width * 0.6,
                      margin: EdgeInsets.only(right: 50, left: 50),
                      child: CustomButton(
                          message: 'Send',
                          color: Palette.primaryColor,
                          callBackMethod: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => ),
                            // );
                          }),
                    )),
              ],
            )));
  }
}
