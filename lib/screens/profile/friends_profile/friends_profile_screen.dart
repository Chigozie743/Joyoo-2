import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/column_text_widget.dart';
import 'package:joyoo/constants/widgets/divider_widget.dart';
import 'package:joyoo/constants/widgets/small_expand_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/profile/friends_profile/follow_profile.dart/follow_profile.dart';
import 'package:joyoo/screens/profile/friends_profile/likes/likes.dart';
import 'package:joyoo/screens/profile/friends_profile/posts/posts.dart';
import 'package:joyoo/screens/profile/message/message.dart';

class FriendsProfileScreen extends StatefulWidget {
  const FriendsProfileScreen({super.key});

  @override
  State<FriendsProfileScreen> createState() => _FriendsProfileScreenState();
}

class _FriendsProfileScreenState extends State<FriendsProfileScreen> {
  int tabIndex = 0;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //////////////////////////////////////////////////////////////////////////////
      /// PHASE 1: APP BAR SECTION
      //////////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        backgroundColor: ashColor,
        title: Padding(
          padding: EdgeInsets.only(top: 5.sp),
          child: JoyooText(
            text: "Kaymash",
            textColor: whiteText,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: Transform.scale(
          scale: 0.4.sp,
          child: Image.asset(
            JoyooAssetsPaths.arrowLeftIcon
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.sp, top: 2.sp),
            child: Row(
              children: [
                Image.asset(
                  JoyooAssetsPaths.notificationIcon,
                  height: 24.sp,
                  width: 24.sp,
                ),
                SizedBox(width: 10.sp),
            
                Image.asset(
                  JoyooAssetsPaths.shareIcon,
                  height: 24.sp,
                  width: 24.sp,
                )
              ],
            ),
          ),
        ]
      ),

      //////////////////////////////////////////////////////////////////////////////
      /// PHASE 2: BOBY SECTION
      //////////////////////////////////////////////////////////////////////////////
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButtonOnly(
                      radius: 5.r,
                      height: 40.sp,
                      width: 120.sp,
                      text: "follow",
                      fontSize: 12.sp,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
          
                    GestureDetector(
                      onTap: () {
                        nextScreen(context, ChatScreen());
                      },
                      child: NormalTextButtonOnly(
                        radius: 5.r,
                        height: 40.sp,
                        width: 83.sp,
                        text: "message",
                        fontSize: 12.sp,
                        buttonColor: ashColor,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
          
                    GestureDetector(
                      onTap: () {
                        nextScreen(context, const FellowProfileScreen());
                      },
                      child: IconButtonWidget(
                        radius: 5.r,
                        height: 40.sp,
                        width: 40.sp,
                        fontSize: 12.sp,
                        buttonColor: ashColor,
                        icon: JoyooAssetsPaths.giftOutline,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
          
                    IconButtonWidget(
                      radius: 5.r,
                      height: 40.sp,
                      width: 40.sp,
                      fontSize: 12.sp,
                      buttonColor: ashColor,
                      icon: JoyooAssetsPaths.arrowDownIcon,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
          
                //************************ Icon and Link *************/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      JoyooAssetsPaths.linkIcon,
                      height: 17.sp,
                      width: 17.sp,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
          
                    JoyooText(
                      text: "https://kaymans/ryrrjrhm",
                      textColor: whiteText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
      
                    //// Toggle Button *******************/
                    FlutterSwitch(
                      height: 24.sp,
                      width: 52.sp,
                      padding: 1.5.sp,
                      toggleSize: 20.sp,
                      showOnOff: true,
                      borderRadius: 50.r,
                      valueFontSize: 12.sp,
                      switchBorder: Border.all(color: greyBorder),
                      activeColor: blueBackground,
                      inactiveColor: transparentColor,
                      activeIcon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 9.sp,
                      ),
                      inactiveIcon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: blackBackground,
                        size: 9.sp,
                      ),
                      activeToggleColor: whiteBackground,
                      inactiveToggleColor: Colors.grey,
                      activeTextFontWeight: FontWeight.w400,
                      inactiveTextFontWeight: FontWeight.w400,
                      value: isChecked,
                      onToggle: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.sp,
                ),
              ],
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////
          /// PHASE 3: 
          //////////////////////////////////////////////////////////////////////////////
          /////************************ Profile Suggestion *************/
          if(isChecked)
          Column(
            children: [
              /////************************ Icon and Link *************/
              DividerWidget(
                thickness: 0.6.sp,
              ),
      
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    JoyooText(
                      text: "Profile Suggestion",
                      textColor: whiteText,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                
                    SmallExpandMoreBox(
                      text: "See all",
                      backgroundColor: ashColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
      
              ///********************** List View Scroller ***************************/
              Padding(
                padding: EdgeInsets.only(left: 10.sp),
                child: SizedBox(
                  height: 165.sp,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Row(
                        children: [
                          Container(
                            width: 130.sp,
                            height: 160.sp,
                            decoration: BoxDecoration(
                              color: purpleBackground,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(5.sp),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 78.sp,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.r),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            JoyooAssetsPaths.humanSecondImage,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.sp,
                                    ),
      
                                    JoyooText(
                                      text: "@kaymansion",
                                      textColor: whiteText,
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(
                                      height: 5.sp,
                                    ),
      
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        JoyooText(
                                          text: "Friends with",
                                          textColor: greyColor,
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(
                                          width: 30.sp,
                                        ),
                                    
                                        Stack(
                                          clipBehavior: Clip.none,
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Container(
                                              height: 15.sp,
                                              width: 15.sp,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.r),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    JoyooAssetsPaths.humanSecondImage,
                                                  ),
                                                  fit: BoxFit.cover
                                                ),
                                              ),
                                            ),
                                    
                                            Positioned(
                                              right: -10.sp,
                                              child: Container(
                                                height: 15.sp,
                                                width: 15.sp,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100.r),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                      JoyooAssetsPaths.humanSecondImage,
                                                    ),
                                                    fit: BoxFit.cover
                                                  ),
                                                ),
                                              ),
                                            ),
      
                                            Positioned(
                                              right: -20.sp,
                                              child: Container(
                                                height: 15.sp,
                                                width: 15.sp,
                                                decoration: BoxDecoration(
                                                  color: blackBackground,
                                                  borderRadius: BorderRadius.circular(100.r),
                                                ),
                                                child: Center(
                                                  child: JoyooText(
                                                    text: "+4",
                                                    textColor: whiteText,
                                                    fontSize: 7.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.sp,
                                    ),
      
                                    TextButtonOnly(
                                      radius: 5.r,
                                      height: 28.sp,
                                      width: 120.sp,
                                      text: "follow",
                                      fontSize: 10.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.sp,)
                        ],
                      );
                    },
                    
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
            ],
          ),
      
          //////////////////////////////////////////////////////////////////////////////
          /// PHASE 4: 
          //////////////////////////////////////////////////////////////////////////////
          /////************************ Icon and Link *************/
          DividerWidget(
            thickness: 0.6.sp,
          ),
      
          /////************************ Icon Tap *************/
          DefaultTabController(
            length: 2,
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
                  indicatorWeight: 2.sp,
                  //labelPadding: EdgeInsets.symmetric(horizontal: 16.sp), 
                  tabAlignment: TabAlignment.center,
                  tabs: [
                    Tab(
                      child: Image.asset(
                        JoyooAssetsPaths.dottedCircleIcon,
                        height: 20.sp,
                        width: 20.sp,
                      ),
                    ),
                    Tab(
                      child: Image.asset(
                        JoyooAssetsPaths.favourIcon,
                        height: 20.sp,
                        width: 20.sp,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: tabIndex == 0,
                  child: const PostScreen(),
                  //child: Container(),
                ),
                Visibility(
                  visible: tabIndex == 1,
                  child: const LikesScreen(),
                  //child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}