import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({ 
    required this.image, 
    required this.title, 
    required this.numOfViews, 
    required this.artist, super.key});

  final String image;
  final String title;
  final String numOfViews;
  final String artist;

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
              icon: JoyooAssetsPaths.musicNoteIcon,
              image: image,
              borderColor: whiteBackground,
            ),
            SizedBox(
              width: 10.sp,
            ),
            
            Column(
              children: [
                SizedBox(
                  width: 200.sp,
                  child: JoyooText(
                    text: title,
                    textColor: whiteText,
                    fontSize: 14.sp,
                    maxLines: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),

                SizedBox(
                  width: 200.sp,
                  child: JoyooText(
                    text: artist,
                    textColor: whiteText,
                    fontSize: 11.sp,
                    maxLines: 1,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
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