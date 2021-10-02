import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:seha_tech/Reusable/spinKit.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/services/TreatmentServices/treatments.dart';
import 'package:seha_tech/views/myRequests/widgets/requestList.dart';

// ignore: must_be_immutable
class MyRequests extends StatefulWidget {
  late bool isRequestSumbitted;
  late int index;
  MyRequests(isRequestSumbitted, index) {
    this.isRequestSumbitted = isRequestSumbitted;
    this.index = index;
  }

  @override
  _MyRequestsState createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return widget.isRequestSumbitted;
      },
      child: AppSkeleton(
          title: "My Requests",
          callback: (val) => setState(() => {}),
          body: body(),
          icon:
              Icon(Icons.double_arrow_outlined, color: Palette.secondaryColor),
          viewName: "My Requests"),
    );
  }

  Widget body() {
    return Container(
        decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20),
                ),
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.5), BlendMode.colorBurn),
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                )),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
        // padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder<List<dynamic>>(
            future:
                getClaims(userModel.getToken, userModel.getUrl, widget.index),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Center(
                          child: FlutterToggleTab(
                              selectedBackgroundColors: [Colors.white],
                              unSelectedBackgroundColors: [
                                Palette.primaryColor
                              ],
                              isShadowEnable: false,
                              width: MediaQuery.of(context).size.width * 0.2,
                              borderRadius: 15,
                              initialIndex: widget.index,
                              selectedTextStyle: TextStyle(
                                  color: Palette.forthColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              unSelectedTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              labels: ["Pending", "Approved"],
                              selectedLabelIndex: (index) {
                                if (widget.index != index) {
                                  setState(() {
                                    widget.index = index;
                                  });
                                }

                                // ignore: unused_local_variable
                              }),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 25),
                              child: widget.index == 0
                                  ? RequestsList(snapshot.data, 1)
                                  : RequestsList(snapshot.data, 2)))
                    ],
                  );
                } else {
                  return Loading();
                }
              } else {
                return Loading(); // loading
              }
            }));
  }
}
