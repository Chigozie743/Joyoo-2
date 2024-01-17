import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class HashtagWidget extends StatelessWidget {
  const HashtagWidget({ 
    required this.image, 
    required this.userName, 
    required this.numOfViews, super.key});

  final String image;
  final String userName;
  final String numOfViews;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            StackCircularImageContainer(
              width: 56.sp,
              height: 56.sp,
              alignment: Alignment.bottomRight,
              icon: JoyooAssetsPaths.hashtagIcon,
              image: image,
              borderColor: whiteBackground,
            ),
            SizedBox(
              width: 10.sp,
            ),
            
            JoyooText(
              text: userName,
              textColor: whiteText,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),

        JoyooText(
          text: numOfViews,
          textColor: whiteText,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}