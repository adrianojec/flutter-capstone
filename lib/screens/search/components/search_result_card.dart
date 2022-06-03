import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/widgets/apply_modal/apply_modal.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchResultCard extends StatelessWidget {
  final Job job;

  const SearchResultCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          constraints: BoxConstraints(
            maxHeight: size.height * 0.80 / MockUpDevice.mockUpWidth * size.width,
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
      child: Card(
        margin: const EdgeInsets.only(bottom: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          leading: IconContainer(
            color: job.company.color,
            imageSource: Image.asset(job.company.logo),
            height: 50,
            width: 50,
            border: 20,
            padding: 14,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.company.name,
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
              ),
              Text(
                job.name,
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16),
              ),
            ],
          ),
          subtitle: Text(
            '${job.salary}/m    ${job.company.location}',
            textScaleFactor: scale,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('${AssetPath.icon}fav.svg'),
              Text(
                '${DateTime.now().difference(job.datePosted).inHours}h',
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
