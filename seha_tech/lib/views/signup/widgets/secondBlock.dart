import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import '../signUpOne.dart';
import 'customtextbox.dart';

class EmailBlock extends StatefulWidget {
  const EmailBlock({Key? key}) : super(key: key);

  @override
  _EmailBlockState createState() => _EmailBlockState();
}

class _EmailBlockState extends State<EmailBlock> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 5,
        alignment: Alignment.center,
        padding: new EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15,
            20, 15, MediaQuery.of(context).size.width / 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                          text: 'E-mail:',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: 'Password:',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: 'Confirm Password:',
                          size: 15.0,
                          color: Palette.forthColor),
                    ])),
            Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBox(
                        myController: textController1,
                        message: 'Enter A Valid E-mail',
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 25,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        callBackMethod: () =>
                            signUpModel.setEmail = signUpModel.getStringValue,
                      ),
                      TextBox(
                        myController: textController2,
                        message: 'Enter A Valid Password',
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 25,
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setPassword =
                            signUpModel.getStringValue,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 25,
                          child: TextField(
                              controller: textController3,
                              // onSubmitted: (var value) {
                              // },
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.purple)),
                                hintText: 'Confirm Your Password',
                              )))
                      // TextBox(
                      //   myController:myController,
                      //     message: 'Confirm Your Password',
                      //     width: MediaQuery.of(context).size.width / 2.5,
                      //     height: MediaQuery.of(context).size.width / 25,
                      //     obscureText: true,
                      //     keyboardType: TextInputType.name)
                    ]))
          ],
        ));
  }
}
