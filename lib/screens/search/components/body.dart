import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/home/components/search_and_filter.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/modal_filter.dart';
import 'package:capstone_flutter/screens/search/components/search_result_list.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalHeightSpacing(height: 24),
          SearchAndFilter(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                constraints: BoxConstraints(
                  maxHeight: size.height * 0.79 / MockUpDevice.mockUpWidth * size.width,
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                context: context,
                builder: (BuildContext context) => const ModalFilter(),
              );
            },
          ),
          const VerticalHeightSpacing(height: 25),
          Text(
            '35 $jobOpportunity',
            textScaleFactor: scale,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Palette.kTitleColor),
          ),
          const VerticalHeightSpacing(height: 14),
          Row(
            children: [
              CustomButton(
                verticalPadding: 10,
                buttonWidth: size.width / 2.5,
                text: mostRelevant,
                press: () {},
              ),
              const SizedBox(width: 10),
              CustomButton(
                verticalPadding: 10,
                buttonWidth: size.width / 2.5,
                text: mostRecent,
                press: () {},
              ),
            ],
          ),
          const VerticalHeightSpacing(height: 15),
          const SearchResultList(),
        ],
      ),
    );
  }
}
