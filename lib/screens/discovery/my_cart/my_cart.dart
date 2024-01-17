import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/divider_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/discovery/my_cart/my_cart_widgets/my_carts_widgets.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int _selectedPayment = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.sp, right: 10.sp, top: 15.sp, bottom: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////////////////////////////////////////////////////////////////
                /// PHASE 1: HEADER
                ////////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35.sp,
                        height: 37.sp,
                        decoration: BoxDecoration(
                          color: purpleBackground,
                          borderRadius: BorderRadius.circular(50.r)
                        ),
                        child: Center(
                          child: Image.asset(
                            JoyooAssetsPaths.arrowLeftIcon,
                            height: 14.sp,
                            width: 14.sp,
                          ),
                        )
                      ),
                    ),
      
                    JoyooText(
                      text: "My Cart",
                      textColor: whiteText,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
      
                    const SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
      
                ////////////////////////////////////////////////////////////////////////
                /// PHASE 2: MY CART
                ////////////////////////////////////////////////////////////////////////
                const CardWidget(
                  price: "\$ 15,000.00",
                  title: "Krishna Fashiona",
                  description: "Body lotion",
                  image: JoyooAssetsPaths.earRingImage,
                ),
                SizedBox(
                  height: 25.sp,
                ),
      
                ////////////////////////////////////////////////////////////////////////
                /// PHASE 3: EXPAND MORE
                ////////////////////////////////////////////////////////////////////////
                const MyCartExpandMoreWidget(
                  icon: JoyooAssetsPaths.noteThickIcon,
                  text: "Leave note for Restaurant",
                ),
                SizedBox(
                  height: 15.sp,
                ),
      
                const MyCartExpandMoreWidget(
                  icon: JoyooAssetsPaths.couponIcon,
                  text: "Have a coupon code?",
                  iconText: "Apply",
                ),
                SizedBox(
                  height: 25.sp,
                ),
      
                ////////////////////////////////////////////////////////////////////////
                /// PHASE 4: MY CART SUMMARY
                ////////////////////////////////////////////////////////////////////////
                JoyooText(
                  text: "Order Summary",
                  textColor: whiteText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 15.sp,
                ),
      
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: purpleBackground,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        const SummaryRowWidget(
                          title: "Sub Total",
                          price: "\$ 15,000.00",
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
      
                        const SummaryRowWidget(
                          title: "Delivery Fee",
                          price: "\$ 400.00",
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
      
                        const SummaryRowWidget(
                          title: "Discount (5% off)",
                          price: "\$ 400.00",
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
      
                        const DividerWidget(),
                        SizedBox(
                          height: 5.sp,
                        ),
      
                        SummaryRowWidget(
                          title: "Grand Total",
                          textColor: whiteText,
                          price: "\$ 15,000.00",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.sp,
                ),
      
                ////////////////////////////////////////////////////////////////////////
                /// PHASE 5: PAYMENT METHOD
                ////////////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    JoyooText(
                      text: "Payment Method",
                      textColor: whiteText,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
      
                    JoyooText(
                      text: "Change",
                      textColor: Colors.blue,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
      
                PaymetWidget(
                  index: 1,
                  selectedValue: _selectedPayment,
                  onChanged: (value) {
                    setState(() {
                      _selectedPayment = value;
                    });
                  },
                ),
                SizedBox(
                  height: 25.sp,
                ),
      
                ////////////////////////////////////////////////////////////////////////
                /// PHASE 5: BUTTON
                ////////////////////////////////////////////////////////////////////////
                TextButtonOnly(
                  text: "Checkout \$50.00",
                  fontSize: 13.sp,
                  height: 43.sp,
                  radius: 18.r,
                  width: size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}