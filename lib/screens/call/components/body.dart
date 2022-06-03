import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/screens/call/components/mute_end_video.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          'Scarlet Witch',
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
        ),
        Text(
          '09:12',
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
        ),
        const VerticalHeightSpacing(height: 70),
        const MuteEndVideoButtons(),
        const VerticalHeightSpacing(height: 40),
      ],
    );
  }
}
