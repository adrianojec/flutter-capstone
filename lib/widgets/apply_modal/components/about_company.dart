import 'package:flutter/material.dart';

class AboutCompany extends StatelessWidget {
  final String about;

  const AboutCompany({
    Key? key,
    required this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          'About',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Text(
              about,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
