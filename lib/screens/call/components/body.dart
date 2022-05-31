import 'package:capstone_flutter/screens/call/components/mute_end_video.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Scarlet Witch',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
        ),
        Text(
          '09:12',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
        ),
        const SizedBox(height: 70),
        const MuteEndVideoButtons(),
      ],
    );
  }
}
