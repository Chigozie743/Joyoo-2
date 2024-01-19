import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/column_text_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';
import 'package:joyoo/screens/profile/friends_profile/follow_profile.dart/follow_profile_setting.dart';

class FellowProfileScreen extends StatefulWidget {
  const FellowProfileScreen({super.key});

  @override
  State<FellowProfileScreen> createState() => _FellowProfileScreenState();
}

class _FellowProfileScreenState extends State<FellowProfileScreen> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //////////////////////////////////////////////////////////////////////////////
      /// PHASE 1: APP BAR SECTION
      //////////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        backgroundColor: ashColor,
        titleSpacing: 0.0,
        title: Padding(
          padding: EdgeInsets.only(top: 5.sp, left: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                JoyooAssetsPaths.arrowLeftIcon,
                height: 24.sp,
                width: 24.sp,
              ),
            ),
            SizedBox(width: 10.sp),
        
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: blueBackground),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: CircularImageContainer(
                image: JoyooAssetsPaths.earRingImage,
                height: 34.sp,
                width: 34.sp,
              ),
            ),
              Expanded(
                child: Center(
                  child: JoyooText(
                    text: "Kaymash",
                    textColor: whiteText,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.sp, top: 2.sp),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: blackBackground,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32.r),
                      )),
                      builder: (BuildContext context) {
                        return const FollowProfileSettings();
                      },
                    );
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: whiteText,
                  ),
                ),
                SizedBox(width: 20.sp),
              ],
            ),
          ),
        ]
      ),

      //////////////////////////////////////////////////////////////////////////////
      /// PHASE 2: BOBY SECTION
      //////////////////////////////////////////////////////////////////////////////
      body: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          children: [
            Column(
              children: [
                //**************** Profile Avarta **********************************/
                Center(
                  child: ProfileCircularImageContainer(
                    width: 70.sp,
                    height: 70.sp,
                    outerWidth: 80.sp,
                    outerHeight: 80.sp,
                    image: JoyooAssetsPaths.humanImage,
                    icon: JoyooAssetsPaths.plusSquareIcon,
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                      
                //*********************** User Name **********************************/
                Center(
                  child: JoyooText(
                    text: "@kaymansion",
                    textColor: whiteText,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                      
                //************************ Following, Followers and Likes *************/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ColumnTextWidget(
                      headText: "438k",
                      bodyText: "Following",
                    ),
                    SizedBox(
                      width: 40.sp,
                    ),
                      
                    const ColumnTextWidget(
                      headText: "234k",
                      bodyText: "Followers",
                    ),
                    SizedBox(
                      width: 40.sp,
                    ),
                      
                    const ColumnTextWidget(
                      headText: "23.6M",
                      bodyText: "Likes",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
                      
                //************************ Rows for buttons *************/
                TextButtonOnly(
                  radius: 5.r,
                  height: 40.sp,
                  width: size.width.sp,
                  text: "follow",
                  fontSize: 12.sp,
                ),
                
              ],
            ),
            const Spacer(),
        
        
            Row(
              children: [
                SearchFieldBox(
                  //readOnly: true,
                  width: 277.sp,
                  hintText: 'Type your comment here...',
                  fillColor: ashColor,
                  suffixIcon: Transform.scale(
                    scale: 0.45.sp,
                    child: Image.asset(
                      JoyooAssetsPaths.emojiIcon,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                  ), 
                ),
                SizedBox(
                  width: 10.sp,
                ),

                const RoundIconButtonGradient(
                  icon: JoyooAssetsPaths.sendIcon,
                )
              ],
            ), 
          ],
        ),
      ),
    );
  }
}