import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seha_tech/Reusable/palette.dart';
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
          widgetsList: [Container(child: Text('hello'))],
          title: 'Medical Profile'),
    );
  }
}
