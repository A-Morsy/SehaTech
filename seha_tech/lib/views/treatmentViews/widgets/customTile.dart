import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class CustomTile extends StatefulWidget {
  final String text;
  final bool selected;
  CustomTile({Key? key, required this.text, required this.selected})
      : super(key: key);

  @override
  _CustomTileState createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.text),
      leading: Icon(
        Icons.medication_outlined,
        size: 30,
        color: Palette.primaryColor,
      ),
      tileColor: Colors.amber,
      // selected: ,
      onTap: () {
        // setState(());
      },
    );
  }
}
