import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/Reusable/reusableWidgets.dart';
import 'package:seha_tech/views/signup/widgets/customtextbox.dart';

class InsuranceEntryWidget extends StatefulWidget {
  const InsuranceEntryWidget({Key? key}) : super(key: key);

  @override
  _InsuranceEntryWidgetState createState() => _InsuranceEntryWidgetState();
}

class _InsuranceEntryWidgetState extends State<InsuranceEntryWidget> {
  final textController2 = TextEditingController();
  String insuranceCompany = 'Insurance Company';
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15, 25,
          10, MediaQuery.of(context).size.width / 15),
      child: Column(
        children: [
          Text("Insurance Information",
              style: TextStyle(
                  color: Palette.thirdColor,
                  fontSize: 20,
                  decoration: TextDecoration.none)),
          Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                              text: "Insurance Card ID:",
                              size: 15.0,
                              color: Palette.forthColor),
                          CustomText(
                              text: "Choose Your Insurance Owner:",
                              size: 15.0,
                              color: Palette.forthColor),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextBox(
                              message: "",
                              obscureText: false,
                              width: MediaQuery.of(context).size.width / 4,
                              height: 30,
                              keyboardType: TextInputType.text,
                              myController: textController2,
                              callBackMethod: () {}),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 20,
                            child: DropdownButton<String>(
                              //value: insuranceCompany,
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
                                  // insuranceCompany = newValue!;
                                  // signUpModel.setMaritalStatus =
                                  //     martialStatusDD;
                                });
                              },
                              items: <String>[
                                '1',
                                '2',
                                '3'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ])
                  ])),
        ],
      ),
    );
  }
}
