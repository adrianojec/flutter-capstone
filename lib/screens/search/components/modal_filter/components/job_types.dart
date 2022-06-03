import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_job_type_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JobTypes extends StatelessWidget {
  const JobTypes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              jobType,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset('${AssetPath.icon}ellipsis.svg'),
            ),
          ],
        ),
        const VerticalHeightSpacing(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            JobTypeButton(
              text: fullTime,
            ),
            JobTypeButton(
              text: partTime,
            ),
            JobTypeButton(
              text: contract,
            ),
          ],
        ),
        const VerticalHeightSpacing(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const JobTypeButton(
              text: freelance,
            ),
            const JobTypeButton(
              text: remote,
            ),
            Text(
              showAllTypes,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sofia',
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
