import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/applications/applications.dart';
import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/screens/profile/profile.dart';
import 'package:capstone_flutter/screens/settings/settings.dart';
import 'package:capstone_flutter/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerMenuItems extends StatelessWidget {
  const DrawerMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.46,
      child: Column(
        children: [
          const SizedBox(height: 30),
          DrawerItem(
            color: const Color(0xFFFF5441),
            svgSource: '${AssetPath.icon}user_white.svg',
            text: 'Edit Profile',
            onTap: () => Navigator.of(context).pushNamed(ProfileScreen.routeName),
          ),
          const SizedBox(height: 20),
          DrawerItem(
            color: const Color(0xFFFF9087),
            svgSource: '${AssetPath.icon}time.svg',
            text: 'Application (8)',
            onTap: () => Navigator.of(context).pushNamed(ApplicationScreen.routeName),
          ),
          const SizedBox(height: 20),
          DrawerItem(
            color: const Color(0xFF2CB9B5),
            svgSource: '${AssetPath.icon}setting.svg',
            text: 'Notification Settings',
            onTap: () => Navigator.of(context).pushNamed(SettingsScreen.routeName),
          ),
          const SizedBox(height: 20),
          DrawerItem(
            color: const Color(0xFFFE33BF),
            svgSource: '${AssetPath.icon}heart.svg',
            text: 'Share App',
            onTap: () {},
          ),
          const Spacer(),
          DrawerItem(
            color: const Color(0xFFFF454C),
            svgSource: '${AssetPath.icon}logout.svg',
            text: 'Logout',
            onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
          ),
        ],
      ),
    );
  }
}
