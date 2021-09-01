import 'package:flutter/material.dart';
import 'package:seha_tech/services/signUpServices.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import 'package:seha_tech/views/signup/signUpThree.dart';
import './widgets/mainSignUpContainer.dart';
import '../../Reusable/palette.dart';
import './widgets/identificationBlock.dart';
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
                onPressed: () async {
                  var response = await getAllPayers();
                  signUpModel.setPayers = response;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpThree()),
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
