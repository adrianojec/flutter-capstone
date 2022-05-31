import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrContinueWith extends StatelessWidget {
  final String text;
  final String linkText;
  final Function onTap;

  const OrContinueWith({
    Key? key,
    required this.text,
    required this.linkText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 2,
              width: 20,
              color: const Color(0xFF9E9E9E),
            ),
            Text(
              'Or Continue with',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: const Color(0xFF6A6A6A),
                  ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 2,
              width: 20,
              color: const Color(0xFF9E9E9E),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(
              color: Color(0xFFE9F4FF),
              imageSource: SvgPicture.asset('assets/svg/icons/google.svg'),
              height: 60,
              width: 60,
              border: 20,
            ),
            const SizedBox(width: 20),
            IconContainer(
              color: const Color(0xFF4460A0),
              imageSource: SvgPicture.asset('assets/svg/icons/facebook.svg'),
              height: 60,
              width: 60,
              border: 20,
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () => onTap(),
              child: Text(
                linkText,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
