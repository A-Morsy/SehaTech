import 'dart:convert';
import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<List<dynamic>> getAllTreatments(String token, String url) async {
  var response = await http.get("http://$url/services",
      headers: {HttpHeaders.authorizationHeader: "Bearer $token"});

  if (response.statusCode == 200) {
    // Map<String, dynamic> resbody = {
    //   "result": response.statusCode,
    //   "body": jsonDecode(response.body),
    // };

    // // List<dynamic> data = [];
    // // List<String> payerName = [];
    // // List<String> payerId = [];

    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to get Payers');
  }
}

Future<List<dynamic>> getAllProviders(String url, List<int> list) async {
  var response = await http.post("http://$url/patient/services/branches",
      body: jsonEncode(list), headers: {"Content-Type": "application/json"});

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to get Providers');
  }
}

Future<dynamic> requestTreatment(String token, int branchId, String url) async {
  var response =
      await http.post("http://$url/patient/preauthorization", headers: {
    HttpHeaders.authorizationHeader: "Bearer $token",
    "providerbranchid": jsonEncode(branchId),
    "Content-Type": "application/json"
  });
  Map<String, dynamic> dataa = {"result": response.statusCode};

  if (response.statusCode == 200) {
    dataa = {
      "result": response.statusCode,
      "message": jsonDecode(response.body)
    };
  }
  return dataa;
}
