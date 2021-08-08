import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final bool centerTitle;
  final Icon icon;
  final Color color;
  final VoidCallback voidCallBack ;

  const CustomAppBar(
      {Key? key,
      required this.text,
      required this.centerTitle,
      required this.icon,
      required this.color,
      required this.voidCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      centerTitle: centerTitle,
      leading: IconButton(
        icon: icon,
        onPressed: () {
        voidCallBack() ;
        },
      ),
      backgroundColor: color,
      elevation: 0.0,
    );
  }
}
