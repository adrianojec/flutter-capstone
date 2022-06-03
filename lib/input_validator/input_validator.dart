class InputValidator {
  static String? password(String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    if (regExp.hasMatch(value)) {
      return 'Password must contain 8 characters with a special, an upper case and lower case letter.';
    }
    return null;
  }

  static String? emailAddress(String value) {
    if (value.isEmpty || !value.contains('@')) return 'Invalid Email format.';
    return null;
  }
}
