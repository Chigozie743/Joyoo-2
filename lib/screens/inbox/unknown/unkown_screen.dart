import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key});

  @override
  State<UnknownScreen> createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    text: "Unknown",
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
              JoyooText(
                text: "Today, Jan 5",
                textColor: whiteText,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15.sp,
              ),

              /////////////////////////////////////////////////////////////////
              /// PHASE 3:
              /////////////////////////////////////////////////////////////////
              Container(
                decoration: BoxDecoration(
                  color: purpleBackground,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: blueBackground),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      JoyooText(
                        text: "Hello Dear, Welcome to Unknown! You can view Shop and watch original contents, meet more interesting friends, record your wonderful moment by just one click etc. Unknow is a combination of shopping and fun. Join to explore now.",
                        textColor: whiteText,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),

                      JoyooText(
                        text: "12:23pm",
                        textColor: grayText,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}