import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  final Color color;
  final String svgSource;
  final String text;
  final Function onTap;

  const DrawerItem({
    Key? key,
    required this.color,
    required this.svgSource,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery
        .of(context)
        .size
        .width;

    return InkWell(
      onTap: () => onTap(),
      child: Row(
        children: [
          IconContainer(
            padding: 10,
            color: color,
            imageSource: SvgPicture.asset(svgSource),
            height: 36,
            width: 36,
            border: 30,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            textScaleFactor: scale,
            style: Theme
                .of(context)
                .textTheme
                .headline1!
                .copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
