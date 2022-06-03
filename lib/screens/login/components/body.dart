import 'dart:io';

import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/login/components/text_fields.dart';
import 'package:capstone_flutter/screens/register/register.dart';
import 'package:capstone_flutter/widgets/custom_alert_dialog.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:capstone_flutter/widgets/or_continue_with.dart';
import 'package:capstone_flutter/http_exceptions/http_exceptions.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = false;
  String result = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              welcomeBack,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              fillYourDetails,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          const VerticalHeightSpacing(height: 30),
          const TextFields(),
          const VerticalHeightSpacing(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  forgetPassword,
                  textScaleFactor: scale,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
          const VerticalHeightSpacing(height: 40),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : CustomButton(
                  verticalPadding: 10,
                  buttonWidth: size.width,
                  text: login.toUpperCase(),
                  fontWeight: FontWeight.w500,
                  press: () async {
                    if (TextFields.formKey.currentState!.validate()) {
                      setState(() => isLoading = !isLoading);
                      result = await HttpException().postLoginResult(
                        email: TextFields.emailController.value.text,
                        password: TextFields.passwordController.value.text,
                      );
                      print(result);
                    }
                    showDialog(context: context, builder: (context) => CustomAlertDialog(message: result));
                    setState(() => isLoading = !isLoading);
                  },
                ),
          const VerticalHeightSpacing(height: 40),
          OrContinueWith(
            text: newUser,
            linkText: createAccount,
            onTap: () => Navigator.of(context).pushNamed(RegisterScreen.routeName),
          ),
        ],
      ),
    );
  }
}
