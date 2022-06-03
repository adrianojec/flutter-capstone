import 'package:capstone_flutter/screens/applications/components/application_card.dart';
import 'package:flutter/material.dart';

class ApplicationsList extends StatelessWidget {
  const ApplicationsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => const ApplicationCard(),
      ),
    );
  }
}
