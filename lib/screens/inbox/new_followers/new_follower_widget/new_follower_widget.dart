import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/column_text_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class NewFollowerIconWidget extends StatelessWidget {
  const NewFollowerIconWidget({
    this.boxColor,
    required this.image,
    required this.headText,
    required this.bodyText,
    super.key});

  final String image;
  final String headText;
  final String bodyText;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircularImageContainer(
              image: image,
              width: 42.sp,
              height: 42.sp,
            ),
            SizedBox(
              width: 10.sp,
            ),

            ColumnTextWidget(
              cross: CrossAxisAlignment.start,
              headText: headText,
              bodyText: bodyText,
              fontSize: 13.sp
            ),
          ],
        ),

        Container(
          width: 79.sp,
          decoration: BoxDecoration(
            border: Border.all(color: blueBackground),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Row(
              children: [
                JoyooText(
                  text: "Send a",
                  textColor: whiteText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
            
                Image.asset(
                  JoyooAssetsPaths.handsIcon,
                  height: 14.sp,
                  width: 22.sp,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class NewFollowerWidget extends StatelessWidget {
  const NewFollowerWidget({
    this.boxColor,
    required this.image,
    required this.headText,
    required this.bodyText,
    super.key});

  final String image;
  final String headText;
  final String bodyText;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircularImageContainer(
              image: image,
              width: 42.sp,
              height: 42.sp,
            ),
            SizedBox(
              width: 10.sp,
            ),

            ColumnTextWidget(
              cross: CrossAxisAlignment.start,
              headText: headText,
              bodyText: bodyText,
              fontSize: 13.sp
            ),
          ],
        ),

        Container(
          width: 79.sp,
          decoration: BoxDecoration(
            border: Border.all(color: blueBackground),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Center(
              child: JoyooText(
                text: "Request",
                textColor: whiteText,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}