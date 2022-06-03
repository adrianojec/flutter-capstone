import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String id;
  final String userName;
  final String userImage;
  final String password;
  String firstName;
  String lastName;

  User({
    required this.id,
    required this.userName,
    required this.userImage,
    required this.password,
    this.firstName = '',
    this.lastName = '',
  });

  static const firebaseUrl =
      'https://console.firebase.google.com/project/flutter-capstone-a1d66/database/flutter-capstone-a1d66-default-rtdb/data/~2F';

  List<User> _users = List.empty(growable: true);

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }
}
