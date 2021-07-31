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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: _buildContent());
  }

  Widget _buildContent() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          backgroundColor: Color.fromRGBO(28, 201, 188, 1),
          elevation: 0.0,
        ),
        body: Container(
            color: Color.fromRGBO(28, 201, 188, 1),
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Text(
                          'Personal information',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 149, 10, 1),
                              fontFamily: 'serif',
                              fontSize: 20,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                        child: Container(
                            child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(50)),
                                color: Colors.grey[400],
                              ),
                              child: Icon(
                                Icons.add,
                                size: 60,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 10, 0),
                              child: new Column(
                                children: <Widget>[
                                  SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Enter Some Text Here'))),
                                  SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Enter Some Text Here'))),
                                  SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Enter Some Text Here'))),
                                ],
                              ),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                  // height: MediaQuery.of(context).size.height *0.7,
                  // width: MediaQuery.of(context).size.width * 0.9 ,
                ))));
  }
}
