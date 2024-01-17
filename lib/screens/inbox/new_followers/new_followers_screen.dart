import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/inbox/new_followers/new_follower_widget/new_follower_widget.dart';
import 'package:joyoo/screens/inbox/setup/setup_screen.dart';

class NewFollowersScreen extends StatefulWidget {
  const NewFollowersScreen({super.key});

  @override
  State<NewFollowersScreen> createState() => _NewFollowersScreenState();
}

class _NewFollowersScreenState extends State<NewFollowersScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
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
            
                    JoyooText(
                      text: "New Followers",
                      textColor: whiteText,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
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
          
                            GestureDetector(
                              onTap:() {
                                nextScreen(context, const SetUpScreen());
                              },
                              child: TextButtonOnly(
                                radius: 5.r,
                                text: "Set Up",
                                fontSize: 11.sp,
                              ),
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
                /// PHASE 2:
                /////////////////////////////////////////////////////////////////
                SizedBox(
                  height: size.height.sp - 250.sp,
                  child: ListView(
                    children: [
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