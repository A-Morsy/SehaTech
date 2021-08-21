import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../signup/widgets/customDivider.dart';

typedef void StringCallback(int val);

class TreatmentFourthView extends StatelessWidget {
  final StringCallback callBack;
  final myController1 = TextEditingController();
  TreatmentFourthView({required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                const Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text('PROVIDER',
                      style: TextStyle(
                          color: Palette.thirdColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('Search for a provider below',
                      style: TextStyle(
                        color: Palette.forthColor,
                        fontSize: 18,
                      )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    margin: EdgeInsets.only(bottom: 15),
                    child: CustomDivider(dividerColor: Palette.thirdColor)),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 10),
                      height: 60,
                      child: DropdownButton<String>(
                        hint: Text("Surgery"),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: TextField(
                          controller: myController1,
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.add_location_outlined,
                              color: Palette.primaryColor,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Location',
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.primaryColor,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 40,
            left: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.forthColor,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
              onPressed: () {
                callBack(3);
              },
            ),
          )
        ],
      ),
    );
  }
}
