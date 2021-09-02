// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<List<String>>> getPayers() async {
  var client = http.Client();

  final response = await client.get('http://dev.sehatech.org:3000/payer');

  if (response.statusCode == 200) {
    var resBody = await jsonDecode(response.body);
    // print(resBody);
    List<List<String>> data = [];
    List<String> payerName = [];
    List<String> payerUrl = [];
    for (var u in resBody) {
      payerName.add(u["name"]);
      payerUrl.add(u["associatedBaseUrl"]);
    }
    ;
    data.add(payerName);
    data.add(payerUrl);
    print(data);

    return data;
  } else {
    throw Exception('Failed to get Payers');
  }
}
