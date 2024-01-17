import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joyoo/constants/color_constants.dart';

class JoyooText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final Color? textColor;
  final TextAlign? textAlign;
  final bool? softWrap;
  final int? maxLines;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;

  const JoyooText({
    Key? key,
    required this.fontSize,
    this.letterSpacing,
    required this.text,
    this.textColor,
    this.height,
    this.softWrap,
    this.textAlign,
    this.maxLines,
    this.fontStyle,
    this.fontWeight,
    this.textOverflow,
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 20,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      softWrap: softWrap ?? true,
      style: GoogleFonts.manrope(
        fontSize: fontSize!,
        fontStyle: fontStyle,
        height: height,
        decoration: TextDecoration.none,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? blackText,
        letterSpacing: letterSpacing ?? 0.3.sp,
      ),
    );
  }
}