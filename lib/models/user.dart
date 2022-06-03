class User {
  final String userName;
  final String userImage;
  final String email;
  final String password;
  String firstName;
  String lastName;

  User({
    required this.userName,
    required this.userImage,
    required this.email,
    required this.password,
    this.firstName = '',
    this.lastName = '',
  });
}
