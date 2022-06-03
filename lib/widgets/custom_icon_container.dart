import 'package:capstone_flutter/constants/device_size.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color color;
  final Widget imageSource;
  final double height;
  final double width;
  final double border;
  final double padding;

  const IconContainer({
    Key? key,
    required this.color,
    required this.imageSource,
    required this.height,
    required this.width,
    required this.border,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height / MockUpDevice.mockUpHeight * size.height,
      width: width / MockUpDevice.mockUpHeight * size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding / MockUpDevice.mockUpHeight * size.height),
        child: imageSource,
      ),
    );
  }
}
