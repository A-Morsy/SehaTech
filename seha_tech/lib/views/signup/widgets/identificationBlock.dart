import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import '../signUpOne.dart';
import 'customtextbox.dart';

class IdentificationBolck extends StatefulWidget {
  const IdentificationBolck({Key? key}) : super(key: key);

  _IdentificationBolck createState() => _IdentificationBolck();
}

class _IdentificationBolck extends State<IdentificationBolck> {
  String idType = 'National ID';
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15, 25,
          10, MediaQuery.of(context).size.width / 15),
      child: Column(
        children: [
          // Text('IDENTIFICATION',
          //     style: TextStyle(
          //         color: Palette.thirdColor,
          //         fontFamily: 'serif',
          //         fontSize: 20,
          //         decoration: TextDecoration.none)),
          Container(
            height: MediaQuery.of(context).size.height / 4.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // CustomText(
                    //     text: 'Phone Number:',
                    //     size: 15.0,
                    //     color: Palette.forthColor),
                    CustomText(
                        text: 'ID Type:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'ID Number:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'Nationality:',
                        size: 15.0,
                        color: Palette.forthColor),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // TextBox(
                    //     message: 'Enter ID/Passport Number',
                    //     width: MediaQuery.of(context).size.width / 2.5,
                    //     height: 30,
                    //     obscureText: false,
                    //     keyboardType: TextInputType.number),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: DropdownButton<String>(
                        value: idType,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 20,
                        elevation: 16,
                        style: TextStyle(color: Palette.primaryColor),
                        underline: Container(
                          height: 1,
                          color: Palette.primaryColor,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            idType = newValue!;
                            signUpModel.setIdType = idType ;
                          });
                        },
                        items: <String>['National ID', 'Passport']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    TextBox(
                        myController: myController1,
                        message: 'Enter ID/Passport Number',
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 30,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                          callBackMethod:() =>signUpModel.setIdNumber = signUpModel.getStringValue ,),
                    TextBox(
                        myController: myController2,
                        message: 'Enter Your Nationality',
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 30,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        callBackMethod:() =>signUpModel.setNationality = signUpModel.getStringValue ,)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, elevation: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: 'Attachment:',
                      size: 15.0,
                      color: Palette.forthColor),
                  Icon(Icons.attach_file_sharp, color: Palette.forthColor),
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
