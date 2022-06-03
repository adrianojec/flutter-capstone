import 'package:capstone_flutter/home_with_navbar.dart';
import 'package:capstone_flutter/models/user.dart';
import 'package:capstone_flutter/providers/auth_with_change_notifier.dart';
import 'package:capstone_flutter/providers/users_with_change_notifier.dart';
import 'package:capstone_flutter/screens/login/login.dart';
import 'package:flutter/material.dart';

class HttpException {
  Future<String> postSignUpResult(User user) async {
    final result = await Auth().signUp(
      email: user.email,
      password: user.password,
    );
    if (result == 'EMAIL_EXISTS') return 'Email Address is already in use.';

    await Users().registerUser(user);
    return result;
  }

  Future<String> postLoginResult({required String email, required String password}) async {
    final result = await Auth().login(
      email: email,
      password: password,
    );
    if (result == 'EMAIL_NOT_FOUND') return 'Email Address is not existing.';
    if (result == 'INVALID_PASSWORD') return 'Incorrect Password.';

    return result;
  }

  void resultMessage(String message, BuildContext context) {
    switch (message) {
      case 'EMAIL_EXISTS':
      case 'Email Address is not existing.':
      case 'Incorrect Password.':
        Navigator.of(context).pop();
        break;
      case 'Registered Successfully':
        Navigator.of(context).pushNamed(LoginScreen.routeName);
        break;
      default:
        Navigator.of(context).pushNamed(HomeWithNavbar.routeName);
    }
  }
}
