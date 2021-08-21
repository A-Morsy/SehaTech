import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(2, 4), // changes position of shadow
            ),
          ]),
      //padding: EdgeInsets.all(20),
      //margin: EdgeInsets.only(bottom: 30),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.schedule_outlined,
                          color: Palette.forthColor, size: 12.0),
                      Text("08:00, 09:00 PM",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.date_range_outlined,
                          color: Palette.forthColor, size: 12.0),
                      Text("17/05/2020",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0))
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomDivider(dividerColor: Palette.thirdColor),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: Text(
                            "SURGERY OUTPATIENT CLINIC",
                            style: TextStyle(
                                color: Palette.thirdColor, fontSize: 16.0),
                          )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Provider:",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Cleopatra Hospitals Group",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Location:",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Cairo",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Payment:",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "My Wallet",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Patient:",
                          style: TextStyle(
                              color: Palette.forthColor, fontSize: 12.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Noha Tarek",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    )
                  ],
                )
                ,
                Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/images/quote-request.png'),
                )
              ],

            ),
          ))
        ],
      ),
    );
  }
}
