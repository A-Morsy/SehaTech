import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signup/widgets/insuranceEntryWidget.dart';
import 'package:seha_tech/views/signup/widgets/mainSignUpContainer.dart';
import 'package:seha_tech/views/signup/widgets/termsAndConditionsWidget.dart';

final GlobalKey<FormState> globalKey3 = GlobalKey<FormState>();

class SignUpThree extends StatelessWidget {
  const SignUpThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey3,
      child: Scaffold(
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
            signUpStep: 2,
            widgetsList: [InsuranceEntryWidget()],
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
                  heroTag: "btn2",
                  onPressed: () {
                    if (globalKey3.currentState!.validate()) {
                      globalKey3.currentState!.save();
                      showDialog(
                          context: context,
                          builder: (_) => TermsWidget(),
                          barrierDismissible: true);
                    } else {
                      print(globalKey3.currentState!.validate());
                    }
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 35,
                  ),
                  backgroundColor: Palette.primaryColor,
                ),
              ],
            ),
          )),
    );
  }
}
