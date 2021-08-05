// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class SignUpController {
//    static Future<http.Response> signup(
//         {required String email, required String password}) async {
//     var params = {
//         'email': email,
//         'password': password,
//     };

//      var response = await http.post('https:\\dev.sehatech.org:5000/auth/patient',
//         body: json.encode(params));

//     /// If the first API call is successful
//     if (response.statusCode == HttpStatus.ok) {


//         /// Do something related to the response of second api call here
//     }

//     /// Do other stuffs here

//         return response;
//     }
// }