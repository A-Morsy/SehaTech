import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/main.dart';
import 'package:seha_tech/models/userModel.dart';
import 'package:seha_tech/views/treatmentViews/widgets/treatmentSecondView.dart';
import 'package:seha_tech/views/treatmentViews/widgets/treatmentFourthView.dart';
import 'package:seha_tech/views/treatmentViews/widgets/treatmentFirstView.dart';
import 'package:seha_tech/views/treatmentViews/widgets/treatmentThirdView.dart';
import '../signup/widgets/signUpStepWedgit.dart';

class TreatmentView extends StatefulWidget {
  @override
  _TreatmentView createState() => _TreatmentView();
}

class _TreatmentView extends State<TreatmentView> {
  int _viewNumber = 1;
  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Treatment',
        callback: (val) => setState(() => {}),
        body: body(),
        icon: Icon(Icons.double_arrow_outlined, color: Palette.secondaryColor),
        viewName: "Treatment");
  }

  Widget body() {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      //color: Palette.fifthColor,
      padding: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          SignUpStepsWidget(
            size: 2,
            step: _viewNumber,
            bgColor: Palette.fifthColor,
          ),
          if (_viewNumber == 1)
            TreatmentFirstView(
              selected:
                  List.generate(userModel.getProvidersLength, (i) => false),
              callBack: (val) => setState(() => _viewNumber = val),
            )
          else if (_viewNumber == 2)
            TreatmentSecondView(
              callBack: (val) => setState(() => _viewNumber = val),
            )
          // else if (_viewNumber == 3)
          //   TreatmentThirdView(
          //     callBack: (val) => setState(() => _viewNumber = val),
          //   )
          // else if (_viewNumber == 4)
          //   TreatmentFourthView(
          //     callBack: (val) => setState(() => _viewNumber = val),
          //   )
        ],
      ),
    );
  }
}
