import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class LiveWidget extends StatelessWidget {
  const LiveWidget({
    required this.coverImage, 
    required this.profileImage, 
    required this.name, 
    required this.description, 
    required this.numOfPeople, 
    required this.status,
    super.key});

  final String coverImage;
  final String profileImage;
  final String name;
  final String description;
  final String numOfPeople;
  final String status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 155.sp,
            height: 222.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              image: DecorationImage(
                image: AssetImage(
                  coverImage,
                ),
                fit: BoxFit.cover
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButtonOnly(
                    radius: 5.r,
                    height: 21.sp,
                    text: status,
                    fontSize: 8.sp,
                  ),

                  RightIconButton(
                    icon: JoyooAssetsPaths.profileFillIcon,
                    text: numOfPeople,
                    padding: EdgeInsets.all(2.sp),
                    buttonColor: Colors.transparent,
                    borderColor: whiteBackground,
                    radius: 5.r,
                  ),
            
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
    
          ////////////////////////////////////////////////////////
          SizedBox(
            child: JoyooText(
              text: description,
              textColor: whiteText,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
    
          ////////////////////////////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircularImageContainer(
                    width: 20.sp,
                    height: 20.sp,
                    image: profileImage,
                  ),
                  SizedBox(width: 5.sp,),
      
                  SizedBox(
                    width: 67.sp,
                    child: JoyooText(
                      softWrap: false,
                      text: name,
                      textColor: whiteText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      textOverflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}