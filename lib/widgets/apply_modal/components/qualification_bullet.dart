import 'package:flutter/material.dart';

class QualificationBullet extends StatelessWidget {
  const QualificationBullet({
    Key? key,
    required this.qualification,
  }) : super(key: key);

  final String qualification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(' • '),
          Flexible(
            child: Text(
              qualification,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
