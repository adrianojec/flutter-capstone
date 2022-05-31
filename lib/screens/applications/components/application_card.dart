import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            ListTile(
              leading: IconContainer(
                padding: 8,
                color: const Color(0xFF4460A0),
                imageSource: SvgPicture.asset('${AssetPath.icon}facebook.svg'),
                height: 40,
                width: 40,
                border: 15,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Facebook',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                  ),
                  Text(
                    'UI/UX Designer',
                    style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16),
                  ),
                  Text(
                    'New York, USA',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                  ),
                ],
              ),
              trailing: SvgPicture.asset('${AssetPath.icon}menu_vertical.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Pending',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    '\$1200 Monthly',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
