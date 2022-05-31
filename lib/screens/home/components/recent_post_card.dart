import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/widgets/apply_modal/apply_modal.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';

class RecentPostCard extends StatelessWidget {
  final Job job;

  const RecentPostCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      child: Card(
        margin: const EdgeInsets.only(bottom: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: IconContainer(
            color: job.company.color,
            imageSource: Image.asset(job.company.logo),
            height: 50,
            width: 50,
            border: 15,
          ),
          title: Text(
            job.name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
          ),
          subtitle: Text(
            job.type,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
          ),
          trailing: Text(
            '${job.salary}/m',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ),
    );
  }
}
