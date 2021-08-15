import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:seha_tech/views/treatmentViews/treatmentView.dart';

typedef void StringCallback(int val);

// ignore: must_be_immutable
class UserProfileMainWidget extends StatefulWidget {
  List<Widget> widgetsList;
  final String title;
  final StringCallback callback;
  UserProfileMainWidget(
      {required this.widgetsList, required this.title, required this.callback});

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
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  widget.callback(1);
                },
              )
            : IconButton(
                icon: Icon(Icons.menu, color: Colors.red),
                onPressed: () {
                  widget.callback(1);
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
          child: Column(children: widget.widgetsList),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Palette.thirdColor,
        color: Colors.white,
        // height: MediaQuery.of(context).size.height * 0.09,
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
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TreatmentView()));
          }
          setState(() {
            _page = index;
            print(_page);
          });
        },
      ),
    );
  }
}
