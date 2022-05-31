import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color color;
  final Widget imageSource;
  final double height;
  final double width;
  final double border;
  final double? padding;

  const IconContainer({
    Key? key,
    required this.color,
    required this.imageSource,
    required this.height,
    required this.width,
    required this.border,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 14.0),
        child: imageSource,
      ),
    );
  }
}
