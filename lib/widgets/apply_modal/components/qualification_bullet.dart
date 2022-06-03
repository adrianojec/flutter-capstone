import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class QualificationBullet extends StatelessWidget {
  const QualificationBullet({
    Key? key,
    required this.qualification,
  }) : super(key: key);

  final String qualification;

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(' • '),
          Flexible(
            child: Text(
              qualification,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
