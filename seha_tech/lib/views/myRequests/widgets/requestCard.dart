import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';

class RequestCard extends StatefulWidget {
  final int requestType;
  final dynamic claim;
  const RequestCard(this.claim, this.requestType, {Key? key}) : super(key: key);

  @override
  _RequestCardState createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
  late String provider, location, providerCat = "";

  @override
  Widget build(BuildContext context) {
    if (widget.requestType == 1) {
      provider = widget.claim["provider_branch"]["branchName"];
      location = widget.claim["provider_branch"]["province"] +
          ' ' +
          widget.claim["provider_branch"]["city"] +
          ' ' +
          widget.claim["provider_branch"]["street"];

      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 0,
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
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                widget.claim["createdAt"].substring(
                                    12, widget.claim["createdAt"].length - 5),
                                style: TextStyle(
                                    color: Palette.forthColor, fontSize: 12.0)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.date_range_outlined,
                              color: Palette.forthColor, size: 12.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                widget.claim["createdAt"].substring(0, 10),
                                style: TextStyle(
                                    color: Palette.forthColor, fontSize: 12.0)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomDivider(dividerColor: Palette.thirdColor),
              Expanded(
                  child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                                widget.claim["status"],
                                style: TextStyle(
                                    color: Palette.thirdColor, fontSize: 20.0),
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
                                provider,
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
                                location,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Phone:",
                              style: TextStyle(
                                  color: Palette.forthColor, fontSize: 12.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                widget.claim["provider_branch"]
                                    ["contactPersonPhone"],
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
                                widget.claim["provider_branch"]
                                    ["contactPersonName"],
                                style: TextStyle(fontSize: 12.0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/images/clock.png',height: 50),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    } else {
      provider = widget.claim["provider"]["providerName"];
      providerCat = widget.claim["providerCategory"];

      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 0,
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
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                widget.claim["createdAt"].substring(
                                    12, widget.claim["createdAt"].length - 5),
                                style: TextStyle(
                                    color: Palette.forthColor, fontSize: 12.0)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.date_range_outlined,
                              color: Palette.forthColor, size: 12.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                widget.claim["createdAt"].substring(0, 10),
                                style: TextStyle(
                                    color: Palette.forthColor, fontSize: 12.0)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomDivider(dividerColor: Palette.thirdColor),
              Expanded(
                  child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                widget.claim["status"],
                                style: TextStyle(
                                    color: Palette.thirdColor, fontSize: 20.0),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Provider:",
                                      style: TextStyle(
                                          color: Palette.forthColor,
                                          fontSize: 12.0),
                                    ),
                                    Text(
                                      provider,
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Provider Category:",
                                    style: TextStyle(
                                        color: Palette.forthColor,
                                        fontSize: 12.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      widget.claim["provider"]
                                          ["providerCategory"],
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/images/contact-formIcon.png',height: 50,),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    }
  }
}
