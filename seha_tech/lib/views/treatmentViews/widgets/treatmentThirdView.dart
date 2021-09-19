import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/treatmentContainer.dart';
import 'package:seha_tech/views/treatmentViews/widgets/firstViewPatientCard.dart';
import '../../signup/widgets/customDivider.dart';

typedef void StringCallback(int val);

class TreatmentThirdView extends StatelessWidget {
  final StringCallback callBack;
  TreatmentThirdView({required this.callBack});
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
                  child: Text('Treatment Provider Details',
                      style: TextStyle(
                          color: Palette.thirdColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                // Container(
                //   margin: EdgeInsets.only(bottom: 5),
                //   child: Text('Select below your payment method',
                //       style: TextStyle(
                //         color: Palette.forthColor,
                //         fontSize: 18,
                //       )),
                // ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    margin: EdgeInsets.only(bottom: 15),
                    child: CustomDivider(dividerColor: Palette.thirdColor)),

                Container(
                  height: 250,
                  padding: EdgeInsets.only(),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 100),
                                    child: Column(
                                      children: [

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
                // Column(children: [
                //   TreatmentContainer(
                //       icon: FaIcon(
                //         FontAwesomeIcons.search,
                //         color: Palette.thirdColor,
                //         size: 30,
                //       ),
                //       text: Text(
                //         "My Wallet",
                //         style: TextStyle(
                //             fontSize: 18.0,
                //             color: Palette.forthColor,
                //             fontWeight: FontWeight.bold),
                //       )),
                //   TreatmentContainer(
                //       icon: FaIcon(
                //         FontAwesomeIcons.search,
                //         color: Palette.thirdColor,
                //         size: 30,
                //       ),
                //       text: Text(
                //         "Pre-Paid Health Insurance",
                //         style: TextStyle(
                //             fontSize: 18.0,
                //             color: Palette.forthColor,
                //             fontWeight: FontWeight.bold),
                //       )),
                //   TreatmentContainer(
                //       icon: FaIcon(
                //         FontAwesomeIcons.search,
                //         color: Palette.thirdColor,
                //         size: 30,
                //       ),
                //       text: Text(
                //         "Other Methods",
                //         style: TextStyle(
                //             fontSize: 18.0,
                //             color: Palette.forthColor,
                //             fontWeight: FontWeight.bold),
                //       )),
                //   CustomDivider(dividerColor: Palette.primaryColor)
                // ]),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 40,
          //   right: 30,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: Palette.primaryColor,
          //       shape: CircleBorder(),
          //     ),
          //     child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
          //     onPressed: () {
          //       // callBack(4);
          //     },
          //   ),
          // ),
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
                callBack(2);
              },
            ),
          )
        ],
      ),
    );
  }
}
