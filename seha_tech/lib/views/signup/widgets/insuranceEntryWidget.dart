import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/Reusable/reusableWidgets.dart';
import 'package:seha_tech/services/validation/userValidation.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import 'package:seha_tech/views/signup/widgets/customtextbox.dart';

class InsuranceEntryWidget extends StatefulWidget with InputValidationMixin {
  const InsuranceEntryWidget({Key? key}) : super(key: key);

  @override
  _InsuranceEntryWidgetState createState() => _InsuranceEntryWidgetState();
}

class _InsuranceEntryWidgetState extends State<InsuranceEntryWidget> {
  final textController2 = TextEditingController();
  String insuranceCompany = "AXA Medical Insurance";
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
              padding: EdgeInsets.only(top: 40),
              height: 200,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                CustomText(
                                    text: "Insurance Card ID:",
                                    size: 15.0,
                                    color: Palette.forthColor),
                                TextBox(
                                  message: "",
                                  obscureText: false,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 30,
                                  keyboardType: TextInputType.text,
                                  myController: textController2,
                                  callBackMethod: () =>
                                      signUpModel.setInsuranceCardId =
                                          signUpModel.getStringValue,
                                  errorText: 'Enter a valid card ID',
                                  isValid: widget.validateCardID(
                                      signUpModel.getInsuranceCardId),
                                ),
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(top:20),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CustomText(
                                      text: "Choose Your \nInsurance Owner:",
                                      size: 15.0,
                                      color: Palette.forthColor),
                                  Container(
                                    width: 175,
                                    height: 35,
                                    child: DropdownButton<String>(
                                      value: insuranceCompany,
                                      icon:
                                          const Icon(Icons.arrow_drop_down_sharp),
                                      iconSize: 24,
                                      elevation: 16,
                                      style:
                                          TextStyle(color: Palette.primaryColor),
                                      underline: Container(
                                        height: 1,
                                        color: Palette.primaryColor,
                                      ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          insuranceCompany = newValue!;
                                          signUpModel.setChoosenPayer =
                                              insuranceCompany;
                                          if (insuranceCompany ==
                                              signUpModel.getPayers[0]["name"]) {
                                            signUpModel.setassociatedBaseUrl =
                                                "payer2.sehatech.org:3000";
                                          } else if (insuranceCompany ==
                                              signUpModel.getPayers[1]["name"]) {
                                            signUpModel.setassociatedBaseUrl =
                                                "http://ec2-3-69-50-95.eu-central-1.compute.amazonaws.com:3000";
                                          }
                                        });
                                      },
                                      items: <String>[
                                        signUpModel.getPayers[0]["name"],
                                        signUpModel.getPayers[1]["name"],
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                    // Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //     children: [
                    //       TextBox(
                    //         message: "",
                    //         obscureText: false,
                    //         width: MediaQuery.of(context).size.width / 2.5,
                    //         height: 30,
                    //         keyboardType: TextInputType.text,
                    //         myController: textController2,
                    //         callBackMethod: () =>
                    //             signUpModel.setInsuranceCardId =
                    //                 signUpModel.getStringValue,
                    //         errorText: 'Enter a valid card ID',
                    //         isValid: widget
                    //             .validateCardID(signUpModel.getInsuranceCardId),
                    //       ),
                    //     ])
                  ])),
        ],
      ),
    );
  }
}
