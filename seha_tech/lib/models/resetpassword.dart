import 'package:scoped_model/scoped_model.dart';

class ResetPasswordModel extends Model {
  String password = ' ', newPassword = '', otpCode = '', email = '', url = '';

  String temp = '';

  var payers = [];

  String choosenPayer = "";

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

  get getUrl => this.url;

  set setUrl(url) => this.url = url;

  get getChoosenPayer => this.choosenPayer;

  set setChoosenPayer(var choosenPayer) {
    this.choosenPayer = choosenPayer;
  }

  get getPayers => this.payers;

  set setPayers(List<dynamic> payers) =>
      {this.payers = payers, notifyListeners()};
}
