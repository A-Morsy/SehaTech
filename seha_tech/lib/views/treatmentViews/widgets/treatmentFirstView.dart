import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/Reusable/spinKit.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/services/TreatmentServices/treatments.dart';
import '../../signup/widgets/customDivider.dart';

typedef void StringCallback(int val);

// ignore: must_be_immutable
class TreatmentFirstView extends StatefulWidget {
  final StringCallback callBack;
  final List<bool> selected;
  bool first = true;
  TreatmentFirstView({required this.callBack, required this.selected});

  @override
  _TreatmentFirstViewState createState() => _TreatmentFirstViewState();
}

class _TreatmentFirstViewState extends State<TreatmentFirstView> {
  List<int> requestBody = [];

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
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                  child:
                      Text('Select what type of treatment you will be needing?',
                          style: TextStyle(
                            color: Palette.forthColor,
                            fontSize: 18,
                          )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    margin: EdgeInsets.only(bottom: 15),
                    child: CustomDivider(dividerColor: Palette.thirdColor)),

                Container(
                  height: 300,
                  child: FutureBuilder<List<dynamic>>(
                      future: getAllTreatments(
                          userModel.getToken, userModel.getUrl),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Container(
                                      color: widget.selected[index]
                                          ? Palette.fifthColor
                                          : null,
                                      child: ListTile(
                                        title: Text(snapshot.data![index]
                                            ["serviceName"]),
                                        leading: Icon(
                                          Icons.medication_outlined,
                                          size: 30,
                                          color: Palette.primaryColor,
                                        ),

                                        // selected: ,
                                        onTap: () {
                                          setState(() =>
                                              widget.selected[index] =
                                                  !widget.selected[index]);

                                          if (widget.selected[index]) {
                                            if (!requestBody.contains(
                                                snapshot.data![index]["id"])) {
                                              requestBody.add(
                                                  snapshot.data![index]["id"]);
                                            }
                                          } else {
                                            requestBody.remove(
                                                snapshot.data![index]["id"]);
                                          }
                                        },
                                      ),
                                    ),
                                    CustomDivider(
                                        dividerColor: Palette.thirdColor)
                                  ],
                                );
                              },
                            ),
                          );
                        } else {
                          return Loading();
                        }
                      }),
                ),
                // Column(children: [
                //   TreatmentContainer(
                //       icon: FaIcon(
                //         FontAwesomeIcons.user,
                //         color: Palette.thirdColor,
                //         size: 30,
                //       ),
                //       text: Text(
                //         "OutPatient",
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
                //         "Investigation",
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
                //         "Emergency",
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
                //         "Operation",
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
          Positioned(
            bottom: 40,
            right: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.primaryColor,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              onPressed: () async {
                if (requestBody.isEmpty) {
                  CustomSnackBar.buildErrorSnackbar(
                      context, "Please select atleast one treatment.");
                } else {
                  var response =
                      await getAllProviders(userModel.getUrl, requestBody);
                  userModel.setProvidersList = response;
                  print(response.length);
                  if (response.length == 0) {
                    CustomSnackBar.buildErrorSnackbar(
                        context, "There are no current providers ");
                  }
                  widget.callBack(2);
                }
              },
            ),
          ),
          // Positioned(
          //   bottom: 40,
          //   left: 30,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: Palette.forthColor,
          //       shape: CircleBorder(),
          //     ),
          //     child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          //     onPressed: () {
          //       callBack(1);
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
