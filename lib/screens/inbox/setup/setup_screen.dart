import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/inbox/setup/create_new_auto_reply/create_new_auto_reply.dart';
import 'package:joyoo/screens/inbox/setup/setup_widget/setup_widget.dart';

class SetUpScreen extends StatefulWidget {
  const SetUpScreen({super.key});

  @override
  State<SetUpScreen> createState() => _SetUpScreenState();
}

class _SetUpScreenState extends State<SetUpScreen> {
  bool isChecked = false;
  int _currentIndex = 0;

  List<String> setUpList = [
    "I sell quality and affordable items",
    "Nice meeting you",
    "Kindly patronize me",
    "Thanks for following me!",
    "I have been waiting to meet you for so long! Thanks for following me",
    "If you like me, like my videos also",
    "Kindly like 5 videos and i will do the same",
    "Heritage Bank",
  ];

  @override
  Widget build(BuildContext context) {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
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
                        SizedBox(
                          width: 15.sp,
                        ),

                        JoyooText(
                          text: "New Followers",
                          textColor: whiteText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
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
                    color: purpleBackground,
                    borderRadius: BorderRadius.circular(10.r),
                    //border: Border.all(color: blueBackground),
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
                          height: 10.sp,
                        ),

                        if(!isChecked)
                        JoyooText(
                          text: "You can select an auto reply message to interact with your followers and friends, which will be automatically sent to your new follower the moment they follow you.",
                          textColor: grayText,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                
                /////////////////////////////////////////////////////////////////
                /// PHASE 2:
                /////////////////////////////////////////////////////////////////
                if(isChecked)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    JoyooText(
                      text: "Auto Reply Templates",
                      textColor: whiteText,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),

                    ...List.generate(
                      setUpList.length, (index) {
                        return Column(
                          children: [
                            SetUpCheckList(
                              text: "I sell quality and affordable items ",
                              onChanged: (value) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              backgroundColor: index == _currentIndex
                                ? greenBackground
                                : greyBorder,
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                          ],
                        );
                      }
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: isChecked ? FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: pinkBackground,
        onPressed: (){
          nextScreen(context, const CreateNewAutoReply());
        },
        child: Icon(
          Icons.add,
          size: 34.sp,
          color: blackBackground,
        ),
      ) : null,
    );
  }
}