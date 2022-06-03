import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/mock_data/dropdown_data.dart';
import 'package:capstone_flutter/widgets/custom_dropdown_form.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          country,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        CustomDropDownForm(
          value: 'Philippines',
          width: size.width,
          menuItems: DropDownData.locations
              .map((locationName) => DropdownMenuItem<String>(
                    value: locationName,
                    child: Text(
                      locationName,
                      textScaleFactor: scale,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
