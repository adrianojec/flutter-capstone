import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_circle_avatar.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageAndName extends StatelessWidget {
  const ImageAndName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
          width: size.width * 0.2,
          child: Stack(
            children: [
              CustomCircleAvatar(
                imageSource: '${AssetPath.image}tony.jpg',
                height: size.height * 0.1,
                width: size.width * 0.2,
              ),
              Positioned(
                bottom: 0,
                right: 5,
                child: IconContainer(
                  color: Theme.of(context).primaryColor,
                  imageSource: SvgPicture.asset('${AssetPath.icon}edit.svg'),
                  height: 20,
                  width: 20,
                  border: 30,
                  padding: 6,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Tony Stark',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
