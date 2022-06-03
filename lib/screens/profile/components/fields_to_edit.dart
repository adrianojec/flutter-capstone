import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FieldsToEdit extends StatelessWidget {
  const FieldsToEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const VerticalHeightSpacing(height: 10),
        const CustomTextField(hintText: 'Tony Stark'),
        const VerticalHeightSpacing(height: 30),
        Text(
          yourEmail,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const VerticalHeightSpacing(height: 10),
        const CustomTextField(hintText: 'tonystark@gmail.com'),
        const VerticalHeightSpacing(height: 10),
        Text(
          password,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const VerticalHeightSpacing(height: 10),
        const CustomTextField(hintText: '**************'),
      ],
    );
  }
}
