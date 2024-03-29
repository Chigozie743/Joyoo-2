import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';

class SearchFieldBox extends StatelessWidget {
  final String? hintText;
  final double? height;
  final double? width;
  final bool? readOnly;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final Widget? suffixColor;
  final Widget? prefixIcon;
  final bool? isCollapsed;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final bool? autoFocus;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final Color? textColor;
  final bool? filled;
  final Color? fillColor;
  final int? maxLines;
  final Color? enableBorderColor;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final Color? prefixColor;
  final bool? autoCorrect;
  final bool? enableSuggestion;
  final List<TextInputFormatter>? inputFormatters;
  final double? fontSize;

  const SearchFieldBox({
    Key? key,
    this.hintText,
    this.height,
    this.width,
    this.controller,
    this.validator,
    this.textColor,
    this.readOnly,
    this.enableBorderColor,
    this.textInputAction,
    this.obscureText,
    this.suffixColor,
    this.prefixIcon,
    this.isCollapsed,
    this.isEnabled,
    this.onChanged,
    this.autoFocus,
    this.suffixIcon,
    this.hintStyle,
    this.filled,
    this.fillColor,
    this.maxLines,
    this.focusNode,
    this.onEditingComplete,
    this.borderColor,
    this.keyboardType,
    this.prefixColor,
    this.autoCorrect,
    this.enableSuggestion,
    this.inputFormatters,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 45.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            readOnly: readOnly ?? false,
            onChanged: onChanged,
            inputFormatters: inputFormatters,
            autocorrect: autoCorrect ?? true,
            enableSuggestions: enableSuggestion ?? true,
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
            focusNode: focusNode,
            maxLines: maxLines ?? 1,
            textInputAction: textInputAction,
            onEditingComplete: onEditingComplete,
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              fontWeight: FontWeight.w400,
              fontSize: fontSize ?? 13.sp,
              color: textColor ?? whiteText,
              decoration: TextDecoration.none,
            ),
            obscureText: obscureText ?? false,
            cursorColor: whiteText,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24.sp, vertical: 3.sp),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              prefixIconColor: prefixColor,
              fillColor: fillColor ?? brownBackground,
              filled: filled ?? true,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? brownBackground,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: brownBackground,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableBorderColor ?? brownBackground,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
              ),
              hintText: hintText,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: grayText,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
