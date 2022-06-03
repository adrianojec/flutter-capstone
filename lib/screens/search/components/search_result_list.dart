import 'package:capstone_flutter/mock_data/job_data.dart';
import 'package:capstone_flutter/screens/search/components/search_result_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jobs = Provider.of<Jobs>(context).jobs;
    return Expanded(
      child: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) => SearchResultCard(job: jobs[index]),
      ),
    );
  }
}
