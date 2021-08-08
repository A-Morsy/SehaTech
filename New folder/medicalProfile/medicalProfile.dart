import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';

class MedicalProfile extends StatelessWidget {
  const MedicalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Palette.secondaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Medical Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Palette.primaryColor,
        elevation: 0.0,
      ),



      body: Expanded(
                child: Container(
              color: Color.fromRGBO(28, 201, 188, 1),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    // child: ListView(
                    //   children: [
                    //   ],
                    // ),
                  )),
            )
            ),

        bottomNavigationBar: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.event_available,
                    size: 25.0,
                    color: Palette.secondaryColor,
                  ),
                  padding: EdgeInsets.all(5.0),
                  shape: CircleBorder(),
                ),
                Text("My Requests")
              ],
            ),
            Container(
              //padding: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height*0.02),
              child: Column(
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Palette.thirdColor,
                    child: Icon(
                      Icons.add,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  Text("Add Treatment")
                ],
              ),
            ),
            Column(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.account_circle,
                    size: 25.0,
                    color: Palette.secondaryColor,
                  ),
                  padding: EdgeInsets.all(5.0),
                  shape: CircleBorder(),
                ),
                Text("Profile")
              ],
            )
          ],
        ),
      ),
    );
  }
}
