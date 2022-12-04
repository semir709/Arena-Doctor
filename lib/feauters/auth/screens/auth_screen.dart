import 'package:arena/feauters/auth/services/auth_service.dart';
import 'package:arena/feauters/auth/widgets/auth_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _signInFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  void signInUser() {
    authService.signInUser(
        context: context, email: _email.text, password: _password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _signInFormKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                    child: Container(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/images/logo.png'),
                ) //Image.asset('asset/images/flutter-logo.png')),
                    ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: AuthInput(
                  controller: _email,
                  hintText: 'Enter email address',
                  label: 'Email',
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: AuthInput(
                    controller: _password,
                    hintText: 'Enter passowrd',
                    label: 'Password',
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      signInUser();
                    }
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF04E762),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
