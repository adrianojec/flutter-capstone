import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final bool isOn;

  const CustomListTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    this.isOn = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
      ),
      subtitle: Text(
        subtitleText,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10),
      ),
      trailing: CupertinoSwitch(
        activeColor: Theme.of(context).primaryColor,
        value: isOn,
        onChanged: (value) {},
      ),
    );
  }
}
