import 'dart:convert';

import 'package:capstone_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Users with ChangeNotifier {
  final String baseUrl = 'https://flutter-capstone-a1d66-default-rtdb.firebaseio.com/';

  Future<void> registerUser(User user) async {
    final url = '${baseUrl}users.json';
    await http.post(
      Uri.parse(url),
      body: json.encode({
        'userName': user.userName,
        'userImage': user.userImage,
        'email': user.email,
        'password': user.password,
        'firstName': user.firstName,
        'lastName': user.lastName,
      }),
    );
  }
}
