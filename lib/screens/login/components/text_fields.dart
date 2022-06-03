import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFields extends StatefulWidget {
  const TextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();

  static final formKey = GlobalKey<FormState>();
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();
}

class _TextFieldsState extends State<TextFields> {
  bool isHidden = false;

  Icon eyeIcon(bool value) {
    if (value == true) return const Icon(Icons.visibility_outlined);
    return const Icon(Icons.visibility_off_outlined);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: TextFields.formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: TextFields.emailController,
            hintText: emailAddress,
            icon: SvgPicture.asset(
              '${AssetPath.icon}message.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(height: 24),
          CustomTextField(
            controller: TextFields.passwordController,
            hintText: password,
            hideTextInput: isHidden,
            icon: SvgPicture.asset(
              '${AssetPath.icon}lock.svg',
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: IconButton(
              iconSize: 20,
              color: Palette.kBodyColor,
              splashRadius: 5,
              icon: eyeIcon(isHidden),
              onPressed: () => setState(() => isHidden = !isHidden),
            ),
          ),
        ],
      ),
    );
  }
}
