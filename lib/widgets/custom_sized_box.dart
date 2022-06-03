import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class VerticalHeightSpacing extends StatelessWidget {
  final double height;

  const VerticalHeightSpacing({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(height: height / MockUpDevice.mockUpHeight * size.height);
  }
}
