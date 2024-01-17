import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/divider_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';
import 'package:joyoo/screens/inbox/activity/activity_screen.dart';
import 'package:joyoo/screens/inbox/inbox_widget/inbox_widget.dart';
import 'package:joyoo/screens/inbox/new_followers/new_followers_screen.dart';
import 'package:joyoo/screens/inbox/unknown/unkown_screen.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /////////////////////////////////////////////////////////////////
            /// PHASE 1: ROW HEADER
            /////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        JoyooAssetsPaths.multiChatIcon,
                        height: 20.sp,
                        width: 21.sp,
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                          
                      JoyooText(
                        text: "Inbox",
                        textColor: whiteText,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 3.sp,
                      ),
                          
                      Icon(
                        Icons.expand_more_outlined,
                        color: whiteText,
                        size: 15.sp,
                      ),
                    ],
                  ),
                  ///*********************** SEARCH BAR ************************/
                  SearchFieldBox(
                    width: 120.sp,
                    hintText: 'Search',
                    controller: searchController,
                    prefixIcon: Transform.scale(
                      scale: 0.3.sp,
                      child: Image.asset(
                        JoyooAssetsPaths.searchIcon,
                        height: 3.sp,
                        width: 3.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /////////////////////////////////////////////////////////////////
            /// PHASE 2: LIST VIEW
            /////////////////////////////////////////////////////////////////
            SizedBox(
              height: 70.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanImage,
                        icon: JoyooAssetsPaths.plusIcon,
                        borderColor: whiteBackground,
                      ),
                      SizedBox(width: 15.sp,),
                  
                      StackCircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanSecondImage,
                        text: "STORY",
                        borderColor: whiteBackground,
                      ),
                      SizedBox(width: 15.sp,),
                  
                      StackCircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanImage,
                        text: "LIVE SALES",
                        borderColor: whiteBackground,
                        topBorderColor: const Color(0xFFFF00B8)
                      ),
                      SizedBox(width: 15.sp,),
                  
                      StackCircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanSecondImage,
                        text: "LIVE",
                        borderColor: whiteBackground,
                        topBorderColor: const Color(0xFFFF0000),
                      ),
                      SizedBox(width: 15.sp,),
                  
                      StackCircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanImage,
                        text: "STORY",
                        borderColor: whiteBackground,
                        topBorderColor: const Color(0xFFFF0000),
                      ),
                      SizedBox(width: 15.sp,),
                  
                      StackCircularPicsBox(
                        width: 60.sp,
                        height: 60.sp,
                        outerWidth: 65.sp,
                        outerHeight: 65.sp,
                        image: JoyooAssetsPaths.humanImage,
                        text: "STORY",
                        borderColor: whiteBackground,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),

            
            DividerWidget(
              thickness: 0.7.sp,
            ),

            /////////////////////////////////////////////////////////////////
            /// PHASE 3:
            /////////////////////////////////////////////////////////////////
            SingleChildScrollView(
              child: SizedBox(
                height: size.height.sp - 360.sp,
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: ListView(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap:() {
                            nextScreen(context, const NewFollowersScreen());
                          },
                          child: const InboxExpandWidget(
                            icon: JoyooAssetsPaths.groupIcon,
                            headText: "New Followers",
                            bodyText: "Samira started following you.",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap:() {
                            nextScreen(context, const UnknownScreen());
                          },
                          child: const InboxExpandWidget(
                            icon: JoyooAssetsPaths.notificationThickIcon,
                            headText: "Unknown",
                            bodyText: "Hi Dear, Welcome to Unknown",
                            boxColor: Color(0xFFFF0000),
                          ),
                        ),
                      ),
              
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap:() {
                            nextScreen(context, const UnknownScreen());
                          },
                          child: const InboxExpandWidget(
                            icon: JoyooAssetsPaths.notificationThickIcon,
                            headText: "Unknown",
                            bodyText: "Hello Dear, Welcome to Unknown. You can...",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap:() {
                            nextScreen(context, const ActivityScreen());
                          },
                          child: const InboxActivityWidget(
                            image: JoyooAssetsPaths.humanImage,
                            headText: "Activities",
                            bodyText: "Mariam approved your follow request.",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxHandsWidget(
                        image: JoyooAssetsPaths.humanSecondImage,
                        headText: "Kunar",
                        bodyText: "Say hi to Kunar",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxHandsWidget(
                        image: JoyooAssetsPaths.humanSecondImage,
                        headText: "Anika",
                        bodyText: "Say hi to Anika",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxIconsWidget(
                        image: JoyooAssetsPaths.earRingImage,
                        headText: "Chander",
                        time: "38 mins ago",
                        number: "1",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxHandsWidget(
                        image: JoyooAssetsPaths.humanImage,
                        headText: "Activities",
                        bodyText: "Mariam approved your follow request.",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxHandsWidget(
                        image: JoyooAssetsPaths.humanImage,
                        headText: "Activities",
                        bodyText: "Mariam approved your follow request.",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
              
                      const InboxHandsWidget(
                        image: JoyooAssetsPaths.humanImage,
                        headText: "Activities",
                        bodyText: "Mariam approved your follow request.",
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}