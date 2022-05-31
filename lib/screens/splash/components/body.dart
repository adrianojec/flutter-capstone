import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          'assets/svg/splash_png.png',
          height: size.height * 0.4,
        ),
        const SizedBox(height: 62),
        Text(
          'Find a Perfect\nJob Match',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 34),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Text(
            'Finding your dream job is more easier and faster with JobHub',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 40),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 57),
          child: CustomButton(
            verticalPadding: 17,
            buttonWidth: size.width,
            text: 'Let\'s Get Started',
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
