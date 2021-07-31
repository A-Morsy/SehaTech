import 'package:flutter/material.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({Key? key}) : super(key: key);

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }

Widget _buildContent(){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 600,
      width: 900,
      // height: MediaQuery.of(context).size.height *0.7,
      // width: MediaQuery.of(context).size.width * 0.9 ,
    )
  );
}
}
