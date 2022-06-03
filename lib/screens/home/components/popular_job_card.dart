import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/mock_data/job_data.dart';
import 'package:capstone_flutter/widgets/apply_modal/apply_modal.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class JobItemCard extends StatelessWidget {
  final int index;

  const JobItemCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Jobs>(context).jobs[index];
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          constraints: BoxConstraints(
            maxHeight: size.height * 0.86,
            minWidth: size.width,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          context: context,
          builder: (BuildContext context) => ApplyModal(job: job),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: size.height * 0.38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      IconContainer(
                        color: job.company.color,
                        imageSource: Image.asset(job.company.logo),
                        height: 40,
                        width: 40,
                        border: 13,
                        padding: 8,
                      ),
                      Text(
                        job.company.name,
                        textScaleFactor: scale,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  SvgPicture.asset('${AssetPath.icon}fav.svg'),
                ],
              ),
              const VerticalHeightSpacing(height: 20),
              Text(
                job.name,
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const VerticalHeightSpacing(height: 16),
              Row(
                children: [
                  Text(
                    '${job.salary}/m ',
                    textScaleFactor: scale,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    ' ${job.company.location}',
                    textScaleFactor: scale,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
