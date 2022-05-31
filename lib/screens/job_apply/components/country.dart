import 'package:capstone_flutter/mock_data/dropdown_data.dart';
import 'package:capstone_flutter/widgets/custom_dropdown_form.dart';
import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Country',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 10),
        CustomDropDownForm(
          value: 'Philippines',
          width: size.width,
          menuItems: DropDownData.locations
              .map((locationName) => DropdownMenuItem<String>(
                    value: locationName,
                    child: Text(locationName),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
