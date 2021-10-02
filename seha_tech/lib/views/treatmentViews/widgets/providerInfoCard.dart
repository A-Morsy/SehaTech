import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/customSnackBar.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/services/TreatmentServices/treatments.dart';
import 'package:seha_tech/views/myRequests/requestsPage.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';

// ignore: must_be_immutable
class ProviderInfo extends StatelessWidget {
  final dynamic branch;
  const ProviderInfo({Key? key, required this.branch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final address =
        branch["street"] + ", " + branch["city"] + ", " + branch["province"];
    return Container(
      height: 450,
      child: AlertDialog(
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(branch["branchName"],
                  style: TextStyle(color: Palette.primaryColor)),
              Container(
                  width: 80,
                  child: CustomDivider(dividerColor: Palette.thirdColor))
            ],
          ),
        ),
        content: Container(
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Text("address",
                    //     style:
                    //         TextStyle(fontSize: 16, color: Palette.primaryColor)),
                    Text(address, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("phone number",
                        style: TextStyle(
                            fontSize: 16, color: Palette.primaryColor)),
                    Text(branch["phone"], style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("email",
                        style: TextStyle(
                            fontSize: 16, color: Palette.primaryColor)),
                    Text(branch["email"], style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Center(
            child: Container(
              width: 300,
              child: TextButton(
                  onPressed: () async {
                    var response = await requestTreatment(
                        userModel.getToken, branch["id"], userModel.getUrl);
                    print(response);
                    if (response['result'] == 200) {
                      int count = 0;
                      Navigator.popUntil(context, (route) {
                        return count++ == 2;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WillPopScope(
                                  child: MyRequests(true, 0),
                                  onWillPop: () async {
                                    return true;
                                  })));
                      CustomSnackBar.buildErrorSnackbar(
                          context, response["message"]["message"]);
                    } else {
                      CustomSnackBar.buildErrorSnackbar(
                          context, "Error " + response["result"].toString());
                    }
                  },
                  child: Text(
                    "Request Treatment",
                    style: TextStyle(color: Palette.thirdColor, fontSize: 18),
                  )),
            ),
          )
        ],
        elevation: 20.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
