import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: must_be_immutable
class UserProfileMainWidget extends StatefulWidget {
  List<Widget> widgetsList;
  final String title;
  UserProfileMainWidget({required this.widgetsList, required this.title});

  @override
  _UserProfileMainWidgetState createState() => _UserProfileMainWidgetState();
}

class _UserProfileMainWidgetState extends State<UserProfileMainWidget> {
  @override
  Widget build(BuildContext context) {
    // int _page = 0;
    // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        //this part need to render defferently in each lang
        // the arrow doesnt want to change direction
        leading: AppLocalizations.of(context)!.localeName == 'en'
            ? IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
        backgroundColor: Palette.secondaryColor,
        elevation: 0.0,
      ),
      body: Container(
        color: Palette.fifthColor,
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: const Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: widget.widgetsList,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        //key:_bottomNavigationKey,
        backgroundColor: Palette.thirdColor,
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.09,
        items: <Widget>[
          Icon(
            Icons.event_available,
            size: 30,
            color: Palette.primaryColor,
          ),
          Icon(Icons.add, size: 30, color: Palette.thirdColor),
          Icon(Icons.account_circle, size: 30, color: Palette.primaryColor),
        ],
        onTap: (index) {
          // setState(() {
          //     _page = index;
          //   });
        },
      ),
    );
  }
}
