import 'package:flutter/material.dart';
import 'package:seha_tech/views/myRequests/widgets/requestCard.dart';
// import 'package:seha_tech/Reusable/palette.dart';

class RequestsList extends StatefulWidget {
  RequestsList({Key? key}) : super(key: key);

  @override
  _RequestsListState createState() => _RequestsListState();
}

class _RequestsListState extends State<RequestsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 10.0),
      children: [
        RequestCard(),
        RequestCard(),
        RequestCard(),
      ],
    )
        // ListView.builder(itemBuilder: (index))
        ;
  }
}
