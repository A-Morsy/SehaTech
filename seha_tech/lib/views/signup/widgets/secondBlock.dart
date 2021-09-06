import 'package:flutter/material.dart';
import 'package:seha_tech/services/validation/userValidation.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import '../signUpOne.dart';
import 'customtextbox.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailBlock extends StatefulWidget with InputValidationMixin {
  final GlobalKey<FormState> globalKey;
  const EmailBlock({Key? key, required this.globalKey}) : super(key: key);

  @override
  _EmailBlockState createState() => _EmailBlockState();
}

class _EmailBlockState extends State<EmailBlock> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4,
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 25, 25,
            MediaQuery.of(context).size.width / 25, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_SecondBlock_Email +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_SecondBlock_phoneNumber +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_SecondBlock_password +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_SecondBlock_confirmPassword +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                    ])),
            Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBox(
                        myController: textController1,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_SecondBlock_EmailPH,
                        width: MediaQuery.of(context).size.width / 2,
                        height: 20,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        callBackMethod: () =>
                            signUpModel.setEmail = signUpModel.getStringValue,
                        errorText: 'Enter a valid email',
                        isValid: widget.validateEmail(signUpModel.getEmail),
                      ),
                      TextBox(
                        myController: textController2,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_SecondBlock_phoneNumberPH,
                        width: MediaQuery.of(context).size.width / 2,
                        height: 20,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        callBackMethod: () => signUpModel.setPhoneNumber =
                            signUpModel.getStringValue,
                        errorText: 'Enter a valid phone number',
                        isValid:
                            widget.validatePhone(signUpModel.getPhoneNumber),
                      ),
                      TextBox(
                        myController: textController3,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_SecondBlock_passwordPH,
                        width: MediaQuery.of(context).size.width / 2,
                        height: 20,
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setPassword =
                            signUpModel.getStringValue,
                        errorText: 'Enter a valid password',
                        isValid:
                            widget.validatePassword(signUpModel.getPassword),
                      ),
                      TextBox(
                        myController: textController4,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_SecondBlock_confirmPasswordPH,
                        width: MediaQuery.of(context).size.width / 2,
                        height: 20,
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setConfirmPassword =
                            signUpModel.getStringValue,
                        errorText: 'Enter a valid password',
                        isValid: widget.validatePassword(signUpModel.getConfirmPassword),
                      ),
                      // SizedBox(
                      //     width: MediaQuery.of(context).size.width / 2.5,
                      //     height: MediaQuery.of(context).size.height / 25,
                      //     child: TextField(
                      //         controller: textController4,
                      //         onSubmitted: (var value) {
                      //         },
                      //         keyboardType: TextInputType.name,
                      //         obscureText: true,
                      //         style: TextStyle(fontSize: 12),
                      //         decoration: InputDecoration(
                      //           border: UnderlineInputBorder(
                      //               borderSide:
                      //                   new BorderSide(color: Colors.purple)),
                      // hintText: AppLocalizations.of(context)!
                      //     .signUpFirstPage_SecondBlock_confirmPasswordPH,
                      //         )))
                    ]))
          ],
        ));
  }
}
