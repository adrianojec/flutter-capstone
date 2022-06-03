import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function press;
  final Widget? icon;
  final double buttonWidth;
  final double verticalPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
    this.icon,
    required this.buttonWidth,
    required this.verticalPadding,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Container(
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color ?? Theme.of(context).primaryColor,
      ),
      child: MaterialButton(
        onPressed: () => press(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding / MockUpDevice.mockUpHeight * size.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                textScaleFactor: scale,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: Colors.white,
                    ),
              ),
              if (icon != null) const SizedBox(width: 9),
              if (icon != null) icon!,
            ],
          ),
        ),
      ),
    );
  }
}
