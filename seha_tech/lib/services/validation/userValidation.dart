mixin InputValidationMixin {
  bool validateName(String value) {
    if (value.length < 2) {
      return true;
    } else {
      return false;
    }
  }

  bool validateCardID(String value) {
    print(value);
    if (value.length < 6) {
      return true;
    } else {
      return false;
    }
  }

  bool validateEmail(String value) {
    if (value.isEmpty) {
      return true;
    }
    String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
        "\\@" +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
        "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
        ")+";
    RegExp regExp = RegExp(p);

    if (regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }

  bool validatePassword(String value) {
    if (value.isEmpty) {
      return true;
    }
    if (value.length < 6) {
      return true;
    }
    return false;
  }

  bool validatePhone(String value) {
    if (value.length != 11) {
      return true;
    } else {
      // ignore: unrelated_type_equality_checks
      if (double.parse(value) != '') {
        return false;
      } else {
        return true;
      }
    }
  }
}
