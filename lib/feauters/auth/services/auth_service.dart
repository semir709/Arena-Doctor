import 'dart:convert';
import 'package:arena/providers/doctor_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) {
    if (email == 'career@text387.com' && password == 'Pass123') {
      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    } else {
      //not login
    }
  }
}
