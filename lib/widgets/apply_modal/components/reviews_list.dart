import 'package:capstone_flutter/models/review.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/review_card.dart';
import 'package:flutter/material.dart';

class ReviewsList extends StatelessWidget {
  final List<Review> reviews;

  const ReviewsList({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: reviews.length,
            itemBuilder: (context, index) => ReviewCard(review: reviews[index]),
          ),
        ),
      ],
    );
  }
}
