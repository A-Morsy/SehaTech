import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';

// ignore: must_be_immutable
class UserProfileMainWidget extends StatelessWidget {
  List<Widget> widgetsList;
  final String title;
  UserProfileMainWidget({required this.widgetsList, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
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
              children: widgetsList,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Blue'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add), label: 'Add Treatment'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Profile')
          ],
        ));
  }
}
