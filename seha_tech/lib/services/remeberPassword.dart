import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<dynamic> requestPasswordReset(String email) async {
  String url = 'payer1.sehatech.org:3000';
  try {
    Map<String, String> headers = {"email": email};
    var response =
        await http.get("http://$url/patient/auth/reset", headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      Map<String, dynamic> resbody = {
        "result": response.statusCode,
        "body": jsonDecode(response.body)
      };

      return resbody;
    } else {
      Map<String, dynamic> dataa = {"result": response.statusCode};

      return dataa;
    }
  } catch (error) {
    return Future.error(
        'Unfortunatly an error has occurred, sorry for the inconveniance. Please try again later.');
  }
}

Future<dynamic> resetPassword(String code, String newPassword,String email) async {
  try {
    String url = 'payer1.sehatech.org:3000';
    Map<String, String> headers = {
      "Content-type": "application/json",
      "email": email
    };
    Map data = {'code': code, 'newPassword': newPassword};
    var response = await http.put("http://$url/patient/auth/reset",
        headers: headers, body: jsonEncode(data));
    print(response.statusCode);

    if (response.statusCode == 200) {
      Map<String, dynamic> resbody = {
        "body": jsonDecode(response.body),
        "code": response.statusCode
      };
      return resbody;
    } else {
      Map<String, dynamic> resbody =  jsonDecode(response.body);
      return resbody;
    }
  } catch (error) {
    return Future.error(
        'Unfortunatly an error has occurred, sorry for the inconveniance. Please try again later.');
  }
}
