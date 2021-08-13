import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:seha_tech/views/medicalProfile/widgets/medicalProfileWidget.dart';
import 'package:seha_tech/views/myRequests/requestsPage.dart';

// ignore: must_be_immutable
class UserProfileMainWidget extends StatefulWidget {
  List<Widget> widgetsList;
  final String title;
  UserProfileMainWidget({required this.widgetsList, required this.title});

  @override
  _UserProfileMainWidgetState createState() => _UserProfileMainWidgetState();
}

class _UserProfileMainWidgetState extends State<UserProfileMainWidget> {
  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        //this part need to render defferently in each lang
        // the arrow doesnt want to change direction
        // AppLocalizations.of(context)!.localeName == 'en'
        leading: _page == 2
            ? IconButton(
                icon: Icon(Icons.reorder, color: Colors.white),
                onPressed: () {
                  //Navigator.pop(context);
                },
              )
            : IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
        backgroundColor: Palette.secondaryColor,
        elevation: 0.0,
      ),
      body: medicalProfilewidget(widgetsList: widget.widgetsList),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        index: _page,
        key: _bottomNavigationKey,
        backgroundColor: Palette.thirdColor,
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.09,
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
            print(_page);
            _page = index;
          });
        },
      ),
    );
  }
}
