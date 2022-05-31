import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_job_type_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JobTypes extends StatelessWidget {
  const JobTypes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Job Type',
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
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              JobTypeButton(
                text: 'Full Time',
              ),
              JobTypeButton(
                text: 'Part Time',
              ),
              JobTypeButton(
                text: 'Contract',
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const JobTypeButton(
                text: 'Freelance',
              ),
              const JobTypeButton(
                text: 'Remote',
              ),
              Text(
                'Show All Types',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sofia',
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
