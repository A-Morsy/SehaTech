import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signup/widgets/insuranceEntryWidget.dart';
import 'package:seha_tech/views/signup/widgets/mainSignUpContainer.dart';

class SignUpThree extends StatelessWidget {
  const SignUpThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          //title: Text("SignIn"),
          title: Text(AppLocalizations.of(context)!.signInText),
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
        body: SignUpContainer(
          signUpStep: 3,
          widgetsList: [
          InsuranceEntryWidget()
          ],
        ),
        floatingActionButton: Container(
          padding: EdgeInsets.only(left: 40, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                },
                child: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 35,
                ),
                backgroundColor: Palette.primaryColor,
              ),
            ],
          ),
        ));
  }
}
