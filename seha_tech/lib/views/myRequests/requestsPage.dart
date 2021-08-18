import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
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
    return AppSkeleton(
        title: "My Requests",
        callback: (val) => setState(() => {}),
        body: body(),
        icon: Icon(Icons.menu, color: Colors.white),
        viewName: "My Requests");
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
      // padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          const Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlutterToggleTab(
              selectedBackgroundColors: [Colors.white],
              unSelectedBackgroundColors: [Palette.primaryColor],
              //width: MediaQuery.of(context).size.width*0.6,
              borderRadius: 15,
              initialIndex: 0,
              selectedTextStyle: TextStyle(
                  color: Palette.forthColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              unSelectedTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              labels: ["Pending", "Approved"],
              selectedLabelIndex: (index) {
                print("Selected Index $index");
              }),
          Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                  child: RequestsList()))
        ],
      ),
    );
  }
}
