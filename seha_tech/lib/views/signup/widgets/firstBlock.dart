import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/signup/signUpOne.dart';
import 'customtextbox.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NamePhotoBlock extends StatefulWidget {
  const NamePhotoBlock({Key? key}) : super(key: key);

  @override
  _NamePhotoBlockState createState() => _NamePhotoBlockState();
}

class _NamePhotoBlockState extends State<NamePhotoBlock> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 25, 25,
          MediaQuery.of(context).size.width / 25, 25),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.signUpFirstPage_Title,
            style: TextStyle(
                color: Palette.thirdColor,
                // fontFamily: 'serif',
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // width: 90,
                  // height: 90,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(50)),
                    color: Colors.grey[400],
                  ),
                  child: Icon(
                    Icons.add,
                    size: MediaQuery.of(context).size.width*0.25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: new Column(
                    children: <Widget>[
                      TextBox(
                        myController: textController1,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_firstBlock_namePH,
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setFirstName =
                            signUpModel.getStringValue,
                      ),
                      TextBox(
                        myController: textController2,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_firstBlock_secondNamePH,
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setMiddleName =
                            signUpModel.getStringValue,
                      ),
                      TextBox(
                        myController: textController3,
                        message: AppLocalizations.of(context)!
                            .signUpFirstPage_firstBlock_thirdNamePH,
                        obscureText: false,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 20,
                        keyboardType: TextInputType.name,
                        callBackMethod: () => signUpModel.setLastName =
                            signUpModel.getStringValue,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
