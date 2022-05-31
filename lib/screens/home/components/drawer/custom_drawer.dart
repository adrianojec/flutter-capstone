import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/home/components/drawer/custom_drawer_menu_items.dart';
import 'package:capstone_flutter/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCircleAvatar(
              height: 80,
              width: 80,
              imageSource: '${AssetPath.image}tony.jpg',
            ),
            Text(
              'Tony Stark',
              style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              'tony_stark@gmail.com',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
            ),
            const DrawerMenuItems(),
          ],
        ),
      ),
    );
  }
}
