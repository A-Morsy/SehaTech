import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpServices {
//var url = Uri.https('http://dev.sehatech.org:5000', 'auth/patient/login');

  get(url) async {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //var itemCount = jsonResponse['totalItems'];
      print('response: $jsonResponse.');
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return response.statusCode;
  }

  Future<http.Response> signIn(String email, String password) {

    var response = http.post(
      Uri.parse('http://dev.sehatech.org:5000/auth/patient/login'),
      body: convert.jsonEncode(<String, String>{
        "email": email,
        "password": password
      }),
    ) ;

    print (response) ;
    return response;
  }
}
