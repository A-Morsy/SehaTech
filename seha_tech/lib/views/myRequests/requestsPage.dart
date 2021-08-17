import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/medicalProfile/userProfileMainWidget.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:seha_tech/views/myRequests/widgets/requestList.dart';

class MyRequests extends StatefulWidget {
  MyRequests({Key? key}) : super(key: key);

  @override
  _MyRequestsState createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserProfileMainWidget(
        widgetsList: [
        FlutterToggleTab(
          selectedBackgroundColors: [Colors.white],
          unSelectedBackgroundColors: [Palette.primaryColor],
            width: MediaQuery.of(context).size.width,
            borderRadius: 15,
            initialIndex:  0,
            selectedTextStyle: TextStyle(
                color:  Palette.forthColor ,
                fontSize: 18,
                fontWeight: FontWeight.w600),
            unSelectedTextStyle: TextStyle(
                color:  Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            labels: ["Pending", "Approved"],

            selectedLabelIndex: (index) {
              print("Selected Index $index");
            })
            ,
            RequestsList()
      ],
      //title: "My Requests", callback: (int val) {  },),
      )
    );
  }
}
