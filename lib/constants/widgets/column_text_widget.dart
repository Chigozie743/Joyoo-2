import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class ColumnTextWidget extends StatelessWidget {
  const ColumnTextWidget({ 
    required this.headText,
    required this.bodyText,
    this.bodyTextColor,
    this.headTextColor,
    this.fontSize,
    this.cross,
    super.key});

  final String headText;
  final String bodyText;
  final double? fontSize;
  final Color? headTextColor;
  final Color? bodyTextColor;
  final CrossAxisAlignment? cross;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: cross ?? CrossAxisAlignment.center,
      children: [
        JoyooText(
          text: headText,
          textColor: headTextColor ?? whiteText,
          fontSize: fontSize ?? 15.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 3.sp,
        ),

        JoyooText(
          text: bodyText,
          textColor: bodyTextColor ?? grayText,
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}