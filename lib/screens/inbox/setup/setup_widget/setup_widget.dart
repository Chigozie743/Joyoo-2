import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class SetUpCheckList extends StatefulWidget {
  const SetUpCheckList({
    this.text,
    this.isSelected = false,
    required this.onChanged,
    this.showCheck = true,
    required this.backgroundColor,
    super.key});

    final String? text;
    final bool isSelected;
    final Function(bool) onChanged;
    final bool showCheck;
    final Color backgroundColor;

  @override
  State<SetUpCheckList> createState() => _SetUpCheckListState();
}

class _SetUpCheckListState extends State<SetUpCheckList> {
  bool? checked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked!; // Toggle the isChecked state on tap
          widget.onChanged(checked!);
          //backgroundColor = checked! ? greenBackground : greyBorder;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: ashColor,
          borderRadius: BorderRadius.circular(10.r)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
          child: Row(
            children: [
              SizedBox(
                width: 285.sp,
                child: JoyooText(
                  text: widget.text,
                  textColor: whiteText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 5.sp,
              ),
                
              Container(
                width: 18.sp,
                height: 18.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: widget.backgroundColor),
                ),
                child: Center(
                  child: Container(
                    width: 13.sp,
                    height: 13.sp,
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}