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
    return Container(
      height: height,
      width: width,
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
