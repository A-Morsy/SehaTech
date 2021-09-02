import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import '../Reusable/palette.dart';
import '../models/signInModel.dart';

class TempletDialog extends StatelessWidget {
  final List<String> payers;
  final String title;
  SignInModel signInModel = SignInModel();
  TempletDialog(this.title, this.payers);
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (int i = 0; i < payers.length; i++) {
      children.add(GestureDetector(
        onTap: () {
          signInModel.setPayerName = payers[i];
          Navigator.pop(context);
        },
        child: Container(
            height: 40,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Text(payers[i])),
      ));
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.all(20.0),
      titlePadding: EdgeInsets.all(20.0),
      scrollable: true,
      content: ScopedModel<SignInModel>(
        model: signInModel,
        child: ScopedModelDescendant<SignInModel>(
            builder: (context, child, model) {
          return Container(
            width: 100,
            height: 150,
            child: ListView(
              children: children,
            ),
          );
        }),
      ),
      contentTextStyle: TextStyle(fontSize: 17, color: Palette.forthColor),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title),
        Container(
          width: 30,
          child: CustomDivider(dividerColor: Palette.thirdColor),
        ),
      ]),
      titleTextStyle: TextStyle(
          color: Palette.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20),
      backgroundColor: Colors.white,
    );
  }
}
