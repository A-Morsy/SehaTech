import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/Reusable/spinKit.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/views/treatmentViews/widgets/providerInfoCard.dart';

import '../../signup/widgets/customDivider.dart';

typedef void StringCallback(int val);

class TreatmentSecondView extends StatefulWidget {
  final StringCallback callBack;

  TreatmentSecondView({required this.callBack});

  @override
  _TreatmentSecondViewState createState() => _TreatmentSecondViewState();
}

class _TreatmentSecondViewState extends State<TreatmentSecondView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20),
                ),
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.5), BlendMode.colorBurn),
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                )),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text('Treatment Provider',
                      style: TextStyle(
                          color: Palette.thirdColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('Choose one of the following providers.',
                      style: TextStyle(
                        color: Palette.forthColor,
                        fontSize: 18,
                      )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    //need to fix
                    margin: EdgeInsets.only(bottom: 15, right: 250),
                    child: CustomDivider(dividerColor: Palette.thirdColor)),

                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: userModel.getProvidersList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ListTile(
                            title: Text(userModel.getProvidersList[index]
                                ["branchName"]),
                            subtitle: Text(userModel.getProvidersList[index]
                                    ["city"] +
                                "-" +
                                userModel.getProvidersList[index]["street"]),
                            // selected: ,
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => ProviderInfo(
                                        branch:
                                            userModel.getProvidersList[index],
                                      ),
                                  barrierDismissible: true);
                              // widget.callBack(3);
                            },
                          ),
                        );
                      }),
                )
                // Column(children: [
                //   PatientCard(
                //       title: 'mohamed Nabil',
                //       Img:
                //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                //   PatientCard(
                //     title: 'abdelrehman Ashraf',
                //     Img:
                //         'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                //   ),
                //   PatientCard(
                //       title: 'Omar Emam',
                //       Img:
                //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                //   PatientCard(
                //       title: 'Yousef Ehab',
                //       Img:
                //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
                // ]),
                // Row(
                //   children: [
                //     ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         primary: Palette.thirdColor,
                //         shape: CircleBorder(),
                //       ),
                //       child: Icon(Icons.add, color: Colors.white),
                //       onPressed: () {},
                //     ),
                //     Text('Add Member')
                //   ],
                // )
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
          //       widget.callBack(3);
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
                widget.callBack(1);
              },
            ),
          )
        ],
      ),
    );
  }
}
