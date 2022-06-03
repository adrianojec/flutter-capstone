import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/profile/components/fields_to_edit.dart';
import 'package:capstone_flutter/screens/profile/components/image_and_name.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const VerticalHeightSpacing(height: 20),
              const ImageAndName(),
              const FieldsToEdit(),
              const VerticalHeightSpacing(height: 50),
              CustomButton(
                verticalPadding: 10,
                buttonWidth: MediaQuery.of(context).size.width,
                text: saveNow,
                press: () {},
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
