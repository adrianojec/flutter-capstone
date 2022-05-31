import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropDown extends StatelessWidget {
  final double size;
  final TextStyle? style;
  final String value;
  final Function onChanged;
  final List<DropdownMenuItem<String>> menuItems;

  const CustomDropDown({
    Key? key,
    required this.size,
    this.style,
    required this.menuItems,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: value,
            icon: SvgPicture.asset('${AssetPath.icon}dropdown.svg'),
            style: style ?? Theme.of(context).textTheme.bodyText1!.copyWith(fontFamily: 'Sofia'),
            onChanged: (String? newValue) => onChanged(newValue),
            items: menuItems,
          ),
        ),
      ),
    );
  }
}
