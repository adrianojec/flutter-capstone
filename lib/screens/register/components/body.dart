import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/http_exceptions/http_exceptions.dart';
import 'package:capstone_flutter/models/user.dart';
import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/widgets/custom_alert_dialog.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:capstone_flutter/widgets/or_continue_with.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isHidden = false;
  bool isLoading = false;
  String result = '';

  Icon eyeIcon(bool value) {
    if (value == true) return const Icon(Icons.visibility_outlined);
    return const Icon(Icons.visibility_off_outlined);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                registerAccount,
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                fillYourDetails,
                textScaleFactor: scale,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const VerticalHeightSpacing(height: 30),
              CustomTextField(
                controller: _usernameController,
                icon: SvgPicture.asset(
                  '${AssetPath.icon}user_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
                hintText: userName,
              ),
              const VerticalHeightSpacing(height: 24),
              CustomTextField(
                controller: _emailController,
                icon: SvgPicture.asset(
                  '${AssetPath.icon}message.svg',
                  fit: BoxFit.scaleDown,
                ),
                hintText: emailAddress,
              ),
              const VerticalHeightSpacing(height: 24),
              CustomTextField(
                controller: _passwordController,
                icon: SvgPicture.asset(
                  '${AssetPath.icon}lock.svg',
                  fit: BoxFit.scaleDown,
                ),
                hintText: password,
                hideTextInput: isHidden,
                suffixIcon: IconButton(
                  iconSize: 20,
                  color: Palette.kBodyColor,
                  splashRadius: 5,
                  icon: eyeIcon(isHidden),
                  onPressed: () => setState(() => isHidden = !isHidden),
                ),
              ),
              const VerticalHeightSpacing(height: 40),
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : CustomButton(
                      verticalPadding: 10,
                      buttonWidth: size.width,
                      text: signUp,
                      press: () async {
                        if (_formKey.currentState!.validate()) {
                          final user = User(
                            userName: _usernameController.value.text,
                            userImage: '${AssetPath.image}tony.jpg',
                            email: _emailController.value.text,
                            password: _passwordController.value.text,
                          );
                          setState(() => isLoading = true);
                          result = await HttpException().postSignUpResult(user);
                        }
                        setState(() => isLoading = false);
                        showDialog(
                          context: context,
                          builder: (context) => CustomAlertDialog(message: result),
                        );
                      },
                      fontWeight: FontWeight.w500,
                    ),
              const VerticalHeightSpacing(height: 40),
              OrContinueWith(
                text: alreadyHaveAnAccount,
                linkText: login,
                onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
