import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<List<dynamic>> getAllPayers() async {
  String url = "dev.sehatech.org:3000";
  try {
    var response = await http.get(
      "http://$url/payer",
    );
    if (response.statusCode == 200) {
      var responseBody = response.body;
      List<dynamic> resBody = await jsonDecode(responseBody);
      return resBody;
    } else {
      List<dynamic> dataa = ["result", "Server Error $response.statusCode"];
      print(response.statusCode);
      return dataa;
    }
  } catch (e) {
    print(e);
    return Future.error(
        "An error has occurred, sorry for any inconvenience. Please try again later");
  }
}

Future<Map<String, dynamic>> signUp(
    String email,
    String password,
    bool consentForResearch,
    String dateOfDataPrivacyAcceptance,
    String firstName,
    String middleName,
    String lastName,
    String insuranceCardId,
    String phoneNumber,
    String dateOfBirth,
    String gender,
    String url) async {
  try {
    Map<String, String> headers = {"Content-type": "application/json"};
    Map data = {
      "email": email,
      "password": password,
      "consentForResearch": consentForResearch,
      "dateOfDataPrivacyAcceptance": dateOfDataPrivacyAcceptance,
      "firstName": firstName,
      "middleName": middleName,
      "lastName": lastName,
      "insuranceCardId": insuranceCardId,
      "phoneNumber": phoneNumber,
      "dateOfBirth": dateOfBirth,
      "gender": gender
    };
    var response = await http.post("http://$url/patient/auth",
        headers: headers, body: jsonEncode(data));
    if (response.statusCode == 200) {
      var responseBody = response.body;
      Map<String, dynamic> resBody = await jsonDecode(responseBody);
      print(resBody);
      return resBody;
    } else {
      Map<String, dynamic> dataa = {"result": response.statusCode};

      return dataa;
    }
  } catch (e) {
    return Future.error(
        "An error has occurred, sorry for any inconvenience. Please try again later");
  }
}
