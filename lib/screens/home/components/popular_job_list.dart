import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/screens/home/components/popular_job_card.dart';
import 'package:flutter/material.dart';

class PopularJobList extends StatelessWidget {
  final List<Job> popularJobs;

  const PopularJobList({
    Key? key,
    required this.popularJobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    popularJobs.sort((a, b) => b.numberOfApplicants.compareTo(a.numberOfApplicants));
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularJobs.length,
        itemBuilder: (context, index) => JobItemCard(index: index),
      ),
    );
  }
}
