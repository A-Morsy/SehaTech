import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'customtextbox.dart';
import 'package:date_time_picker/date_time_picker.dart';

class OtherInfoBlock extends StatefulWidget {
  const OtherInfoBlock({Key? key}) : super(key: key);
  @override
  _OtherInfoBlock createState() => _OtherInfoBlock();
}

class _OtherInfoBlock extends State<OtherInfoBlock> {
  late String _selectedDate;
  var gender = 'Male';
  var maleColor = Color.fromRGBO(255, 255, 255, 0);
  var femaleColor = Color.fromRGBO(255, 255, 255, 0);
  var martialStatusDD = 'Single';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        alignment: Alignment.center,
        padding: new EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15,
            25, 10, MediaQuery.of(context).size.width / 15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: 'Address:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'Date of Birth:',
                        size: 15.0,
                        color: Palette.forthColor),
                    CustomText(
                        text: 'Gender:', size: 15.0, color: Palette.forthColor),
                    CustomText(
                        text: 'Marital Status:',
                        size: 15.0,
                        color: Palette.forthColor),
                  ])),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextBox(
                      message: 'Enter Your Address',
                      width: 170,
                      height: 30,
                      obscureText: false,
                      keyboardType: TextInputType.name),
                  Container(
                    width: 170,
                    height: 30,
                    child: DateTimePicker(
                      initialValue:
                          '', // initialValue or controller.text can be null, empty or a DateTime string otherwise it will throw an error.
                      type: DateTimePickerType.date,
                      dateLabelText: 'Select Date',
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
                            _selectedDate = value;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                  // backgroundColor: maleColor,
                                  ),
                              onPressed: () {
                                setState(() {
                                  gender = 'Male';
                                  maleColor = Palette.secondaryColor;
                                });
                              },
                              child: Text('Male')),
                          TextButton(
                              style: ButtonStyle(
                                  // backgroundColor: maleColor,
                                  ),
                              onPressed: () {
                                setState(() {
                                  gender = 'Female';
                                  femaleColor = Palette.secondaryColor;
                                });
                              },
                              child: Text('Female'))
                        ],
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: DropdownButton<String>(
                      value: martialStatusDD,
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
                          martialStatusDD = newValue!;
                        });
                      },
                      items: <String>['Single', 'Married', 'Divorced']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )
                ]),
          )
        ]));
  }
}
