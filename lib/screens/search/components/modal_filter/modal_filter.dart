import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/components/category_and_sub_category.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/components/job_types.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/components/location_and_salary.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class ModalFilter extends StatefulWidget {
  const ModalFilter({Key? key}) : super(key: key);

  @override
  State<ModalFilter> createState() => _ModalFilterState();
}

class _ModalFilterState extends State<ModalFilter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 4,
              width: 80,
              color: const Color(0xFFE1E1E1),
            ),
            const VerticalHeightSpacing(height: 25),
            Text(
              setFilters,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  CategoryAndSubCategory(),
                  VerticalHeightSpacing(height: 20),
                  LocationAndSalary(),
                  VerticalHeightSpacing(height: 20),
                  JobTypes(),
                ],
              ),
            ),
            const VerticalHeightSpacing(height: 25),
            CustomButton(
              verticalPadding: 10,
              buttonWidth: size.width,
              text: 'Apply Filters',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
