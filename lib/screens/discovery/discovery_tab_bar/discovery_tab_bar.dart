import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/hash_tag_screen/hash_tag_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/hot_screen/hot_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/live_screen/live_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/place_screen/place_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/sound_screen/sound_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/users_screen/users_screen.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/videos_screen/videos_screen.dart';

class DiscoveryTabBar extends StatefulWidget {
  const DiscoveryTabBar({Key? key}) : super(key: key);
  @override
  State<DiscoveryTabBar> createState() => _DiscoveryTabBarState();
}
class _DiscoveryTabBarState extends State<DiscoveryTabBar> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.sp,),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          JoyooAssetsPaths.arrowLeftIcon,
                          height: 24.sp,
                          width: 24.sp,
                        ),
                      ),
                
                      SearchFieldBox(
                        width: 280.sp,
                        hintText: 'Search',
                        prefixIcon: Transform.scale(
                          scale: 0.3.sp,
                          child: Image.asset(
                            JoyooAssetsPaths.searchIcon,
                            height: 3.sp,
                            width: 3.sp,
                          ),
                        ),
                        suffixIcon: Transform.scale(
                          scale: 0.3.sp,
                          child: Image.asset(
                            JoyooAssetsPaths.cancelButtonIcon,
                            height: 3.sp,
                            width: 3.sp,
                          ),
                        ),  
                      ),
                
                      Image.asset(
                        JoyooAssetsPaths.dropDownDotIcon,
                        height: 24.sp,
                        width: 24.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                
                ////////////////////////////////////////////////////////////////
                DefaultTabController(
                  length: 7,
                  initialIndex: tabIndex,
                  child: Column(
                    children: [
                      TabBar(
                        onTap: (_) {
                          setState(() {
                            tabIndex = _;
                          });
                        },
                        isScrollable: true,
                        indicatorColor: whiteBackground,
                        indicatorWeight: 2.0.sp,
                        tabAlignment: TabAlignment.start,
                        tabs: [
                          Tab(
                            child: JoyooText(
                              text: "Hot",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 0 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Users",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 1 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Videos",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 2 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Sounds",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 3 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Places",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 4 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Live",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 5 ? whiteText : brownText,
                            ),
                          ),
                          Tab(
                            child: JoyooText(
                              text: "Hashtags",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              textColor: tabIndex == 6 ? whiteText : brownText,
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: tabIndex == 0,
                        child: const HotScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 1,
                        child: const UsersScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 2,
                        child: const VideoScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 3,
                        child: const SoundScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 4,
                        child: const PlaceScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 5,
                        child: const LiveScreen(),
                      ),
                      Visibility(
                        visible: tabIndex == 6,
                        child: const HashTagScreen(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}