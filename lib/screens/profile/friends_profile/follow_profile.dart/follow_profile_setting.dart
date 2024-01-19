import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class FollowProfileSettings extends StatefulWidget {
  const FollowProfileSettings({super.key});

  @override
  State<FollowProfileSettings> createState() => _FollowProfileSettingsState();
}

class _FollowProfileSettingsState extends State<FollowProfileSettings> {
  bool isBlocked = false;
  bool isPinToTop = false;
  bool isMuteNotification = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///********** BLOCK ROW  ******************************/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JoyooText(
                  text: "Block",
                  textColor: whiteBackground,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.left,
                ),

                FlutterSwitch(
                  height: 22.sp,
                  width: 50.sp,
                  padding: 1.5.sp,
                  toggleSize: 20.sp,
                  showOnOff: true,
                  borderRadius: 50.r,
                  valueFontSize: 10.sp,
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
                  value: isBlocked,
                  onToggle: (value) {
                    setState(() {
                      isBlocked = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),

            ///********** Report ROW  ******************************/
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                JoyooText(
                  text: "Report",
                  textColor: whiteBackground,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),

            ///********** PIN TO TOP ROW  ******************************/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JoyooText(
                  text: "Pin to top",
                  textColor: whiteBackground,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.left,
                ),

                FlutterSwitch(
                  height: 22.sp,
                  width: 50.sp,
                  padding: 1.5.sp,
                  toggleSize: 20.sp,
                  showOnOff: true,
                  borderRadius: 50.r,
                  valueFontSize: 10.sp,
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
                  value: isPinToTop,
                  onToggle: (value) {
                    setState(() {
                      isPinToTop = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),

            ///********** MUTE NOTIFICATION ROW  ******************************/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JoyooText(
                  text: "Mute Notifications",
                  textColor: whiteBackground,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.left,
                ),

                FlutterSwitch(
                  height: 22.sp,
                  width: 50.sp,
                  padding: 1.5.sp,
                  toggleSize: 20.sp,
                  showOnOff: true,
                  borderRadius: 50.r,
                  valueFontSize: 10.sp,
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
                  value: isMuteNotification,
                  onToggle: (value) {
                    setState(() {
                      isMuteNotification = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),

          ],
        ),
      ),
    );
  }
}