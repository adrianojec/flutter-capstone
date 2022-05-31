import 'package:capstone_flutter/constants/palette.dart';
import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/about_company.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/qualification_list.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/reviews_list.dart';
import 'package:flutter/material.dart';

class JobInfo extends StatelessWidget {
  final Job job;

  const JobInfo({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List informationTitle = [
      'Description',
      'Company',
      'Reviews',
    ];

    return DefaultTabController(
      length: informationTitle.length,
      child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Palette.kBodyColor,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
            ),
            labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
            physics: const BouncingScrollPhysics(),
            tabs: informationTitle.map((title) => Tab(text: title)).toList(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: TabBarView(
              children: [
                QualificationList(qualifications: job.qualifications),
                AboutCompany(about: job.company.about),
                ReviewsList(reviews: job.company.reviews),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
