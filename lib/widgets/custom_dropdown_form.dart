import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropDownForm extends StatelessWidget {
  final List<DropdownMenuItem<String>> menuItems;
  final Widget? prefixIcon;
  final String value;
  final double width;

  const CustomDropDownForm({
    Key? key,
    required this.menuItems,
    this.prefixIcon,
    required this.width,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 13),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: DropdownButtonFormField(
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontFamily: 'Sofia'),
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(
            maxWidth: width,
          ),
          prefixIcon: prefixIcon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        value: value,
        icon: SvgPicture.asset('${AssetPath.icon}dropdown.svg'),
        onChanged: (Object? value) {},
        items: menuItems,
      ),
    );
  }
}
