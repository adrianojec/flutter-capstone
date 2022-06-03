import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/screens/home/components/recent_post_card.dart';
import 'package:flutter/material.dart';

class RecentPostList extends StatelessWidget {
  final List<Job> recentJobs;

  const RecentPostList({
    Key? key,
    required this.recentJobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    recentJobs.sort((a, b) => b.datePosted.compareTo(a.datePosted));
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: recentJobs.length,
      itemBuilder: (context, index) => RecentPostCard(job: recentJobs[index]),
    );
  }
}
