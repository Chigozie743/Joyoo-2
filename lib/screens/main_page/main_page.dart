import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/app_text.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/custom_bottom_widget.dart';
import 'package:joyoo/screens/discovery/discovery_screen.dart';
import 'package:joyoo/screens/inbox/inbox_screen.dart';
import 'package:joyoo/screens/profile/friends_profile/friends_profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, this.pageIndex = 0, this.childIndex = 0});
  final int pageIndex;
  final int childIndex; // this is the index of the page with tabs
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  // Get User Data is fetched here at the init state
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.pageIndex;
  }

  bool isKeyboardShowing = false;

  // The tab options and the respective screens
  late List<Widget> tabOptions = [
    Container(),
    const DiscoveryScreen(),
    Container(),
    const InboxScreen(),
    const FriendsProfileScreen(),
  ];

  void _selectedTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) {
          if (didPop) {
            return;
          }
        },
        child: Scaffold(
          body: SizedBox(
            child: tabOptions.elementAt(selectedIndex),
          ),
          bottomNavigationBar: CustomBottomAppBar(
            backgroundColor: blackBackground,
            activeindex: selectedIndex,
            onTabSelected: _selectedTab,
            color: grayText,
            height: 76,
            selectedColor:
                selectedIndex == 0 ? const Color.fromARGB(255, 122, 159, 233) : const Color.fromARGB(255, 122, 159, 233),
            //notchedShape: const CircularNotchedRectangle(),
            items: [
              CustomBottomAppBarItem(
                  20.sp, 20.sp, JoyooAssetsPaths.homeIcon, AppText.home,),
              CustomBottomAppBarItem(
                  20.sp, 20.sp, JoyooAssetsPaths.discoverIcon, AppText.discovery),
              CustomBottomAppBarItem(
                  33.sp, 52.sp, JoyooAssetsPaths.centerButtonIcon, ""),
              CustomBottomAppBarItem(
                  20.sp, 20.sp, JoyooAssetsPaths.inboxIcon, AppText.inbox),
              CustomBottomAppBarItem(
                  20.sp, 20.sp, JoyooAssetsPaths.profileIcon, AppText.profile),
            ],
          ),
          
        ),
      ),
    );
  }

  
}