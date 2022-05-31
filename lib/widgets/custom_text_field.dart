import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final SvgPicture? icon;
  final IconButton? suffixIcon;
  final Function(String)? onChanged;
  final String hintText;

  const CustomTextField({
    Key? key,
    this.icon,
    this.suffixIcon,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          onChanged: (value) => onChanged!(value),
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            icon: icon,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
