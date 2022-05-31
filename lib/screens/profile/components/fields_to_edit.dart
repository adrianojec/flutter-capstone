import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FieldsToEdit extends StatelessWidget {
  const FieldsToEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const SizedBox(height: 10),
        const CustomTextField(hintText: 'Tony Stark'),
        const SizedBox(height: 30),
        Text(
          'Your Email',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const SizedBox(height: 10),
        const CustomTextField(hintText: 'tonystark@gmail.com'),
        const SizedBox(height: 30),
        Text(
          'Password',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Sofia',
              ),
        ),
        const SizedBox(height: 10),
        const CustomTextField(hintText: '**************'),
      ],
    );
  }
}
