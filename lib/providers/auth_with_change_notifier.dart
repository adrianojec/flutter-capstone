import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String apiKey = 'AIzaSyAZRvlWKqNz6ntzmH4eXdTb4Cs2HaO_MyA';

  Future<String> _authenticate({
    required String email,
    required String password,
    required String authMode,
    required String successMessage,
  }) async {
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:$authMode?key=$apiKey';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    final responseBody = json.decode(response.body);
    return responseBody['error'] != null ? responseBody['error']['message'] : successMessage;
  }

  Future<String> signUp({
    required String email,
    required String password,
  }) async {
    return _authenticate(
      email: email,
      password: password,
      authMode: 'signUp',
      successMessage: 'Registered Successfully',
    );
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    return _authenticate(
      email: email,
      password: password,
      authMode: 'signInWithPassword',
      successMessage: 'Validation Success',
    );
  }
}
