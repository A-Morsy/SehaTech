import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<dynamic> signIn(String email, String password, String url) async {
  try {
    Map<String, String> headers = {"Content-type": "application/json"};
    Map data = {'email': email, 'password': password};
    var response = await http.post("http://${url}/patient/auth/login",
        headers: headers, body: jsonEncode(data));
    // print(jsonDecode(response.body));
    if (response.statusCode == 200) {
      Map<String, dynamic> resbody = jsonDecode(response.body);
      return resbody['token'];
    } else {
      return response.statusCode;
    }
  } catch (error) {
    return Future.error(
        'Unfortunatly an error has occurred, sorry for the inconveniance. Please try again later.');
  }
}
