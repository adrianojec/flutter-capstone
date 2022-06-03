import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_list_tile.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalHeightSpacing(height: 20),
        CustomListTile(
          titleText: newPost,
          subtitleText: ifAnyNewPostUpdate,
          isOn: true,
        ),
        CustomListTile(
          titleText: gotHired,
          subtitleText: ifYouGetHiredByAnyCompany,
          isOn: true,
        ),
        CustomListTile(
          titleText: gotRejected,
          subtitleText: ifYouAreRejectedByAnyCompany,
          isOn: false,
        ),
        CustomListTile(
          titleText: message,
          subtitleText: gotAnyNewMessage,
          isOn: false,
        ),
        CustomListTile(
          titleText: call,
          subtitleText: haveACall,
          isOn: false,
        ),
        CustomListTile(
          titleText: darkMode,
          subtitleText: enableDarkTheme,
          isOn: false,
        ),
      ],
    );
  }
}
