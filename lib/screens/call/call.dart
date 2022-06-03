import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/call/components/body.dart';
import 'package:capstone_flutter/screens/call/components/caller_image.dart';
import 'package:capstone_flutter/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallScreen extends StatelessWidget {
  static const routeName = '/call';

  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${AssetPath.image}scarlet.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomAppBar(
                  leadingWidget: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: SvgPicture.asset('${AssetPath.icon}back.svg'),
                  ),
                  trailingWidget: SizedBox(
                    height: size.height * 0.19,
                    width: size.width * 0.24,
                    child: const CallerImage(),
                  ),
                ),
                const Spacer(),
                const Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
