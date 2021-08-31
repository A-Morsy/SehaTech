import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;


Future<Map<String, dynamic>> signIn(String email, String password, String url) async {
  try {
    Map<String, String> headers = {"Content-type": "application/json"};
    Map data = {"email": email, "password": password};
    var response = await http.post(
        "http://$url/patient/auth/login",
        headers: headers,
        body: jsonEncode(data));
    if (response.statusCode == 200) {
      var responseBody = response.body;
      Map<String, dynamic> resBody = await jsonDecode(responseBody);
      print(resBody);
      return resBody;
    } else {
      Map<String, dynamic> dataa = {
        "result": "Email address or password are incorrect"
      };

      print("Email address or password are incorrect");
      return dataa;
    }
  } catch (e) {
    return Future.error("An error has occurred, sorry for any inconvenience. Please try again later" );
  }
}
