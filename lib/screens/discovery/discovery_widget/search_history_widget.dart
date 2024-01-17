import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class SearchHistoryRowWidget extends StatelessWidget {
  const SearchHistoryRowWidget({ required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              JoyooAssetsPaths.chatHistoryFillIcon,
              width: 18.sp,
              height: 18.sp,
            ),
            SizedBox(
              width: 10.sp,
            ),

            JoyooText(
              text: text,
              textColor: whiteText,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),

        Image.asset(
          JoyooAssetsPaths.cancelButtonIcon,
          width: 18.sp,
          height: 18.sp,
        ),
      ],
    );
  }
}


/////////////////////////////////////////////////////////////
/// DOT WIDGET
/////////////////////////////////////////////////////////////
class DotWidget extends StatelessWidget {
  const DotWidget({ required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          JoyooAssetsPaths.dotIcon,
          height: 6.sp,
          width: 6.sp,
        ),
        SizedBox(
          width: 10.sp,
        ),

        JoyooText(
          text: text,
          textColor: whiteText,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}