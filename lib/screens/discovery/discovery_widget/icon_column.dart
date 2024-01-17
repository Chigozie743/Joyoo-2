import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class IconColumn extends StatelessWidget {
  const IconColumn({ 
    required this.numOfLikes, 
    required this.numOfChats, 
    required this.numOfFolders, 
    required this.numOfShares, super.key});

  final String numOfLikes;
  final String numOfChats;
  final String numOfFolders;
  final String numOfShares;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50.r),
          bottom: Radius.circular(50.r),
        ),
        border: Border.all(
          color: whiteBackground,
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 15.sp),
        child: Column(
          children: [
            IconAndText(
              icon: JoyooAssetsPaths.likeIcon,
              text: numOfLikes,
            ),
            SizedBox(
              height: 10.sp,
            ),
            
            IconAndText(
              icon: JoyooAssetsPaths.chatIcon,
              text: numOfChats,
            ),
            SizedBox(
              height: 10.sp,
            ),
            
            IconAndText(
              icon: JoyooAssetsPaths.folderIcon,
              text: numOfFolders,
            ),
            SizedBox(
              height: 10.sp,
            ),
            
            IconAndText(
              icon: JoyooAssetsPaths.shareFillIcon,
              text: numOfShares,
            ),
          ],
        ),
      ),
    );
  }
}



///////////////////////////////////////////////////////////////////
/// ICON AND TEXT WIDGET
///////////////////////////////////////////////////////////////////
class IconAndText extends StatelessWidget {
  const IconAndText({ required this.icon, required this.text, super.key});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 1.0.sp,
          child: Image.asset(
            icon,
            height: 24.sp,
            width: 24.sp,
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        JoyooText(
          text: text,
          textColor: whiteText,
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}


//////////////////////////////////////////////////////////////////////
/// ROTATING ICON
//////////////////////////////////////////////////////////////////////
class RotatingIcon extends StatelessWidget {
  const RotatingIcon({ required this.image, super.key});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51.sp,
      height: 51.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(color: whiteBackground),
      ),
      child: Center(
        child: Container(
          width: 40.sp,
          height: 40.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            gradient: const LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [
                Color(0xFF505050),
                Color(0xFF181818),
                Color(0xFF505050),
              ],
            ),
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 24.sp,
              height: 24.sp,
            ),
          ),
        ),
      )
    );
  }
}