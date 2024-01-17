import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class UsersInfoWidget extends StatelessWidget {
  const UsersInfoWidget({ 
    required this.image, 
    required this.userName, 
    required this.handle, 
    required this.numFollowerAndVideo, super.key});

  final String image;
  final String userName;
  final String handle;
  final String numFollowerAndVideo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircularImageContainer(
              image: image,
              height: 56.sp,
              width: 56.sp,
            ),
            SizedBox(
              width: 10.sp,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JoyooText(
                  text: userName,
                  textColor: whiteText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 3.sp,
                ),

                JoyooText(
                  text: numFollowerAndVideo,
                  textColor: whiteText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),

                JoyooText(
                  text: handle,
                  textColor: whiteText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        TextButtonOnly(
          text: "Follow",
          radius: 3.r,
        ),
      ],
    );
  }
}