import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/appSkeleton.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/userModel.dart';
import 'package:seha_tech/views/myPolicy/myPolicyBody.dart';

class MyPolicyView extends StatefulWidget {
  @override
  _MyPolicyView createState() => _MyPolicyView();
}

class _MyPolicyView extends State<MyPolicyView> {
  // ignore: unused_field
  int _viewChange = 2;
  set string(int value) => setState(() => _viewChange = value);
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Widget _buildContent() {
    return Container(
      child: AppSkeleton(
        icon: Icon(Icons.arrow_back_ios_new_outlined,
            color: Palette.secondaryColor),
        title: 'My Policy',
        callback: (val) => setState(() => _viewChange = val),
        body: MyPolicyBody(),
        viewName: "Policy",
      ),
    );
  }
}
