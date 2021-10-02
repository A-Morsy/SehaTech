import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/models/appModel.dart';
import 'package:seha_tech/services/TreatmentServices/treatments.dart';
import 'package:seha_tech/views/MedicalProfile/userProfileMainWidget.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/myRequests/requestsPage.dart';
import 'package:seha_tech/views/treatmentViews/treatmentView.dart';

// ignore: must_be_immutable
class AppSkeleton extends StatefulWidget {
  final String viewName;
  final String title;
  final StringCallback callback;
  final Icon icon;
  Widget body;
  AppSkeleton({
    required this.title,
    required this.callback,
    required this.body,
    required this.icon,
    required this.viewName,
  });

  @override
  _AppSkeletonState createState() => _AppSkeletonState();
}

class _AppSkeletonState extends State<AppSkeleton> {
  //final List<Widget> _tabItems = [MyRequests(),TreatmentView(),UserProfile()];
  @override
  Widget build(BuildContext context) {
    int _page = appModel.getPageNumber;
    return ScopedModel<AppModel>(
        model: appModel,
        child: ScopedModelDescendant<AppModel>(
          builder: (context, child, model) {
            return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: Scaffold(
                appBar: AppBar(
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(1.0),
                    child: Container(
                      color: Palette.secondaryColor,
                      height: 1.0,
                    ),
                  ),
                  title: Text(
                    widget.title,
                    style: TextStyle(color: Palette.primaryColor),
                  ),
                  centerTitle: false,
                  //this part need to render defferently in each lang
                  // the arrow doesnt want to change direction
                  // AppLocalizations.of(context)!.localeName == 'en'
                  leading: (widget.viewName == "Medical Profile" ||
                          widget.viewName == "Policy")
                      ? IconButton(
                          icon: widget.icon,
                          onPressed: () {
                            if (widget.viewName == "Medical Profile") {
                              widget.callback(1);
                            } else if (widget.viewName == "Policy") {
                              Navigator.pop(context);
                            }
                          },
                        )
                      : widget.icon,
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                ),
                body: Container(
                    child: widget.body,
                    ), //Body of the view
                bottomNavigationBar: CurvedNavigationBar(
                  index: model.currentPage,
                  animationCurve: Curves.bounceInOut,
                  //key:_bottomNavigationKey,

                  backgroundColor: Palette.thirdColor,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.07,
                  items: <Widget>[
                    Icon(
                      Icons.event_available,
                      size: 30,
                      color: (model.currentPage == 0)
                          ? Palette.thirdColor
                          : Palette.primaryColor,
                    ),
                    Icon(Icons.add,
                        size: 30,
                        color: (model.currentPage == 1)
                            ? Palette.thirdColor
                            : Palette.primaryColor),
                    Icon(Icons.account_circle,
                        size: 30,
                        color: (model.currentPage == 2)
                            ? Palette.thirdColor
                            : Palette.primaryColor),
                  ],
                  onTap: (index) async {
                    model.setPageNumber = index;
                    if (index == 1) {
                      var response = await getAllTreatments(
                          userModel.getToken, userModel.getUrl);
                      userModel.setProvidersLength = response.length;
                      print("API Call");
                    }

                    if (index == 2 && _page != 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserProfile()),
                      );
                    } else if (index == 1 && _page != 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TreatmentView()),
                      );
                    } else if (index == 0 && _page != 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyRequests(false, 0)),
                      );
                    } else {
                      setState(() {
                        _page = index;
                      });
                    }
                    //print(appModel.getPreviousPage);
                  },
                ),
              ),
            );
          },
        ));
  }
}
