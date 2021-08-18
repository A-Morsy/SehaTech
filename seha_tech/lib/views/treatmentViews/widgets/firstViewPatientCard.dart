import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class PatientCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(3, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: 60,
              //ar/en changes
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10),
                ),
                color: Colors.grey,
              )),
          Text('mohamed nabil')
        ],
      ),
    ));
  }
}
