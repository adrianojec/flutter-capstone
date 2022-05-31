import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Dismissible(
        key: const ValueKey('1'),
        onDismissed: (direction) {},
        direction: DismissDirection.endToStart,
        background: Container(
          color: Theme.of(context).errorColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 22.0,
            ),
            child: SvgPicture.asset(
              '${AssetPath.icon}trash.svg',
              alignment: Alignment.centerRight,
            ),
          ),
        ),
        child: ListTile(
          leading: const CustomCircleAvatar(
            imageSource: '${AssetPath.image}tony.jpg',
            height: 44,
            width: 44,
          ),
          title: Text(
            'Tony Stark',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sofia',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
