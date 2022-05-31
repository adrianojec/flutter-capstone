import 'package:capstone_flutter/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        CustomListTile(
          titleText: 'New Post',
          subtitleText: 'if any new post update',
          isOn: true,
        ),
        CustomListTile(
          titleText: 'Got Hired',
          subtitleText: 'if you get hired by any company',
          isOn: true,
        ),
        CustomListTile(
          titleText: 'Got Rejected',
          subtitleText: 'if you are rejected by any company',
          isOn: false,
        ),
        CustomListTile(
          titleText: 'Message',
          subtitleText: 'Got any new message',
          isOn: false,
        ),
        CustomListTile(
          titleText: 'Call',
          subtitleText: 'Have a call',
          isOn: false,
        ),
        CustomListTile(
          titleText: 'Dark Mode',
          subtitleText: 'Enable dark theme',
          isOn: false,
        ),
      ],
    );
  }
}
