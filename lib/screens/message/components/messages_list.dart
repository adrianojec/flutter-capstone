import 'package:capstone_flutter/screens/message/components/message_tile.dart';
import 'package:capstone_flutter/screens/message_content/message_content.dart';
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 12,
      itemBuilder: (context, index) => InkWell(
        onTap: () => Navigator.of(context).pushNamed(MessageContentScreen.routeName),
        child: const MessageTile(),
      ),
    );
  }
}
