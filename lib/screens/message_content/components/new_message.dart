import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: IconContainer(
            color: Theme.of(context).primaryColor,
            imageSource: SvgPicture.asset('${AssetPath.icon}plus.svg'),
            height: 46,
            width: 46,
            border: 30,
            padding: 14,
          ),
        ),
        const SizedBox(width: 11),
        Expanded(
          child: CustomTextField(
            hintText: typeAMessage,
            suffixIcon: IconButton(
              splashRadius: 10,
              onPressed: () {},
              icon: SvgPicture.asset('${AssetPath.icon}send.svg'),
            ),
          ),
        ),
      ],
    );
  }
}
