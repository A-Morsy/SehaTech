import 'package:flutter/material.dart';

class MaritalDropBox extends StatefulWidget {
  MaritalDropBox({Key? key}) : super(key: key);

  @override
  _MaritalDropBox createState() => _MaritalDropBox();
}

class _MaritalDropBox extends State<MaritalDropBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<String>(
        hint: Container(child: Text('Choose Status'), width: double.infinity,),
        isExpanded: true,
        items: <String>['Married', 'Single', 'Divorced'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}

class IdDropBox extends StatelessWidget {
  const IdDropBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<String>(
        hint: Text('Choose Type'),
        items: <String>['National ID', 'Passport'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
