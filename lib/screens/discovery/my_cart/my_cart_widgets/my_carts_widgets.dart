import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

//////////////////////////////////////////////////////////////////////
/// CARD WIDGET
//////////////////////////////////////////////////////////////////////
class CardWidget extends StatefulWidget {
  const CardWidget({ 
    required this.description,
    required this.image,
    required this.price,
    required this.title,  
    super.key});

  final String image;
  final String title;
  final String price;
  final String description;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int quantity = 1; // Initial quantity

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: purpleBackground,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 77.sp,
                  width: 78.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    image: DecorationImage(
                      image: AssetImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover,
                    )
                  )
                ),
                SizedBox(
                  width: 10.sp,
                ),

                ////////////////////////////////////////////////////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 160.sp,
                      child: JoyooText(
                        text: widget.title,
                        textColor: whiteText,
                        fontSize: 13.sp,
                        maxLines: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 2.sp,
                    ),

                    JoyooText(
                      text: widget.description,
                      textColor: whiteText,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),

                    JoyooText(
                      text: widget.price,
                      textColor: whiteText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ]
            ),
            ////////////////////////////////////////////////////
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  JoyooAssetsPaths.deleteIcon,
                  width: 16.sp,
                  height: 18.sp,
                ),
                SizedBox(
                  height: 15.sp,
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: decreaseQuantity,
                      child: Image.asset(
                        JoyooAssetsPaths.circleMinusOutlineIcon,
                        width: 17.sp,
                        height: 21.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),

                    JoyooText(
                      text: quantity.toString(),
                      textColor: whiteText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),

                    GestureDetector(
                      onTap: increaseQuantity,
                      child: Image.asset(
                        JoyooAssetsPaths.circleAddIcon,
                        width: 17.sp,
                        height: 21.sp,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


//////////////////////////////////////////////////////////////////////
/// EXPAND MORE WIDGET
//////////////////////////////////////////////////////////////////////
class MyCartExpandMoreWidget extends StatelessWidget {
  const MyCartExpandMoreWidget({ 
    this.iconText,
    required this.icon,
    required this.text,
    super.key});

  final String icon;
  final String text;
  final String? iconText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: purpleBackground,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 30.sp,
                  height: 30.sp,
                  decoration: BoxDecoration(
                    color: blackBackground,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      icon,
                      width: 14.sp,
                      height: 14.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),

                JoyooText(
                  text: text,
                  textColor: whiteText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),

            Row(
              children: [
                JoyooText(
                  text: iconText ?? "",
                  textColor: Colors.blue,
                  fontSize: 12.sp,
                  maxLines: 1,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  width: 3.sp,
                ),

                Icon(
                  Icons.arrow_forward_ios,
                  size: 14.sp,
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}


///////////////////////////////////////////////////////////////////////
/// SUMMARY ROW WIDGET
///////////////////////////////////////////////////////////////////////
class SummaryRowWidget extends StatelessWidget {
  const SummaryRowWidget({ 
    this.textColor,
    required this.title, 
    required this.price, super.key});

  final String title;
  final String price;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        JoyooText(
          text: title,
          textColor: textColor ?? brownText,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),

        JoyooText(
          text: price,
          textColor: whiteText,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ]
    );
  }
}


///////////////////////////////////////////////////////////////////////
/// PAYMENT WIDGET
///////////////////////////////////////////////////////////////////////
class PaymetWidget extends StatefulWidget {
  const PaymetWidget({ 
    required this.onChanged,
    required this.selectedValue,
    this.index,
    super.key});

  final ValueChanged<int> onChanged;
  final int? index;
  final int selectedValue;

  @override
  State<PaymetWidget> createState() => _PaymetWidgetState();
}

class _PaymetWidgetState extends State<PaymetWidget> {

  Widget customRadioButton(int index) {
    return OutlinedButton(
      onPressed: () {
        widget.onChanged(widget.index!);
      },
      style: OutlinedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
        side: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      child: Container(
        height: 20.sp,
        width: 20.sp,
        decoration: BoxDecoration(
          color: (widget.selectedValue == index)
              ? blackBackground
              : Colors.transparent,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: blueBackground, width: 1.5.w),
        ),
        child: Center(
          child: Container(
            height: 12.sp,
            width: 12.sp,
            decoration: BoxDecoration(
                color: (widget.selectedValue == index)
                    ? blueBackground
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50.r)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: purpleBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 30.sp,
                  height: 30.sp,
                  decoration: BoxDecoration(
                    color: blackBackground,
                    borderRadius: BorderRadius.circular(50.r),
                    image: const DecorationImage(
                      image: AssetImage(
                        JoyooAssetsPaths.masterCardIcon
                      ),
                      fit: BoxFit.cover
                    )
                  )
                ),
                SizedBox(
                  width: 10.sp,
                ),

                JoyooText(
                  text: "____ ____ ____  0978",
                  textColor: whiteText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            /////////////////////////////////////////////////////////////////
            customRadioButton(widget.index!),
          ],
        ),
      ),
    );
  }
}