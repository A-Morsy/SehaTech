import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/medicalprofile/widgets/medicalWidget.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MedicalList extends StatelessWidget {
  const MedicalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
      MedicalWidget(text: AppLocalizations.of(context)!
                                  .medicalProfile_secondBlock_PastMedicalHistory,),
      CustomDivider(dividerColor: Palette.secondaryColor),
      MedicalWidget(text: AppLocalizations.of(context)!
                                  .medicalProfile_secondBlock_Allergies,),
      CustomDivider(dividerColor: Palette.secondaryColor),
      MedicalWidget(text: AppLocalizations.of(context)!
                                  .medicalProfile_secondBlock_CurrentMedications,),
      CustomDivider(dividerColor: Palette.secondaryColor),
      MedicalWidget(text: AppLocalizations.of(context)!
                                  .medicalProfile_secondBlock_History_Previous,),
      CustomDivider(dividerColor: Palette.secondaryColor),
      MedicalWidget(text: AppLocalizations.of(context)!
                                  .medicalProfile_secondBlock_PendingTreatments,),
      CustomDivider(dividerColor: Palette.secondaryColor),
      ],
      )
    );
  }
}