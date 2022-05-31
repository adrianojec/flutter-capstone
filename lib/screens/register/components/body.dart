import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:capstone_flutter/widgets/or_continue_with.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Register Account',
            style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            'Fill your details or continue\nwith your social media',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            icon: SvgPicture.asset('assets/svg/icons/user_icon.svg'),
            hintText: 'User Name',
          ),
          const SizedBox(height: 24),
          CustomTextField(
            icon: SvgPicture.asset('assets/svg/icons/message.svg'),
            hintText: 'Email Address',
          ),
          const SizedBox(height: 24),
          CustomTextField(
            icon: SvgPicture.asset('assets/svg/icons/lock.svg'),
            hintText: 'Password',
            suffixIcon: IconButton(
              icon: SvgPicture.asset('assets/svg/icons/eye_slash.svg'),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(
            verticalPadding: 10,
            buttonWidth: size.width,
            text: 'SIGN UP',
            press: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 40),
          OrContinueWith(
            text: 'Already Have an Account? ',
            linkText: 'Log In',
            onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
          ),
        ],
      ),
    );
  }
}
