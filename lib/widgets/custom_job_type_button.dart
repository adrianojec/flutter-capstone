import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class JobTypeButton extends StatelessWidget {
  final String text;

  const JobTypeButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: size.width * 0.27,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Palette.kBodyColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text,
            textScaleFactor: scale,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Sofia',
                ),
          ),
        ),
      ),
    );
  }
}
