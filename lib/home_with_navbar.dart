import 'package:capstone_flutter/screens/home/components/drawer/custom_drawer.dart';
import 'package:capstone_flutter/screens/home/home.dart';
import 'package:flutter/material.dart';

class HomeWithNavbar extends StatefulWidget {
  static const routeName = '/home';

  const HomeWithNavbar({Key? key}) : super(key: key);

  @override
  State<HomeWithNavbar> createState() => _HomeWithNavbarState();
}

class _HomeWithNavbarState extends State<HomeWithNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: const [
          CustomDrawer(),
          HomeScreen(),
        ],
      ),
    );
  }
}
