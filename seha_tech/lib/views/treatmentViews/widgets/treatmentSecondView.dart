import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/views/treatmentViews/widgets/firstViewPatientCard.dart';
import '../../signup/widgets/customDivider.dart';

typedef void StringCallback(int val);

class TreatmentSecondView extends StatelessWidget {
  final StringCallback callBack;
  TreatmentSecondView({required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
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
                  child: Text('TREATMENT',
                      style: TextStyle(
                          color: Palette.thirdColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('Select treatment you will be needing?',
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
                  PatientCard(
                      title: 'Outpatient',
                      Img:
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  PatientCard(
                      title: 'Investigation',
                      Img:
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  PatientCard(
                      title: 'Emergency',
                      Img:
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  PatientCard(
                      title: 'Operations',
                      Img:
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ]),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.primaryColor,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              onPressed: () {
                callBack(3);
              },
            ),
          ),
          Positioned(
            bottom: 40,
            left: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.forthColor,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
              onPressed: () {
                callBack(1);
              },
            ),
          )
        ],
      ),
    );
  }
}
