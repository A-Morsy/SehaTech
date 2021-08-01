import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/Reusable/reusableWidgets.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: CustomText(
                text: 'Male',
                size: 15.0,
                color: Palette.forthColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: CustomText(
                text: 'Female',
                size: 15.0,
                color: Palette.forthColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
