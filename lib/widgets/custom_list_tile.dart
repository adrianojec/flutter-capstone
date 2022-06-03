import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  bool isOn;

  CustomListTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    this.isOn = false,
  }) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    final scale = MockUpDevice.mockUpWidth / MediaQuery.of(context).size.width;

    return ListTile(
      title: Text(
        widget.titleText,
        textScaleFactor: scale,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
      ),
      subtitle: Text(
        widget.subtitleText,
        textScaleFactor: scale,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10),
      ),
      trailing: CupertinoSwitch(
        activeColor: Theme.of(context).primaryColor,
        value: widget.isOn,
        onChanged: (value) => setState(() => widget.isOn = !widget.isOn),
      ),
    );
  }
}
