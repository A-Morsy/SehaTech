import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/models/signUpModel.dart';
import 'package:seha_tech/services/Authentication%20Services/signUpServices.dart';
import 'package:seha_tech/views/signup/signUpThree.dart';
import 'package:seha_tech/views/signup/signUpTwo.dart';
import 'widgets/customDivider.dart';
import 'widgets/firstBlock.dart';
import 'widgets/secondBlock.dart';
import 'widgets/thirdBlock.dart';
import '../../Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './widgets/mainSignUpContainer.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({Key? key}) : super(key: key);

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

SignUpModel signUpModel = SignUpModel();
final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

class _SignUpOneState extends State<SignUpOne> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<SignUpModel>(model: signUpModel, child: _buildContent());
  }

  Widget _buildContent() {
    return ScopedModelDescendant<SignUpModel>(builder: (context, child, model) {
      return Form(
        key: globalKey,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.signUpText),
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
          body: SignUpContainer(
            signUpStep: 1,
            widgetsList: [
              NamePhotoBlock(
                globalKey: globalKey,
              ),
              CustomDivider(dividerColor: Palette.primaryColor),
              EmailBlock(
                globalKey: globalKey,
              ),
              CustomDivider(dividerColor: Palette.primaryColor),
              OtherInfoBlock()
            ],
          ),
          floatingActionButton: Container(
            // width: 60,
            // height: 60,
            // padding: EdgeInsets.only(right: 20,top: 20),
            padding: EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              heroTag: "btn1",
              onPressed: () async {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();
                  if (signUpModel.getPassword ==
                      signUpModel.getConfirmPassword) {
                    var response = await getAllPayers();
                    signUpModel.setPayers = response;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpThree()),
                    );
                  }
                } else {
                  print(globalKey.currentState?.validate());
                }
              },
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 35,
              ),
              backgroundColor: Palette.primaryColor,
            ),
          ),
        ),
      );
    });
  }
}
