import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'Email Address',
          icon: SvgPicture.asset('${AssetPath.icon}message.svg'),
        ),
        const SizedBox(height: 24),
        CustomTextField(
          hintText: 'Password',
          icon: SvgPicture.asset('${AssetPath.icon}lock.svg'),
          suffixIcon: IconButton(
            icon: SvgPicture.asset(
              '${AssetPath.icon}eye_slash.svg',
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
