import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/screens/profile/profile.dart';
import 'package:capstone_flutter/screens/settings/settings.dart';
import 'package:capstone_flutter/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function navBarIndex;

  const BottomNavBar({
    Key? key,
    required this.navBarIndex,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.09,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 3,
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 40.0,
          left: 40.0,
          top: 20.0,
        ),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => InkWell(
            onTap: () => setState(() {
              switch (index) {
                case 0:
                case 1:
                  selectedIndex = index;
                  widget.navBarIndex(index);
                  break;
                case 2:
                  Navigator.of(context).pushNamed(ProfileScreen.routeName);
                  break;
                case 3:
                  Navigator.of(context).pushNamed(SettingsScreen.routeName);
                  break;
              }
            }),
            child: NavBarItem(
              index: index,
              tappedIndex: selectedIndex,
            ),
          ),
        ),
      ),
    );
  }
}
