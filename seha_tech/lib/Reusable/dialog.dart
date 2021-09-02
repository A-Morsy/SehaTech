import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import '../Reusable/palette.dart';
import '../main.dart';

class TempletDialog extends StatefulWidget {
  final List<String> payers;
  final List<String> payerUrl;
  final String title;

  TempletDialog(
      {Key? key,
      required this.title,
      required this.payers,
      required this.payerUrl})
      : super(key: key);

  @override
  _TempletDialog createState() => _TempletDialog();
}

class _TempletDialog extends State<TempletDialog> {
  // SignInModel signInModel = SignInModel();
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (int i = 0; i < widget.payers.length; i++) {
      children.add(GestureDetector(
        onTap: () {
          signInModel.setPayerName = widget.payers[i];
          signInModel.seturl = widget.payerUrl[i];
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
            child: Text(widget.payers[i])),
      ));
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.all(20.0),
      titlePadding: EdgeInsets.all(20.0),
      scrollable: true,
      content: Container(
        width: 100,
        height: 150,
        child: ListView(
          children: children,
        ),
      ),
      contentTextStyle: TextStyle(fontSize: 17, color: Palette.forthColor),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.title),
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
