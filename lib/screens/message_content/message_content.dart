import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/screens/call/call.dart';
import 'package:capstone_flutter/screens/message_content/components/new_message.dart';
import 'package:capstone_flutter/widgets/custom_appbar.dart';
import 'package:capstone_flutter/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageContentScreen extends StatelessWidget {
  static const routeName = '/content';

  const MessageContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomAppBar(
                leadingWidget: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset('${AssetPath.icon}back.svg'),
                ),
                titleWidget: Row(
                  children: [
                    const CustomCircleAvatar(
                      imageSource: '${AssetPath.image}tony.jpg',
                      height: 27,
                      width: 27,
                    ),
                    const SizedBox(width: 13),
                    Text(
                      'Tony Stark',
                      textScaleFactor: scale,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                trailingWidget: InkWell(
                  onTap: () => Navigator.of(context).pushNamed(CallScreen.routeName),
                  child: SvgPicture.asset('${AssetPath.icon}call.svg'),
                ),
              ),
              const Spacer(),
              const NewMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
