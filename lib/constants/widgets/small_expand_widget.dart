import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class SmallExpandMoreBox extends StatelessWidget {
  const SmallExpandMoreBox({ 
    required this.text, 
    this.textColor, 
    this.icon, 
    this.iconColor, 
    required this.backgroundColor, 
    super.key});

  final String text;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 3.sp),
        child: Row(
          children: [
            JoyooText(
              text: text,
              textColor: textColor ?? whiteText,
              fontSize: 12.sp,
            ),
      
            SizedBox(
              width: 3.sp,
            ),
      
            Icon(
              icon ?? Icons.arrow_forward_ios_rounded,
              color: iconColor ?? whiteText,
              size: 10.sp,
            )
          ],
        ),
      ),
    );
  }
}