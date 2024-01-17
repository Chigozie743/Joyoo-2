import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class DiscoveryDetailsWidget extends StatelessWidget {
  const DiscoveryDetailsWidget({
    required this.coverImage, 
    required this.profileImage, 
    required this.name, 
    required this.description, 
    required this.numOfLikes, 
    required this.numProportion,
    super.key});

  final String coverImage;
  final String profileImage;
  final String name;
  final String description;
  final String numOfLikes;
  final String numProportion;

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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  JoyooText(
                    text: numProportion,
                    textColor: whiteText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
            
                  Image.asset(
                    JoyooAssetsPaths.speakerIcon,
                    height: 14.sp,
                    width: 14.sp,
                  )
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 12.sp,
                  ),
                  SizedBox(width: 3.sp,),
    
                  JoyooText(
                    text: numOfLikes,
                    textColor: whiteText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ]
              ),
            ],
          ),
        ],
      ),
    );
  }
}