import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import 'customtextbox.dart';

class NamePhotoBlock extends StatefulWidget {
  const NamePhotoBlock({Key? key}) : super(key: key);

  @override
  _NamePhotoBlockState createState() => _NamePhotoBlockState();
}

class _NamePhotoBlockState extends State<NamePhotoBlock> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'PERSONAL INFORMATION',
              style: TextStyle(
                  color: Palette.thirdColor,
                  // fontFamily: 'serif',
                  fontSize: 20,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15,
                25, 10, MediaQuery.of(context).size.width / 15),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(50)),
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
                      TextBox(
                        myController: textController1,
                        message: 'First Name',
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setFirstName =
                            signUpModel.getStringValue,
                      ),
                      TextBox(
                        myController: textController2,
                        message: 'Middle Name',
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setMiddleName =
                            signUpModel.getStringValue,
                      ),
                      TextBox(
                        myController: textController3,
                        message: 'Last Name',
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setLastName =
                            signUpModel.getStringValue,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
