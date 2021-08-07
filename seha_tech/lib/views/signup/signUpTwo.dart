import 'package:flutter/material.dart';
import './widgets/mainSignUpContainer.dart';
import '../../Reusable/palette.dart';
import './widgets/identificationBlock.dart';
import './widgets/signUpStepWedgit.dart';
import 'widgets/customDivider.dart';
import 'widgets/identificationBlockFirst.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpTwo extends StatefulWidget {
  SignUpTwo({Key? key}) : super(key: key);

  @override
  _SignUpTwoState createState() => _SignUpTwoState();
}

class _SignUpTwoState extends State<SignUpTwo> {
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Widget _buildContent() {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.signUpText),
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
          widgetsList: [
            IdentificationFirstBolck(),
            CustomDivider(dividerColor: Palette.primaryColor),
            IdentificationBolck(),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SignUpOne()),
                // );
              },
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 35,
              ),
              backgroundColor: Palette.primaryColor,
            ),
          ],
        ));
  }
}
