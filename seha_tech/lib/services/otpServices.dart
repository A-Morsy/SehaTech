// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<int> getOTP(String url, String email) async {
  var client = http.Client();
  Map<String, String> headers = {'email': email};
  final response = await client.get('http://$url/otp/user', headers: headers);

  if (response.statusCode == 200) {
    return response.statusCode;
  } else {
    throw Exception('Failed to get Payers');
  }
}
