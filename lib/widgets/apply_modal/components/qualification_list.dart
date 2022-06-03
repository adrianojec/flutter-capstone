import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/qualification_bullet.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class QualificationList extends StatelessWidget {
  final List<String> qualifications;

  const QualificationList({
    Key? key,
    required this.qualifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalHeightSpacing(height: 15),
          Text(
            'Qualifications:',
            textScaleFactor: scale,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const VerticalHeightSpacing(height: 5),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: qualifications.length,
            itemBuilder: (context, index) => QualificationBullet(qualification: qualifications[index]),
          ),
        ],
      ),
    );
  }
}
