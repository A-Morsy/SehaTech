import 'package:flutter/material.dart';
import 'package:seha_tech/views/myRequests/widgets/requestCard.dart';
// import 'package:seha_tech/Reusable/palette.dart';

// ignore: must_be_immutable
class RequestsList extends StatefulWidget {
  List<dynamic>? data;
  int requestType;
  RequestsList(this.data, this.requestType, {Key? key}) : super(key: key);

  @override
  _RequestsListState createState() => _RequestsListState();
}

class _RequestsListState extends State<RequestsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
              itemCount: widget.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    RequestCard(widget.data![index], widget.requestType)
                  ],
                );
              }
              // children: [
              //   RequestCard(),
              //   RequestCard(),
              //   RequestCard(),
              // ],
              ),
    )
        // ListView.builder(itemBuilder: (index))
        ;
  }
}
