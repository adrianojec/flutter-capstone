import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/mock_data/job_data.dart';
import 'package:capstone_flutter/screens/home/components/popular_job_list.dart';
import 'package:capstone_flutter/screens/home/components/recent_post_list.dart';
import 'package:capstone_flutter/screens/home/components/search_and_filter.dart';
import 'package:capstone_flutter/screens/message/message.dart';
import 'package:capstone_flutter/screens/search/search.dart';
import 'package:capstone_flutter/widgets/bottom_nav_bar.dart';
import 'package:capstone_flutter/widgets/custom_appbar.dart';
import 'package:capstone_flutter/widgets/custom_circle_avatar.dart';
import 'package:capstone_flutter/widgets/custom_icon_container.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bodyIndex = 0;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isOpen = false;

  final pages = [
    const HomeScreen(),
    const MessageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final jobs = Provider.of<Jobs>(context, listen: false).jobs;
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            spreadRadius: 10,
            blurRadius: 30,
            offset: const Offset(-10, 0),
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isOpen ? 40 : 0),
        child: Scaffold(
          body: bodyIndex == 1
              ? pages[1]
              : SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          const VerticalHeightSpacing(height: 20),
                          CustomAppBar(
                            leadingWidget: InkWell(
                              onTap: () => setState(() {
                                if (isOpen) {
                                  xOffset = 0;
                                  yOffset = 0;
                                  scaleFactor = 1;
                                  isOpen = false;
                                } else {
                                  xOffset = 300;
                                  yOffset = 90;
                                  scaleFactor = 0.8;
                                  isOpen = true;
                                }
                              }),
                              child: IconContainer(
                                color: Theme.of(context).primaryColor,
                                imageSource: SvgPicture.asset('${AssetPath.icon}menu.svg'),
                                height: 44,
                                width: 44,
                                border: 12,
                                padding: 14,
                              ),
                            ),
                            trailingWidget: const CustomCircleAvatar(
                              imageSource: '${AssetPath.image}tony.jpg',
                              height: 44,
                              width: 44,
                            ),
                          ),
                          const VerticalHeightSpacing(height: 30),
                          //Search and filter
                          SearchAndFilter(
                            onPressed: () => Navigator.of(context).pushNamed(SearchScreen.routeName),
                          ),
                          const VerticalHeightSpacing(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                popularJobs,
                                textScaleFactor: scale,
                                style: Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                showAll,
                                textScaleFactor: scale,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                    ),
                              ),
                            ],
                          ),
                          PopularJobList(popularJobs: jobs),
                          const VerticalHeightSpacing(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                recentPost,
                                textScaleFactor: scale,
                                style: Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                showAll,
                                textScaleFactor: scale,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                              )
                            ],
                          ),
                          RecentPostList(recentJobs: jobs),
                        ],
                      ),
                    ),
                  ),
                ),
          bottomNavigationBar: BottomNavBar(
            navBarIndex: (index) => setState(() => bodyIndex = index),
          ),
        ),
      ),
    );
  }
}
