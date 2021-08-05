import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
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

    // ScopedModel<UserModel>(
    // model: userModel,
    // child: MaterialApp(home: MyHomePage(title: ''))
    // );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // login() {

  // }

  // signUp() {

  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  child: Image.asset(
                      'assets/images/SehaTech-Logo-Vertical-FullColor.png')),
              Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    child: Text(
                      AppLocalizations.of(context)!.signInText,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Palette.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 2.0,
                    ),
                    onPressed: () {},
                    //onPressed: login() ,
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    child: Text(
                      AppLocalizations.of(context)!.signUpText,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Palette.thirdColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 2.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpOne()),
                      );
                    },
                    //onPressed:signUp(),
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
    );
  }
}
