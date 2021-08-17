import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/MedicalProfile/userProfileMainWidget.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';

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
  //final List<Widget> _tabItems = [MyRequests()];
  @override
  Widget build(BuildContext context) {
    int _page = appModel.getPageNumber;
    print(appModel.getPageNumber);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        //this part need to render defferently in each lang
        // the arrow doesnt want to change direction
        // AppLocalizations.of(context)!.localeName == 'en'
        leading: IconButton(
          icon: widget.icon,
          onPressed: () {
            if (widget.viewName == "Medical Profile") {
              widget.callback(1);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        backgroundColor: Palette.secondaryColor,
        elevation: 0.0,
      ),
      body: widget.body, //Body of the view
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,

        //key:_bottomNavigationKey,

        backgroundColor: Palette.thirdColor,
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.07,
        items: <Widget>[
          Icon(
            Icons.event_available,
            size: 30,
            color: (_page == 0) ? Palette.thirdColor : Palette.primaryColor,
          ),
          Icon(Icons.add,
              size: 30,
              color: (_page == 1) ? Palette.thirdColor : Palette.primaryColor),
          Icon(Icons.account_circle,
              size: 30,
              color: (_page == 2) ? Palette.thirdColor : Palette.primaryColor),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            appModel.setPageNumber = index;
            print(_page);
          });
        },
      ),
    );
  }
}
