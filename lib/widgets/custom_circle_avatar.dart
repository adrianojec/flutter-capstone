import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageSource;
  final double height;
  final double width;

  const CustomCircleAvatar({
    Key? key,
    required this.imageSource,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height / MockUpDevice.mockUpHeight * size.height,
      width: width / MockUpDevice.mockUpHeight * size.height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imageSource),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
