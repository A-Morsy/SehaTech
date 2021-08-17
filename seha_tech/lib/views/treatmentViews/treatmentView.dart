import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/treatmentViews/widgets/firstViewPatientCard.dart';
import '../signup/widgets/signUpStepWedgit.dart';
import '../signup/widgets/customDivider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TreatmentView extends StatefulWidget {
  @override
  _TreatmentView createState() => _TreatmentView();
}

class _TreatmentView extends State<TreatmentView> {
  int _page = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treatment'),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Palette.fifthColor,
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            SignUpStepsWidget(
              size: 4,
              step: 1,
              bgColor: Palette.fifthColor,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
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
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text('PATIENT',
                          style: TextStyle(
                              color: Palette.thirdColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                          'Select which member is the patient for this treatment',
                          style: TextStyle(
                            color: Palette.forthColor,
                            fontSize: 18,
                          )),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        margin: EdgeInsets.only(bottom: 15),
                        child: CustomDivider(dividerColor: Palette.thirdColor)),
                    Column(children: [
                      PatientCard(),
                      PatientCard(),
                      PatientCard(),
                      PatientCard()
                    ])
                  ],
                ),
              ),
            )
          ],
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
          // setState(() {
          //   _page = index;
          //   print(_page);
          // });
        },
      ),
    );
  }
}
