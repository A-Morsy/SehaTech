import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'customtextbox.dart';

class IdentificationBolck extends StatefulWidget {
  const IdentificationBolck({Key? key}) : super(key: key);

  _IdentificationBolck createState() => _IdentificationBolck();
}

class _IdentificationBolck extends State<IdentificationBolck> {
  var IDTypeDD = 'National ID';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15, 25,
          10, MediaQuery.of(context).size.width / 15),
      child: Column(
        children: [
          Text('IDENTIFICATION',
              style: TextStyle(
                  color: Palette.thirdColor,
                  fontFamily: 'serif',
                  fontSize: 20,
                  decoration: TextDecoration.none)),
          Container(
            height: MediaQuery.of(context).size.height / 4.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: 'ID Type:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'ID Number:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'Attachment:',
                        size: 15.0,
                        color: Palette.forthColor),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: DropdownButton<String>(
                        value: IDTypeDD,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Palette.primaryColor),
                        underline: Container(
                          height: 1,
                          color: Palette.primaryColor,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            IDTypeDD = newValue!;
                          });
                        },
                        items: <String>['National ID', 'Pasport']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    TextBox(
                        message: 'Enter ID/Passport Number',
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 30,
                        obscureText: false,
                        keyboardType: TextInputType.name),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Icon(Icons.attach_file_sharp,
                          color: Palette.forthColor),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
