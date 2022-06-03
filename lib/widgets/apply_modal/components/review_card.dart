import 'package:capstone_flutter/constants/constants.dart';
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
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

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
            Text(
              '${review.name}\n-----',
              textScaleFactor: scale,
            ),
            Text(
              '"${review.review}"',
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
