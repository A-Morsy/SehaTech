import 'package:flutter/material.dart';
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
              'Personal information',
              style: TextStyle(
                  color: Color.fromRGBO(255, 149, 10, 1),
                  fontFamily: 'serif',
                  fontSize: 20,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
            child: Container(
                child: Row(
              children: [
                Container(
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
