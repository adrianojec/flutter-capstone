import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class YourEmail extends StatelessWidget {
  const YourEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Email',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          width: size.width,
          child: const CustomTextField(hintText: ''),
        ),
      ],
    );
  }
}
