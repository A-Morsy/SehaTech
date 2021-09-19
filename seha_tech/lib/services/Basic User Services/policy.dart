import 'dart:convert';
import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<dynamic> getUserPolicy(String token, String url) async {
  try {
    var response = await http.get("http://$url/policy/user",
        headers: {HttpHeaders.authorizationHeader: "Bearer $token"});
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
