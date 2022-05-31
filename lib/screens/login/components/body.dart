import 'package:capstone_flutter/home_with_navbar.dart';
import 'package:capstone_flutter/screens/login/components/text_fields.dart';
import 'package:capstone_flutter/screens/register/register.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/or_continue_with.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Fill your details or continue\nwith social media',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          const SizedBox(height: 30),
          const TextFields(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forget Password?',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          CustomButton(
            verticalPadding: 10,
            buttonWidth: size.width,
            text: 'LOG IN',
            press: () => Navigator.of(context).pushNamed(HomeWithNavbar.routeName),
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 40),
          OrContinueWith(
            text: 'New User? ',
            linkText: 'Create Account',
            onTap: () => Navigator.of(context).pushNamed(RegisterScreen.routeName),
          ),
        ],
      ),
    );
  }
}
