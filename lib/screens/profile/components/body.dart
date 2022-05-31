import 'package:capstone_flutter/screens/profile/components/fields_to_edit.dart';
import 'package:capstone_flutter/screens/profile/components/image_and_name.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const ImageAndName(),
              const FieldsToEdit(),
              const SizedBox(height: 50),
              CustomButton(
                verticalPadding: 10,
                buttonWidth: size.width,
                text: 'Save Now',
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
