import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:capstone_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAndFilter extends StatelessWidget {
  final Function onPressed;

  const SearchAndFilter({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            hintText: 'Search here...',
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: 15),
        InkWell(
          onTap: () => onPressed(),
          child: IconContainer(
            color: Theme.of(context).primaryColor,
            imageSource: SvgPicture.asset('${AssetPath.icon}filter.svg'),
            height: 54,
            width: 54,
            border: 15,
            padding: 14,
          ),
        ),
      ],
    );
  }
}
