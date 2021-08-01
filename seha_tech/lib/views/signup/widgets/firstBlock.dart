import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'customtextbox.dart';

class NamePhotoBlock extends StatelessWidget {
  const NamePhotoBlock({Key? key}) : super(key: key);

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
                  fontFamily: 'serif',
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
                  width: 80,
                  height: 80,
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
                          message: 'First Name',
                          obscureText: false,
                          width: 200,
                          height: 40,
                          keyboardType: TextInputType.name),
                      TextBox(
                          message: 'Second Name',
                          obscureText: false,
                          width: 200,
                          height: 40,
                          keyboardType: TextInputType.name),
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
