import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.text,
    required this.dateText,
    required this.boxColor,
    required this.borderColor,
    required this.rowAlignment,
    required this.columnAlignment,
    super.key});

  final Color? boxColor;
  final String text;
  final String dateText;
  final Color? borderColor;
  final MainAxisAlignment rowAlignment;
  final CrossAxisAlignment columnAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.sp,
      decoration: BoxDecoration( // Adjust colors as needed
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: borderColor ?? transparentColor),
        gradient: LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            boxColor ?? const Color(0xFFD679FF),
            boxColor ?? const Color(0xFF615EFF),
            boxColor ?? const Color(0xFF615EFF),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: columnAlignment ?? CrossAxisAlignment.end,
          children: [
            JoyooText(
              text: text,
              textColor: whiteBackground,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5.sp,),

            Row(
              mainAxisAlignment: rowAlignment ?? MainAxisAlignment.end,
              children: [
                JoyooText(
                  text: dateText,
                  textColor: grayText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}