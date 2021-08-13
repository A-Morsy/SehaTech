import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstPolicyCard extends StatelessWidget {
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_firstCard_firstTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_firstCard_secondTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data 2'),
                ]),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_firstCard_button,
                    style: TextStyle(color: Palette.primaryColor),
                  ),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  AppLocalizations.of(context)!
                      .medicalProfile_myPolicyView_firstCard_thirdTitle,
                  style: TextStyle(color: Palette.thirdColor),
                ),
                Text('test Data 3'),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondPolicyCard extends StatelessWidget {
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_secondCard_firstTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_secondCard_secondTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data 2'),
                ]),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                AppLocalizations.of(context)!
                    .medicalProfile_myPolicyView_secondCard_button,
                style: TextStyle(color: Palette.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPolicyCard extends StatelessWidget {
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              constraints: BoxConstraints(maxWidth: 250),
              child: new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 15.0,
                percent: 0.3,
                center: new Text("30%"),
                progressColor: Palette.thirdColor,
                backgroundColor: Palette.fifthColor,
              )),
          Container(
            constraints: BoxConstraints(maxWidth: 130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_thirdCard_firstTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    AppLocalizations.of(context)!
                        .medicalProfile_myPolicyView_thirdCard_firstTitle,
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data 2'),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
