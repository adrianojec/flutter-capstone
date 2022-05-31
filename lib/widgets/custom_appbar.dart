import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? leadingWidget;
  final Widget? titleWidget;
  final Widget? trailingWidget;

  const CustomAppBar({
    Key? key,
    this.leadingWidget,
    this.titleWidget,
    this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (leadingWidget != null) leadingWidget!,
        if (titleWidget != null) titleWidget!,
        trailingWidget != null ? trailingWidget! : Container(margin: const EdgeInsets.only(right: 20)),
      ],
    );
  }
}
