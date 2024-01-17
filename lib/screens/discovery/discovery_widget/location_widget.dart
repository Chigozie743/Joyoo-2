import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({ 
    required this.name, 
    required this.placeAndNumVideos, 
    required this.address, super.key});

  final String name;
  final String placeAndNumVideos;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 56.sp,
          height: 56.sp,
          decoration: BoxDecoration(
            color: purpleBackground,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Container(
              width: 31.sp,
              height: 31.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: whiteBackground),
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
                child: Image.asset(
                  JoyooAssetsPaths.locationIcon,
                  width: 16.sp,
                  height: 16.sp,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.sp,
        ),
        ////////////////////////////////////////////////////////////////////
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JoyooText(
              text: name,
              textColor: whiteText,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 3.sp,
            ),

            SizedBox(
              width: 250.sp,
              child: JoyooText(
                text: placeAndNumVideos,
                textColor: whiteText,
                fontSize: 12.sp,
                maxLines: 1,
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(
              width: 250.sp,
              child: JoyooText(
                text: address,
                textColor: whiteText,
                fontSize: 12.sp,
                maxLines: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}