import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/medicalProfile/widgets/policyCard.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyPolicyView extends StatefulWidget {
  @override
  _MyPolicyView createState() => _MyPolicyView();
}

class _MyPolicyView extends State<MyPolicyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Policy'),
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
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        color: Palette.fifthColor,
        child: ListView(
          children: [FirstPolicyCard(), SecondPolicyCard(), ThirdPolicyCard()],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        //key:_bottomNavigationKey,

        backgroundColor: Palette.thirdColor,
        color: Colors.white,
        // height: MediaQuery.of(context).size.height * 0.09,
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
