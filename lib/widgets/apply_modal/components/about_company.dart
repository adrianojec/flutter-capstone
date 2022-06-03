import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class AboutCompany extends StatelessWidget {
  final String about;

  const AboutCompany({
    Key? key,
    required this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalHeightSpacing(height: 15),
        Text(
          'About',
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        const VerticalHeightSpacing(height: 5),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Text(
              about,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
