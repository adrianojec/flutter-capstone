import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/mock_data/dropdown_data.dart';
import 'package:capstone_flutter/widgets/custom_dropdown_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationAndSalary extends StatelessWidget {
  const LocationAndSalary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            CustomDropDownForm(
              width: size.width * 0.42,
              value: 'Philippines',
              menuItems: DropDownData.locations
                  .map((locationName) => DropdownMenuItem<String>(
                        value: locationName,
                        child: Text(
                          locationName,
                          textScaleFactor: scale,
                        ),
                      ))
                  .toList(),
              prefixIcon: Container(
                margin: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset('${AssetPath.icon}location.svg'),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              salary,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            CustomDropDownForm(
              width: size.width * 0.42,
              value: '\$2k - \$5k',
              menuItems: DropDownData.salaries
                  .map((amount) => DropdownMenuItem<String>(
                        value: amount,
                        child: Text(
                          amount,
                          textScaleFactor: scale,
                        ),
                      ))
                  .toList(),
              prefixIcon: Container(
                margin: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset('${AssetPath.icon}wallet.svg'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
