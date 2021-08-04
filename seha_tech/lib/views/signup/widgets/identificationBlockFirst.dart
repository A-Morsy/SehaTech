import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import '../signUpOne.dart';
import 'customtextbox.dart';

class IdentificationFirstBolck extends StatefulWidget {
  const IdentificationFirstBolck({Key? key}) : super(key: key);

  _IdentificationFirstBolck createState() => _IdentificationFirstBolck();
}

class _IdentificationFirstBolck extends State<IdentificationFirstBolck> {
  String idType = 'National ID';

  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();
  final textController5 = TextEditingController();
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
            padding: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height / 4.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: 'Country:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'Province:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'City:', size: 15.0, color: Palette.forthColor),
                    CustomText(
                        text: 'Street Name:',
                        size: 15.0,
                        color: Palette.forthColor),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextBox(
                      myController: textController2,
                      message: '',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 30,
                      obscureText: false,
                      keyboardType: TextInputType.streetAddress,
                      callBackMethod: () =>
                          signUpModel.setCountry = signUpModel.getStringValue,
                    ),
                    TextBox(
                      myController: textController3,
                      message: '',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 30,
                      obscureText: false,
                      keyboardType: TextInputType.streetAddress,
                      callBackMethod: () =>
                          signUpModel.setProvince = signUpModel.getStringValue,
                    ),
                    TextBox(
                      myController: textController4,
                      message: '',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 30,
                      obscureText: false,
                      keyboardType: TextInputType.streetAddress,
                      callBackMethod: () =>
                          signUpModel.setCity = signUpModel.getStringValue,
                    ),
                    TextBox(
                      myController: textController5,
                      message: '',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 30,
                      obscureText: false,
                      keyboardType: TextInputType.streetAddress,
                      callBackMethod: () => signUpModel.setStreetName =
                          signUpModel.getStringValue,
                    ),
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
