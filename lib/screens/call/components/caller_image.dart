import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallerImage extends StatelessWidget {
  const CallerImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.17,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('${AssetPath.image}tony.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: (size.width * 0.16) / 2,
          child: IconContainer(
            color: const Color(0xFFFF4A6B),
            imageSource: SvgPicture.asset('${AssetPath.icon}rotation.svg'),
            padding: 7,
            height: 32,
            width: 32,
            border: 30,
          ),
        ),
      ],
    );
  }
}
