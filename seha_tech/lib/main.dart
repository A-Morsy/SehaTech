import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/signInModel.dart';
import 'package:seha_tech/models/userModel.dart';
import 'package:seha_tech/services/Authentication%20Services/signInService.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';
import 'package:seha_tech/views/signup/widgets/signUpText.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'views/signup/widgets/customDivider.dart';
import './services/getAllPayers.dart';
import './Reusable/dialog.dart';
import './services/validation/userValidation.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // Spanish, no country code
        ],
        home: MyHomePage(title: ''));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

SignInModel signInModel = SignInModel();
UserModel userModel = UserModel();

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Palette.fifthColor,
        child: Image.asset(
          'assets/images/SehaTech-Logo-Vertical-FullColor.png',
          height: MediaQuery.of(context).size.height * 0.4,
        ));
  }
}

class LandingScreen extends StatelessWidget with InputValidationMixin {
  //gsioo
  final GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  // static bool signinBtnPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.fifthColor,
      body: ScopedModel<SignInModel>(
        model: signInModel,
        child: Form(
          key: formGlobalKey,
          child: FutureBuilder<List<List<String>>>(
              future: getPayers(),
              builder: (context, snapshot) {
                return ListView(
                  children: [
                    Center(child: ScopedModelDescendant<SignInModel>(
                        builder: (context, child, model) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: Image.asset(
                                    'assets/images/SehaTech-Logo-Vertical-FullColor.png')),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: CustomField(
                                isValid: validateEmail(signInModel.getEmail),
                                errorText: 'Must be a vaild Email',
                                textController: textController1,
                                textColor: Palette.forthColor,
                                fillColor: Colors.white,
                                text: AppLocalizations.of(context)!.emailSignIn,
                                obscureText: false,
                                callBackMethod: () =>
                                    signInModel.setEmail = signInModel.getTemp,
                                model: 'signIn',
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: CustomField(
                                  isValid:
                                      validatePassword(signInModel.getPassword),
                                  errorText: 'Must be a vaild password',
                                  textController: textController2,
                                  textColor: Palette.forthColor,
                                  fillColor: Colors.white,
                                  text: AppLocalizations.of(context)!
                                      .passwordSignIn,
                                  obscureText: true,
                                  callBackMethod: () => signInModel
                                      .setPassword = signInModel.getTemp,
                                  model: 'signIn'),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: CustomButton(
                                  message: model.getPayerName == ''
                                      ? 'Choose your policy owner'
                                      : model.getPayerName,
                                  color: Palette.primaryColor,
                                  useValidation: false,
                                  callBackMethod: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            TempletDialog(
                                                title:
                                                    'Choose one of the policy owner',
                                                payers: snapshot.data![0],
                                                payerUrl: snapshot.data![1]));
                                  },
                                  formGlobalKey: formGlobalKey,
                                )),
                            ScopedModel(
                                model: userModel,
                                child: ScopedModelDescendant<UserModel>(
                                    builder: (context, child, modell) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: CustomButton(
                                        message: AppLocalizations.of(context)!
                                            .signInText,
                                        color: Palette.primaryColor,
                                        useValidation: true,
                                        callBackMethod: () async {
                                          if (signInModel.getUrl.length == 0) {
                                            CustomSnackBar.buildErrorSnackbar(
                                                context,
                                                "Please Choose Your Policy Owner");
                                          } else {
                                            var response = await signIn(
                                                model.getEmail,
                                                model.getPassword,
                                                model.getUrl);

                                            if (response == 401 ||
                                                response == 422) {
                                              print(response);
                                              final snackBar = SnackBar(
                                                content: const Text(
                                                    'Email or Password is incorrect'),
                                              );
                                              // Find the ScaffoldMessenger in the widget tree
                                              // and use it to show a SnackBar.
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            } else if (response == 403) {
                                            } else {
                                              // modell.setUserMap = response;

                                              modell.setUrl = model.getUrl;
                                              modell.setToken =
                                                  response["token"];
                                              modell.setEmail =
                                                  response["patientUserInfo"]
                                                      ["email"];
                                              modell.setFirstName =
                                                  response["patientUserInfo"]
                                                      ["firstName"];
                                              modell.setMiddleName =
                                                  response["patientUserInfo"]
                                                      ["middleName"];
                                              modell.setLastName =
                                                  response["patientUserInfo"]
                                                      ["lastName"];
                                              modell.setDateOfBirth =
                                                  response["patientUserInfo"]
                                                      ["dateOfBirth"];
                                              modell.setInsuranceCardId =
                                                  response["patientUserInfo"]
                                                      ["insuranceCardId"];
                                              modell.setPhoneNumber =
                                                  response["patientUserInfo"]
                                                      ["phoneNumber"];
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  settings: RouteSettings(
                                                      name: "/Main"),
                                                  builder: (context) =>
                                                      UserProfile(),
                                                ),
                                              );
                                            }
                                          }
                                        },
                                        formGlobalKey: formGlobalKey,
                                      ));
                                })),
                            // Container(
                            //   padding: EdgeInsets.only(top: 10),
                            //   width: MediaQuery.of(context).size.width * 0.8,
                            //   constraints: BoxConstraints(
                            //       maxWidth: MediaQuery.of(context).size.width),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       MaterialButton(
                            //         onPressed: () {},
                            //         color: Colors.white,
                            //         child:
                            //             Image.asset('assets/images/google.png'),
                            //         // padding: EdgeInsets.all(10),
                            //         shape: CircleBorder(),
                            //       ),
                            //       MaterialButton(
                            //         onPressed: () {},
                            //         color: Colors.white,
                            //         child:
                            //             Image.asset('assets/images/facebook.png'),
                            //         // padding: EdgeInsets.all(10),
                            //         shape: CircleBorder(),
                            //       ),
                            //       MaterialButton(
                            //         onPressed: () {},
                            //         color: Colors.white,
                            //         child: Image.asset('assets/images/apple.png'),
                            //         // padding: EdgeInsets.all(10),
                            //         shape: CircleBorder(),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child:
                                  CustomDivider(dividerColor: Colors.grey[400]),
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.6,
                                margin: EdgeInsets.only(top: 15),
                                child: SignUpText()),
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.6,
                                margin: EdgeInsets.only(top: 15),
                                child: ForgetPassword())
                          ],
                        ),
                      );
                    }))
                  ],
                );
              }),
        ),
      ),
    );
  }
}
