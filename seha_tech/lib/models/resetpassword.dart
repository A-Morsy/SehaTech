import 'package:scoped_model/scoped_model.dart';

class ResetPasswordModel extends Model {
  String password = ' ', newPassword = '', otpCode = '', email = '';

  String temp = '';
  get getTemp => this.temp;

  set setTemp(temp) => this.temp = temp;
  get getOtpCode => this.otpCode;

  set setOtpCode(String otpCode) => this.otpCode = otpCode;
  String get getEmail => this.email;

  set setEmail(String email) => this.email = email;

  String get getPassword => this.password;

  set setPassword(String password) => this.password = password;

  String get getNewPassword => this.newPassword;

  set setNewPassword(String newPassword) => this.newPassword = newPassword;
}
