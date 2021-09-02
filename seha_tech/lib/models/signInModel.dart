// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';

class SignInModel extends Model {
  String email = '', password = '', temp = '', url = '', payerName = '';

  get getEmail => this.email;

  get getUrl => this.url;

  get getPayerName => this.payerName;

  get getPassword => this.password;

  get getTemp => this.temp;

  set setEmail(email) => this.email = email;

  set setTemp(temp) => this.temp = temp;

  set setPayerName(payerName) => this.payerName = payerName;

  set setPassword(password) => this.password = password;

  set seturl(url) => this.url = url;
}
