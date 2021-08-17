import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class PatientCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10),
        ),
        color: Colors.red,
      ),
      child: Row(
        children: [],
      ),
    ));
  }
}
