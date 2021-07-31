import 'package:flutter/material.dart';
import 'widgets/customDivider.dart';
import 'widgets/firstBlock.dart';
import 'widgets/secondBlock.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({Key? key}) : super(key: key);

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       primaryColor: Colors.blue,
    //     ),
    //     home: _buildContent());

    return _buildContent();
  }

  Widget _buildContent() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {},
          ),
          backgroundColor: Color.fromRGBO(28, 201, 188, 1),
          elevation: 0.0,
        ),
        body: Container(
            color: Color.fromRGBO(28, 201, 188, 1),
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      NamePhotoBlock(),
                      CustomDivider(),
                      EmailBlock(),
                      CustomDivider(),
                    ],
                  ),
                ))));
  }
}
