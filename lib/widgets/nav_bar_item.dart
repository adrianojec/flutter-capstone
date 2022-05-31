import 'package:capstone_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatefulWidget {
  final int tappedIndex;
  final int index;

  const NavBarItem({
    Key? key,
    required this.tappedIndex,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: widget.index == 0 ? 0 : 13,
        right: 13,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            BottomNavBarData.navIcons[widget.index],
            height: 20,
            width: 19,
            color: widget.index == widget.tappedIndex ? Theme.of(context).primaryColor : null,
          ),
          Container(
            padding: widget.index == widget.tappedIndex ? const EdgeInsets.only(top: 13) : EdgeInsets.zero,
            width: size.width * 0.15,
            child: Stack(
              children: [
                Center(
                  child: widget.index == widget.tappedIndex
                      ? SvgPicture.asset('assets/svg/icons/nav_arrow.svg')
                      : Text(
                          BottomNavBarData.navLabel[widget.index],
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
