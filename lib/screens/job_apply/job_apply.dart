import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/screens/job_apply/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JobApplyScreen extends StatelessWidget {
  static const routeName = '/apply';

  const JobApplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset('${AssetPath.icon}back.svg'),
        ),
        title: Text(
          'Job Apply',
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
