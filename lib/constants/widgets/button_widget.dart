import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';


/////////////////////////////////////////////////////////////////////////////////////////////////////////
/// RIGHT ICON BUTTON
////////////////////////////////////////////////////////////////////////////////////////////////////////
class RightIconButton extends StatelessWidget {
  const RightIconButton({
    required this.icon, 
    required this.text, 
    this.buttonColor, 
    this.borderColor, 
    this.padding,
    this.radius, 
    super.key});

  final String icon;
  final String text;
  final double? radius;
  final Color? buttonColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 6.r),
        color: buttonColor ?? Colors.transparent,
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1.sp),
        gradient: buttonColor == null ? null : const LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            Color(0xFFD679FF),
            Color(0xFF615EFF),
            Color(0xFF615EFF),
          ],
        ),
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(8.sp),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 15.sp,
              width: 15.sp,
            ),
            SizedBox(
              width: 5.sp,
            ),
      
            JoyooText(
              text: text,
              textColor: whiteText,
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////
/// TEXT BUTTON
//////////////////////////////////////////////////////////////////////////////////////////////////////////
class TextButtonOnly extends StatelessWidget {
  const TextButtonOnly({ 
    this.borderColor, 
    this.buttonColor, 
    this.fontSize,
    this.width,
    this.height,
    required this.text, 
    this.radius, super.key});

  final Color? buttonColor;
  final String text;
  final double? radius;
  final double? fontSize;
  final double? width;
  final double? height;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        //color: buttonColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular( radius ?? 50.r),
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1.sp),
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 5.0.sp),
        child: Center(
          child: JoyooText(
            text: text,
            textColor: whiteText,
            textAlign: TextAlign.center,
            fontSize: fontSize ?? 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////
/// NORMAL TEXT BUTTON
//////////////////////////////////////////////////////////////////////////////////////////////////////////
class NormalTextButtonOnly extends StatelessWidget {
  const NormalTextButtonOnly({ 
    this.borderColor, 
    this.buttonColor, 
    this.fontSize,
    this.width,
    this.height,
    required this.text, 
    this.radius, super.key});

  final Color? buttonColor;
  final String text;
  final double? radius;
  final double? fontSize;
  final double? width;
  final double? height;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular( radius ?? 50.r),
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 5.0.sp),
        child: Center(
          child: JoyooText(
            text: text,
            textColor: whiteText,
            textAlign: TextAlign.center,
            fontSize: fontSize ?? 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////
/// ICON BUTTON
//////////////////////////////////////////////////////////////////////////////////////////////////////////
class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({ 
    this.borderColor, 
    this.buttonColor, 
    this.fontSize,
    this.width,
    this.height,
    required this.icon, 
    this.radius, super.key});

  final Color? buttonColor;
  final String icon;
  final double? radius;
  final double? fontSize;
  final double? width;
  final double? height;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular( radius ?? 50.r),
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 5.0.sp),
        child: Center(
          child: Image.asset(
            icon,
            width: 20.sp,
            height: 20.sp,
          )
        ),
      ),
    );
  }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////
/// ROUND ICON BUTTON GRADIENT
//////////////////////////////////////////////////////////////////////////////////////////////////////////
class RoundIconButtonGradient extends StatelessWidget {
  const RoundIconButtonGradient({ 
    required this.icon,
    this.width,
    this.height,
    this.boxColor,
    this.iconWidth,
    this.iconHeight,
    super.key});

  final String icon;
  final double? width;
  final double? height;
  final double? iconWidth;
  final double? iconHeight;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 42.sp,
      height: height ?? 42.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        gradient: LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            boxColor ?? const Color(0xFFD679FF),
            boxColor ?? const Color(0xFF615EFF),
            boxColor ?? const Color(0xFF615EFF),
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          icon,
          height: iconHeight ?? 19.sp,
          width: iconWidth ?? 19.sp,
        ),
      ),
    );
  }
}



