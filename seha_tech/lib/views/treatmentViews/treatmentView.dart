import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/treatmentViews/widgets/firstViewPatientCard.dart';
import '../signup/widgets/signUpStepWedgit.dart';
import '../signup/widgets/customDivider.dart';

class TreatmentView extends StatefulWidget {
  @override
  _TreatmentView createState() => _TreatmentView();
}

class _TreatmentView extends State<TreatmentView> {
  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Treatment',
        callback: (val) => setState(() => {}),
        body: body(),
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        viewName: "Treatment");
  }

  Widget body() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Palette.fifthColor,
      child:
          // ElevatedButton(
          //   child: Text('size'),
          //   onPressed: () {
          //     print(MediaQuery.of(context).size.height);
          //   },
          // )
          Column(
        children: [
          SignUpStepsWidget(
            size: 4,
            step: 1,
            bgColor: Palette.fifthColor,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: const Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text('PATIENT'),
                Text('Select which member is the patient for this treatment'),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: CustomDivider(dividerColor: Palette.thirdColor)),
                Column(children: [
                  PatientCard(),
                  PatientCard(),
                  PatientCard(),
                  PatientCard()
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
