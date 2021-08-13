import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';
import '../../signup/widgets/customDivider.dart';
import '../widgets/secondBlock.dart';
import '../myPolicyView.dart';

typedef void StringCallback(int val);

class userMainSubContainer extends StatelessWidget {
  final StringCallback callback;

  const userMainSubContainer({required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
                onTap: () {
                  callback(2);
                },
                child: Container(
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                    color: Palette.fifthColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/medicalReport.png',
                        color: Palette.primaryColor,
                        width: 60,
                        height: 60,
                      ),
                      Container(
                          width: 30,
                          child:
                              CustomDivider(dividerColor: Palette.thirdColor)),
                      Text('Medical Profile')
                    ],
                  ),
                )),
            GestureDetector(
                onTap: () {},
                child: Container(
                  width: 140,
                  height: 140,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                    color: Palette.fifthColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/family.png',
                        color: Palette.primaryColor,
                        width: 60,
                        height: 60,
                      ),
                      Container(
                          width: 30,
                          child:
                              CustomDivider(dividerColor: Palette.thirdColor)),
                      Text('My Family')
                    ],
                  ),
                ))
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyPolicyView()));
                  },
                  child: Container(
                    width: 140,
                    height: 140,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10)),
                      color: Palette.fifthColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/policy.png',
                          color: Palette.primaryColor,
                          width: 60,
                          height: 60,
                        ),
                        Container(
                            width: 30,
                            child: CustomDivider(
                                dividerColor: Palette.thirdColor)),
                        Text('My Policy')
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 140,
                    height: 140,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10)),
                      color: Palette.fifthColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/wallet.png',
                          color: Palette.primaryColor,
                          width: 60,
                          height: 60,
                        ),
                        Container(
                            width: 30,
                            child: CustomDivider(
                                dividerColor: Palette.thirdColor)),
                        Text(
                          'My Wallet',
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
