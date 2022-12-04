import 'package:flutter/cupertino.dart';

class AuthService {
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) {
    if (email == 'e' && password == 'p') {
      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    } else {
      //not login
    }
  }
}
