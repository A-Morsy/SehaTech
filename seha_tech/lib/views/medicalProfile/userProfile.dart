import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/medicalProfile/widgets/firstBlock.dart';
import 'package:seha_tech/views/medicalprofile/widgets/secondBlock.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import './userProfileMainWidget.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserProfileMainWidget(
          widgetsList: [
          UserInfoBlock(),
          CustomDivider(dividerColor: Palette.thirdColor),
          MedicalList()
      ],
          title: 'Medical Profile'),
    );
  }
}
