import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/job_apply/job_apply.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            verticalPadding: 10,
            fontWeight: FontWeight.w600,
            buttonWidth: size.width * 1,
            text: 'Apply Now',
            press: () => Navigator.of(context).pushNamed(JobApplyScreen.routeName),
          ),
        ),
        const SizedBox(width: 20),
        IconContainer(
          padding: 17,
          color: Theme.of(context).primaryColor,
          imageSource: SvgPicture.asset('${AssetPath.icon}chat_white.svg'),
          height: 54,
          width: 54,
          border: 12,
        ),
      ],
    );
  }
}
