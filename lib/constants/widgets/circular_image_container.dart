import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';


//////////////////////////////////////////////////////////////////////////////////
/// CIRCULAR IMAGE CONTAINER
//////////////////////////////////////////////////////////////////////////////////
class CircularImageContainer extends StatelessWidget {
  const CircularImageContainer({required this.image, this.height, this.width, super.key});

  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 34.sp,
      height: height ?? 34.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover
        )
      ),
    );
  }
}


///////////////////////////////////////////////////////////////////////////////////////
/// STACK CIRCULAR IMAGE CONTAINER
///////////////////////////////////////////////////////////////////////////////////////
class StackCircularImageContainer extends StatelessWidget {
  const StackCircularImageContainer({ 
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.topBorderColor,
    required this.image, 
    required this.icon, 
    this.alignment, super.key});

  final AlignmentGeometry? alignment;
  final Color? topBorderColor;
  final Color? borderColor;
  final double? height;
  final double? radius;
  final double? width;
  final String image;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: alignment ?? Alignment.bottomCenter,
      children: [
        Container(
          width: width ?? 50.sp,
          height: height ?? 50.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(color: topBorderColor ?? whiteBackground),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover
            ),
          ),
        ),

        Positioned(
          bottom: -10.sp,
          child: Container(
            width: 24.sp,
            height: 24.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 50.r),
              border: Border.all(color: borderColor ?? Colors.transparent),
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
                icon,
                height: 11.sp,
                width: 11.sp,
              ),
            ),
          )
        ),
      ],
    );
  }
}


///////////////////////////////////////////////////////////////////////////////////////
/// STACK CIRCULAR IMAGE CONTAINER
///////////////////////////////////////////////////////////////////////////////////////
class ProfileCircularImageContainer extends StatelessWidget {
  const ProfileCircularImageContainer({ 
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.outerWidth,
    this.outerHeight,
    this.topBorderColor,
    required this.image, 
    required this.icon, 
    this.alignment, super.key});

  final AlignmentGeometry? alignment;
  final Color? topBorderColor;
  final double? outerHeight;
  final double? outerWidth;
  final Color? borderColor;
  final double? height;
  final double? radius;
  final double? width;
  final String image;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: alignment ?? Alignment.bottomRight,
      children: [
        Container(
          width: outerWidth ?? 60.sp,
          height: outerHeight ?? 60.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            border: Border.all(color: blueBackground)
          ),
          child: Center(
            child: Container(
              width: width ?? 50.sp,
              height: height ?? 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: topBorderColor ?? whiteBackground),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
        ),

        Positioned(
          right: 0.sp,
          bottom: 10.sp,
          child: Container(
            width: 24.sp,
            height: 24.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 50.r),
              border: Border.all(color: borderColor ?? Colors.transparent),
              image: DecorationImage(
                image: AssetImage(
                  icon,
                ),
                fit: BoxFit.cover
              )
            ),
            
          )
        ),
      ],
    );
  }
}


///////////////////////////////////////////////////////////////////////////////////////
/// STACK CIRCULAR IMAGE CONTAINER
///////////////////////////////////////////////////////////////////////////////////////
class CircularPicsBox extends StatelessWidget {
  const CircularPicsBox({ 
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.outerWidth,
    this.outerHeight,
    this.topBorderColor,
    required this.image, 
    required this.icon, 
    this.alignment, super.key});

  final AlignmentGeometry? alignment;
  final Color? topBorderColor;
  final double? outerHeight;
  final double? outerWidth;
  final Color? borderColor;
  final double? height;
  final double? radius;
  final double? width;
  final String image;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: alignment ?? Alignment.bottomRight,
      children: [
        Container(
          width: outerWidth ?? 55.sp,
          height: outerHeight ?? 55.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            border: Border.all(color: blueBackground)
          ),
          child: Center(
            child: Container(
              width: width ?? 50.sp,
              height: height ?? 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: topBorderColor ?? whiteBackground),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
        ),

        Positioned(
          right: -5.sp,
          bottom: 2.sp,
          child: Container(
            width: 20.sp,
            height: 20.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 50.r),
              border: Border.all(color: borderColor ?? Colors.transparent),
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
                icon,
                width: 10.sp,
                height: 10.sp,
              ),
            ),
          )
        ),
      ],
    );
  }
}




///////////////////////////////////////////////////////////////////////////////////////
/// STACK CIRCULAR IMAGE CONTAINER
///////////////////////////////////////////////////////////////////////////////////////
class StackCircularPicsBox extends StatelessWidget {
  const StackCircularPicsBox({ 
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.outerWidth,
    this.outerHeight,
    this.textBoxColor,
    this.topBorderColor,
    required this.image, 
    required this.text, 
    this.alignment, super.key});

  final AlignmentGeometry? alignment;
  final Color? topBorderColor;
  final Color? textBoxColor;
  final double? outerHeight;
  final double? outerWidth;
  final Color? borderColor;
  final double? height;
  final double? radius;
  final double? width;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: alignment ?? Alignment.bottomCenter,
      children: [
        Container(
          width: outerWidth ?? 55.sp,
          height: outerHeight ?? 55.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            border: Border.all(color: topBorderColor ?? blueBackground)
          ),
          child: Center(
            child: Container(
              width: width ?? 50.sp,
              height: height ?? 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: topBorderColor ?? whiteBackground),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
        ),

        Positioned(
          //right: 5.sp,
          bottom: -3.sp,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 50.r),
              //border: Border.all(color: borderColor ?? Colors.transparent),
              gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  topBorderColor ?? const Color(0xFFD679FF),
                  topBorderColor ?? const Color(0xFF615EFF),
                  topBorderColor ?? const Color(0xFF615EFF),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 1.sp),
              child: Center(
                child: JoyooText(
                  text: text,
                  textColor: whiteText,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ),
      ],
    );
  }
}