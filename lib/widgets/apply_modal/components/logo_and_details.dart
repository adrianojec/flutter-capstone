import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndDetails extends StatelessWidget {
  final Job job;

  const LogoAndDetails({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Column(
      children: [
        const VerticalHeightSpacing(height: 30),
        IconContainer(
          color: job.company.color,
          imageSource: Image.asset(job.company.logo),
          height: 70,
          width: 70,
          border: 20,
          padding: 14,
        ),
        const VerticalHeightSpacing(height: 15),
        Text(
          job.name,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
        ),
        const VerticalHeightSpacing(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${job.company.name} —',
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const VerticalHeightSpacing(height: 10),
            SvgPicture.asset('${AssetPath.icon}location.svg'),
            const SizedBox(width: 5),
            Text(
              job.company.location,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
            )
          ],
        ),
        const VerticalHeightSpacing(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              SvgPicture.asset('${AssetPath.icon}time_bordered.svg'),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  job.type,
                  textScaleFactor: scale,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
                ),
              ),
              Text(
                '${job.salary}/m',
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
