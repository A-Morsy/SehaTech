import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TreatmentView extends StatefulWidget {
  @override
  _TreatmentView createState() => _TreatmentView();
}

class _TreatmentView extends State<TreatmentView> {
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
        child: Text('sfssfsf'),
      ),
    );
  }
}
