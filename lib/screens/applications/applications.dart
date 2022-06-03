import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/applications/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ApplicationScreen extends StatelessWidget {
  static const routeName = '/applications';

  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset('${AssetPath.icon}back.svg'),
        ),
        title: Text(
          'Application',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: const Body(),
    );
  }
}
