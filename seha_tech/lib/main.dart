import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/signInModel.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'views/signup/signUpOne.dart';
// import 'package:scoped_model/scoped_model.dart';
// import 'models/userModel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

// UserModel userModel = UserModel ();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(localizationsDelegates: [
      AppLocalizations.delegate, // Add this line
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ], supportedLocales: [
      Locale('en', ''), // English, no country code
      Locale('ar', ''), // Spanish, no country code
    ], home: MyHomePage(title: ''));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


SignInModel signInModel = SignInModel();
class _MyHomePageState extends State<MyHomePage> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScopedModel<SignInModel>(
        model: signInModel,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFE7F8F5),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(
                          'assets/images/SehaTech-Logo-Vertical-FullColor.png')),
                  ScopedModelDescendant<SignInModel>(
                      builder: (context, child, model) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: CustomField(
                          textController: textController1,
                          textColor: Palette.forthColor,
                          fillColor: Palette.secondaryColor,
                          text: "E-mail",
                          obscureText: false,
                          callBackMethod: () => signInModel.setEmail = signInModel.getTemp),
                    );
                  }),
                  ScopedModelDescendant<SignInModel>(
                      builder: (context, child, model) {
                        return Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: CustomField(
                        textController: textController2,
                        textColor: Palette.forthColor,
                        fillColor: Palette.secondaryColor,
                        text: "Password",
                        obscureText: true,
                        callBackMethod: () => signInModel.setPassword = signInModel.getTemp),
                  );
                      }),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: CustomButton(
                          message: AppLocalizations.of(context)!.signInText,
                          color: Palette.primaryColor,
                          callBackMethod: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => ),
                            // );
                          })),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: CustomButton(
                        message: AppLocalizations.of(context)!.signUpText,
                        color: Palette.thirdColor,
                        callBackMethod: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpOne()),
                          );
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Image.asset('assets/images/google.png'),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Image.asset('assets/images/facebook.png'),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Image.asset('assets/images/apple.png'),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
