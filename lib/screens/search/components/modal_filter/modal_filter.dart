import 'package:capstone_flutter/screens/search/components/modal_filter/components/category_and_sub_category.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/components/job_types.dart';
import 'package:capstone_flutter/screens/search/components/modal_filter/components/location_and_salary.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 4,
            width: 80,
            color: const Color(0xFFE1E1E1),
          ),
          const SizedBox(height: 25),
          Text(
            'Set Filters',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Sofia',
                ),
          ),
          const CategoryAndSubCategory(),
          const LocationAndSalary(),
          const JobTypes(),
          const SizedBox(height: 25),
          CustomButton(
            verticalPadding: 10,
            buttonWidth: size.width,
            text: 'Apply Filters',
            press: () {},
          ),
        ],
      ),
    );
  }
}
