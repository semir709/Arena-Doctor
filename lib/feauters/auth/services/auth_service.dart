import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthService {
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) {
    if (email == 'career@tech387.com' && password == 'Pass123') {
      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    } else {
      //not login
    }
  }
}

// void signInUser({
//   required BuildContext context,
//   required String email,
//   required String password,
// }) async {
//   try {
//     http.Response res = await http.post(
//         Uri.parse('http://192.168.0.14:3000/api/signin'),
//         body: jsonEncode({'email': email, 'password': password}),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8'
//         });

//     print(res);

//     Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
//   } catch (err) {
//     print(err);
//   }
// }
