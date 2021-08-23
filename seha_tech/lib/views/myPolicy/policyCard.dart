import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';

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
      height: MediaQuery.of(context).size.height * 0.17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 180),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'TYPE OF INSURENCE',
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'POLICY NUMBER',
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
              SizedBox(
                width: 90.0,
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Upgrade',
                    style: TextStyle(color: Palette.primaryColor, fontSize: 12),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     margin: EdgeInsets.only(top: 10),
              // child: Text(
              //   'Upgrade',
              //   style: TextStyle(color: Palette.primaryColor),
              // ),
              //   ),
              // ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'POLICY STATUS',
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
      height: MediaQuery.of(context).size.height * 0.19,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'NUMBER OF COVERED INDEVIDUALS',
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'DATE OF RENEWAL',
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data 2'),
                ]),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 30.0,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Palette.primaryColor,
                size: 11,
              ),
              label: Text(
                'add members',
                style: TextStyle(color: Palette.primaryColor, fontSize: 11),
              ),
            ),
          )
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
      height: MediaQuery.of(context).size.height * 0.215,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              constraints: BoxConstraints(maxWidth: 250),
              child: new CircularPercentIndicator(
                radius: 95.0,
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
                    'AMOUNT CLAIMED',
                    style: TextStyle(color: Palette.thirdColor),
                  ),
                  Text('test Data'),
                ]),
                Container(
                  width: 90,
                  child: CustomDivider(
                    dividerColor: Palette.forthColor,
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'MAXIMUM POLICY COVERAGE',
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
