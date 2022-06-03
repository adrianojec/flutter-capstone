import 'package:capstone_flutter/screens/applications/components/applications_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'Your Applications',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 10),
          const ApplicationsList(),
        ],
      ),
    );
  }
}
