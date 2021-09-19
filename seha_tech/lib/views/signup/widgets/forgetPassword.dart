import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/resetpassword.dart';
import 'package:seha_tech/services/Authentication%20Services/signUpServices.dart';
import 'package:seha_tech/views/rememberPassword/widgets/requestResetWidget.dart';

ResetPasswordModel resetPasswordModel = new ResetPasswordModel();

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ResetPasswordModel>(
      model: resetPasswordModel,
      child: GestureDetector(
        onTap: () async {
          var response = await getAllPayers();
          resetPasswordModel.setPayers = response;

          print(response);

          showDialog(
              context: context,
              builder: (_) => ResetRequest(),
              barrierDismissible: true);
        },
        child: Text(
          'Forgot  Password ?',
          style: TextStyle(color: Palette.thirdColor),
        ),
      ),
    );
  }
}
