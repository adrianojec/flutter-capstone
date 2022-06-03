import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FirstAndLastName extends StatelessWidget {
  const FirstAndLastName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstName,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const VerticalHeightSpacing(height: 10),
            SizedBox(
              width: size.width * 0.4,
              child: const CustomTextField(hintText: ''),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lastName,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const VerticalHeightSpacing(height: 10),
            SizedBox(
              width: size.width * 0.4,
              child: const CustomTextField(hintText: ''),
            )
          ],
        ),
      ],
    );
  }
}
