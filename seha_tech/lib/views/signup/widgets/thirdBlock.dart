import 'package:flutter/material.dart';
import 'package:seha_tech/views/signup/widgets/buttonCard.dart';
import 'package:seha_tech/views/signup/widgets/dateWidget.dart';
import 'package:seha_tech/views/signup/widgets/dropLists.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'customtextbox.dart';

class PersonalInfoBlock extends StatelessWidget {
  const PersonalInfoBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: 'Address:', size: 15.0, color: Palette.forthColor),
              TextBox(
                message: 'Enter Your Full Address',
                obscureText: false,
                width: 200,
                height: 40,
                keyboardType: TextInputType.streetAddress
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: 'Date Of Birth:',
                  size: 15.0,
                  color: Palette.forthColor),
              DateWidget()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: 'Gender:', size: 15.0, color: Palette.forthColor),
              ButtonCard()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: 'Marital Status:',
                  size: 15.0,
                  color: Palette.forthColor),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: Card(
                  elevation: 10.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: MaritalDropBox()
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
