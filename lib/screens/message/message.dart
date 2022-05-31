import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/home_with_navbar.dart';
import 'package:capstone_flutter/screens/message/components/messages_list.dart';
import 'package:capstone_flutter/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: CustomAppBar(
              leadingWidget: InkWell(
                onTap: () => Navigator.of(context).pushNamed(HomeWithNavbar.routeName),
                child: SvgPicture.asset('${AssetPath.icon}back.svg'),
              ),
              titleWidget: Text(
                'Message',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              trailingWidget: InkWell(
                onTap: () {},
                child: SvgPicture.asset('${AssetPath.icon}search.svg'),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: MessageList(),
            ),
          ),
        ],
      ),
    );
  }
}
