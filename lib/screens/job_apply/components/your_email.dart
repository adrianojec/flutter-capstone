import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class YourEmail extends StatelessWidget {
  const YourEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          yourEmail,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const VerticalHeightSpacing(height: 10),
        Container(
          color: Colors.white,
          width: size.width,
          child: const CustomTextField(hintText: ''),
        ),
      ],
    );
  }
}
