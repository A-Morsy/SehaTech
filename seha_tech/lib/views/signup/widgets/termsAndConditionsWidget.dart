import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/services/signUpServices.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';

class TermsWidget extends StatefulWidget {
  TermsWidget({Key? key}) : super(key: key);

  @override
  _TermsWidgetState createState() => _TermsWidgetState();
}

class _TermsWidgetState extends State<TermsWidget> {
  String terms =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pharetra elit id consequat pretium. Nulla vitae consectetur dolor, sit amet fringilla tortor. Vestibulum feugiat quis quam ut pulvinar. Phasellus fermentum tellus in lorem condimentum maximus. Maecenas ac libero elit. Cras eget nibh aliquam, varius libero vel, tempor quam. Integer non risus nisi. Phasellus id turpis porttitor, sagittis elit a, interdum lorem.';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Consent For Research",
          style: TextStyle(color: Palette.primaryColor)),
      content: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              Text(terms),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CheckboxListTile(
                  activeColor: Palette.thirdColor,
                  title: Text("I Accept Terms and Conditions",
                      style: TextStyle(fontSize: 14)),
                  value: signUpModel.getConsentForResearch,
                  onChanged: (newValue) {
                    setState(() {
                      signUpModel.setConsentForResearch = newValue!;
                      var now = new DateTime.now();
                      var formatter = new DateFormat('yyyy-MM-dd');
                      signUpModel.setDateOfDataPrivacyAcceptance =
                          formatter.format(now);
                      print(signUpModel.getDateOfDataPrivacyAcceptance);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
              ),
            ],
          )),
      actions: [
        Center(
          child: SizedBox(
            width: 300,
            child: TextButton(
                onPressed: () async {
                  if (signUpModel.getConsentForResearch) {
                    // var response =await signUp(
                    //     signUpModel.getEmail,
                    //     signUpModel.getPassword,
                    //     signUpModel.getConsentForResearch,
                    //     signUpModel.getDateOfDataPrivacyAcceptance,
                    //     signUpModel.getFirstName,
                    //     signUpModel.getMiddleName,
                    //     signUpModel.getLastName,
                    //     signUpModel.getInsuranceCardId,
                    //     signUpModel.getPhoneNumber,
                    //     signUpModel.getDateOfBirth,
                    //     signUpModel.getGender,
                    //     "payer1.sehatech.org:3000");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        settings: RouteSettings(name: "/Page1"),
                        builder: (context) => UserProfile(),
                      ),
                      // MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  }
                },
                child: Text(
                  "Accept",
                  style: TextStyle(color: Palette.thirdColor, fontSize: 16),
                )),
          ),
        )
      ],
      elevation: 20.0,
      backgroundColor: Colors.white,
    );
  }
}
