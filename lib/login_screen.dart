import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    // Your auth logic here
    return Future.delayed(loginTime).then((_) {
      if (data.name != 'user@example.com' || data.password != '12345') {
        return 'Incorrect username or password';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) => null);
  }

  Future<String?> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) => null);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'gestion des abs',
      onLogin: _authUser,
      onSignup: _signupUser,
      onRecoverPassword: _recoverPassword,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
    );
  }
}
