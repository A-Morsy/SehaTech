import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtherInfoBlock extends StatefulWidget {
  const OtherInfoBlock({Key? key}) : super(key: key);
  @override
  _OtherInfoBlock createState() => _OtherInfoBlock();
}

class _OtherInfoBlock extends State<OtherInfoBlock> {
  // ignore: unused_field

  var gender = 'Male';
  bool maleColor = false;
  bool femaleColor = false;
  String martialStatusDD = 'Single';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 5,
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 25, 0,
            MediaQuery.of(context).size.width / 25, 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      child: CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_thirdBlock_BD +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      child: CustomText(
                          text: AppLocalizations.of(context)!
                                  .signUpFirstPage_thirdBlock_gender +
                              ':',
                          size: 15.0,
                          color: Palette.forthColor),
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height / 20,
                    //   child: CustomText(
                    //       text: AppLocalizations.of(context)!
                    //               .signUpFirstPage_thirdBlock_marital +
                    //           ':',
                    //       size: 15.0,
                    //       color: Palette.forthColor),
                    // ),
                  ])),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 45,
                    child: DateTimePicker(
                      initialValue:
                          '', // initialValue or controller.text can be null, empty or a DateTime string otherwise it will throw an error.
                      type: DateTimePickerType.date,
                      // dateLabelText: 'Select Date',
                      firstDate: DateTime(1995),
                      lastDate: DateTime.now().add(Duration(
                          days:
                              365)), // This will add one year from current date
                      validator: (value) {
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            signUpModel.setDateOfBirth = value;
                            print(signUpModel.getDateOfBirth);
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            // height: MediaQuery.of(context).size.width / 25,
                            width: MediaQuery.of(context).size.width / 5,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: maleColor
                                      ? Palette.primaryColor
                                      : Colors.transparent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    gender = 'Male';
                                    maleColor = !maleColor;
                                    if (maleColor) {
                                      femaleColor = false;
                                      signUpModel.setGender = 'Male';
                                    } else {
                                      maleColor = true;
                                    }
                                  });
                                },
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .signUpFirstPage_thirdBlock_genderMale,
                                  style: TextStyle(fontSize: 11.5),
                                )),
                          ),
                          SizedBox(
                            // height: MediaQuery.of(context).size.width / 25,
                            width: MediaQuery.of(context).size.width / 5,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: femaleColor
                                      ? Palette.primaryColor
                                      : Colors.transparent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    gender = 'Female';
                                    femaleColor = !femaleColor;
                                    if (femaleColor) {
                                      maleColor = false;
                                      signUpModel.setGender = 'Female';
                                    } else {
                                      femaleColor = true;
                                    }
                                  });
                                },
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .signUpFirstPage_thirdBlock_genderFemale,
                                  style: TextStyle(fontSize: 11.5),
                                )),
                          )
                        ],
                      )),
                  // Container(
                  //   // width: MediaQuery.of(context).size.width / 2.5,
                  //   height: MediaQuery.of(context).size.height / 20,
                  //   child: DropdownButton<String>(
                  //     value: martialStatusDD,
                  //     icon: const Icon(Icons.arrow_drop_down_sharp),
                  //     iconSize: 24,
                  //     elevation: 16,
                  //     style: TextStyle(color: Palette.primaryColor),
                  //     underline: Container(
                  //       height: 1,
                  //       color: Palette.primaryColor,
                  //     ),
                  //     onChanged: (String? newValue) {
                  //       setState(() {
                  //         martialStatusDD = newValue!;
                  //         signUpModel.setMaritalStatus = martialStatusDD;
                  //       });
                  //     },
                  //     items: <String>['Single', 'Married', 'Divorced']
                  //         .map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Text(value),
                  //       );
                  //     }).toList(),
                  //   ),
                  // )
                ]),
          )
        ]));
  }
}
