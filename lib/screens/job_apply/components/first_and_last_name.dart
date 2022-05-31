import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FirstAndLastName extends StatelessWidget {
  const FirstAndLastName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'First Name',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.4,
              child: const CustomTextField(hintText: ''),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Name',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.4,
              child: const CustomTextField(hintText: ''),
            )
          ],
        ),
      ],
    );
  }
}
