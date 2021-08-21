import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class PatientCard extends StatefulWidget {
  final String title;
  final String Img;
  PatientCard({required this.title, required this.Img});

  @override
  _PatientCardState createState() => _PatientCardState();
}

class _PatientCardState extends State<PatientCard> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: (Container(
        width: MediaQuery.of(context).size.width,
        height: 53,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10),
          ),
          color: selected ? Palette.fifthColor : Colors.white,
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
                margin: EdgeInsets.only(right: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(widget.Img),
                  ),
                )),
            Text(widget.title)
          ],
        ),
      )),
    );
  }
}
