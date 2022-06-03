import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;
    return Column(
      children: [
        Image.asset(
          'assets/svg/splash_png.png',
          height: size.height * 0.4,
        ),
        const VerticalHeightSpacing(height: 62),
        Text(
          findAPerfectJobMatch,
          textScaleFactor: scale,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 34),
        ),
        Text(
          findingYourDreamJob,
          textScaleFactor: scale,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const VerticalHeightSpacing(height: 40),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 57),
          child: CustomButton(
            verticalPadding: 17,
            buttonWidth: size.width,
            text: letsGetStarted,
            press: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
            icon: const Icon(
              CupertinoIcons.arrow_right,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
