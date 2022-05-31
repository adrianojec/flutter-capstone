import 'package:capstone_flutter/models/review.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${review.name}\n-----'),
            Text(
              '"${review.review}"',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
