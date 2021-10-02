import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

typedef void StringCallback(int val);

// ignore: must_be_immutable
class UserProfileMainWidget extends StatefulWidget {
  List<Widget> widgetsList;
  UserProfileMainWidget(
      {required this.widgetsList});

  @override
  _UserProfileMainWidgetState createState() => _UserProfileMainWidgetState();
}

class _UserProfileMainWidgetState extends State<UserProfileMainWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Palette.fifthColor,
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
          height: double.infinity,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(children: widget.widgetsList),
          ),
        ),
      );
  }
}
