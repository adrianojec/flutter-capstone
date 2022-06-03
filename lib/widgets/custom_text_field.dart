import 'package:capstone_flutter/input_validator/input_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool hideTextInput;
  final SvgPicture? icon;
  final IconButton? suffixIcon;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    this.onChanged,
    this.hideTextInput = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hintText == 'Password' ? !hideTextInput : false,
      validator: (value) {
        switch (hintText) {
          case 'Email Address':
            InputValidator.emailAddress(value!);
            return null;
          case 'Password':
            InputValidator.password(value!);
            return null;
        }
      },
      onChanged: (value) {
        if (onChanged != null) onChanged;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        prefixIcon: icon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
