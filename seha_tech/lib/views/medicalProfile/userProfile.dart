import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/appModel.dart';
import 'package:seha_tech/views/medicalProfile/widgets/firstBlock.dart';
import 'package:seha_tech/views/medicalProfile/widgets/secondBlock.dart';
import 'package:seha_tech/views/medicalProfile/widgets/userMainSubContainer.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import './userProfileMainWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

AppModel appModel = AppModel();

class _UserProfile extends State<UserProfile> {
  int _viewChange = 1;
  set string(int value) => setState(() => _viewChange = value);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<AppModel>(model: appModel, child: _buildContent());
  }

  Widget _buildContent() {
    return Container(
        child: AppSkeleton(
      title: AppLocalizations.of(context)!
          .medicalProfile_userMainSubContainer_medical,
      callback: (val) => setState(() => _viewChange = val),
      body: UserProfileMainWidget(widgetsList: [
        UserInfoBlock(),
        CustomDivider(dividerColor: Palette.thirdColor),
        _viewChange == 1
            ? userMainSubContainer(
                callback: (val) => setState(() => _viewChange = val),
              )
            : MedicalList()
      ]),
      icon: Icon(Icons.menu, color: Colors.white),
      viewName: "Medical Profile",
    ));
  }
}
