import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MuteEndVideoButtons extends StatelessWidget {
  const MuteEndVideoButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconContainer(
            color: Colors.white.withOpacity(0.1),
            imageSource: SvgPicture.asset('${AssetPath.icon}mic.svg'),
            height: 46,
            width: 46,
            border: 30,
          ),
          IconContainer(
            color: Theme.of(context).errorColor,
            imageSource: SvgPicture.asset('${AssetPath.icon}phone.svg'),
            padding: 10,
            height: 46,
            width: 46,
            border: 30,
          ),
          IconContainer(
            color: Colors.white,
            imageSource: SvgPicture.asset('${AssetPath.icon}camera.svg'),
            height: 46,
            width: 46,
            border: 30,
          ),
        ],
      ),
    );
  }
}
