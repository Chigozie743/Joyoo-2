import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/discovery/discovery_widget/users_info_widget.dart';
import 'package:joyoo/screens/inbox/new_followers/new_follower_widget/new_follower_widget.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /////////////////////////////////////////////////////////////////
                /// PHASE 1:
                /////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        JoyooAssetsPaths.arrowLeftIcon,
                        height: 20.sp,
                        width: 20.sp,
                      ),
                    ),
            
                    Row(
                      children: [
                        JoyooText(
                          text: "Activity",
                          textColor: whiteText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          width: 3.sp,
                        ),
          
                        Icon(
                          Icons.expand_more,
                          color: whiteText,
                          size: 13.sp,
                        )
                      ],
                    ),
            
                    const SizedBox()
                  ],
                ),
                SizedBox(
                    height: 25.sp,
                  ),
            
                /////////////////////////////////////////////////////////////////
                /// PHASE 2:
                /////////////////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: blueBackground),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(13.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            JoyooText(
                              text: "Auto Reply",
                              textColor: whiteText,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
          
                            TextButtonOnly(
                              radius: 5.r,
                              text: "Set Up",
                              fontSize: 11.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
          
                        JoyooText(
                          text: "Set up Auto reply to send an auto reply to new followers",
                          textColor: grayText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                /////////////////////////////////////////////////////////////////
                /// PHASE 3:
                /////////////////////////////////////////////////////////////////
                const NewFollowerIconWidget(
                  image: JoyooAssetsPaths.humanSecondImage,
                  headText: "Samira",
                  bodyText: "started following you. 4hr",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const NewFollowerWidget(
                  image: JoyooAssetsPaths.humanImage,
                  headText: "Yusran",
                  bodyText: "started following you. 5hr",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const NewFollowerIconWidget(
                  image: JoyooAssetsPaths.humanSecondImage,
                  headText: "Samira",
                  bodyText: "started following you. 4hr",
                ),
                SizedBox(
                  height: 25.sp,
                ),
          
                /////////////////////////////////////////////////////////////////
                /// PHASE 3:
                /////////////////////////////////////////////////////////////////
                JoyooText(
                  text: "Suggested accounts",
                  textColor: whiteText,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const UsersInfoWidget(
                  handle: "@fasjhionp",
                  image: JoyooAssetsPaths.humanImage,
                  userName: "fashionplaza",
                  numFollowerAndVideo: "10k Followers  | 306 videos",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const UsersInfoWidget(
                  handle: "@fasjhionp",
                  image: JoyooAssetsPaths.humanImage,
                  userName: "fashionplaza",
                  numFollowerAndVideo: "10k Followers  | 306 videos",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const UsersInfoWidget(
                  handle: "@fasjhionp",
                  image: JoyooAssetsPaths.humanImage,
                  userName: "fashionplaza",
                  numFollowerAndVideo: "10k Followers  | 306 videos",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const UsersInfoWidget(
                  handle: "@fasjhionp",
                  image: JoyooAssetsPaths.humanImage,
                  userName: "fashionplaza",
                  numFollowerAndVideo: "10k Followers  | 306 videos",
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                const UsersInfoWidget(
                  handle: "@fasjhionp",
                  image: JoyooAssetsPaths.humanImage,
                  userName: "fashionplaza",
                  numFollowerAndVideo: "10k Followers  | 306 videos",
                ),
                SizedBox(
                  height: 15.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}