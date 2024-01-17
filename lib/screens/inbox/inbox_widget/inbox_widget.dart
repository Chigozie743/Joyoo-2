import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/column_text_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class InboxExpandWidget extends StatelessWidget {
  const InboxExpandWidget({
    this.boxColor,
    required this.icon,
    required this.headText,
    required this.bodyText,
    super.key});

  final String icon;
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
            RoundIconButtonGradient(
              icon: icon,
              boxColor: boxColor,
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

        Icon(
          Icons.arrow_forward_ios_outlined,
          color: whiteBackground,
          size: 12.sp,
        ),
      ],
    );
  }
}



//////////////////////////////////////////////////////////////////////////////
class InboxActivityWidget extends StatelessWidget {
  const InboxActivityWidget({
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

        Icon(
          Icons.arrow_forward_ios_outlined,
          color: whiteBackground,
          size: 12.sp,
        ),
      ],
    );
  }
}



//////////////////////////////////////////////////////////////////////////////
class InboxHandsWidget extends StatelessWidget {
  const InboxHandsWidget({
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
          decoration: BoxDecoration(
            color: ashColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 3.sp),
            child: Center(
              child: Image.asset(
                JoyooAssetsPaths.handsIcon,
                height: 26.sp,
                width: 39.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



//////////////////////////////////////////////////////////////////////////////
class InboxIconsWidget extends StatelessWidget {
  const InboxIconsWidget({
    this.boxColor,
    required this.time,
    required this.image,
    required this.number,
    required this.headText,
    super.key});

  final String image;
  final String number;
  final String time;
  final String headText;
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JoyooText(
                  text: headText,
                  textColor: whiteText,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 3.sp,
                ),

                Row(
                  children: [
                    Image.asset(
                      JoyooAssetsPaths.handsIcon,
                      height: 26.sp,
                      width: 39.sp,
                    ),
                    SizedBox(
                      width: 2.sp,
                    ),

                    Image.asset(
                      JoyooAssetsPaths.handsIcon,
                      height: 26.sp,
                      width: 39.sp,
                    ),
                    SizedBox(
                      width: 2.sp,
                    ),

                    Image.asset(
                      JoyooAssetsPaths.handsIcon,
                      height: 26.sp,
                      width: 39.sp,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 16.sp,
              height: 16.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                gradient: const LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  Color(0xFFD679FF),
                  Color(0xFF615EFF),
                  Color(0xFF615EFF),
                ],
              ),
              ),
              child: Center(
                child: JoyooText(
                  text: number,
                  textColor: whiteText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 3.sp,
            ),

            JoyooText(
              text: time,
              textColor: whiteText,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }
}