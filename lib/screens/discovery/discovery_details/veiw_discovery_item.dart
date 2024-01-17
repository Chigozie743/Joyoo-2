import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';
import 'package:joyoo/screens/discovery/discovery_widget/icon_column.dart';
import 'package:joyoo/screens/discovery/my_cart/my_cart.dart';

class ViewDiscoveryItem extends StatefulWidget {
  const ViewDiscoveryItem({super.key});

  @override
  State<ViewDiscoveryItem> createState() => _ViewDiscoveryItemState();
}

class _ViewDiscoveryItemState extends State<ViewDiscoveryItem> {
  bool isKeyboardShowing = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Scaffold(
        body: Container(
          height: size.height.sp,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                JoyooAssetsPaths.earRingImage,
              ),
              fit: BoxFit.cover
            )
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: SizedBox(
                  height: size.height.sp - 151.sp,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /////////////////////////////////////////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //////////////////////////////////////////////////////
                          /// PHASE 1: FIRST COLUMN (Name, follow, etc)
                          //////////////////////////////////////////////////
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ////////////////////////////////////////////////////
                              Row(
                                children: [
                                  JoyooText(
                                    text: "Krishna Fashion",
                                    textColor: whiteText,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 20.sp,
                                  ),
                              
                                  const TextButtonOnly(
                                    text: "Follow",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              ////////////////////////////////////////////////////
                              JoyooText(
                                text: "#Wood #organic",
                                textColor: whiteText,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              ///////////////////////////////////////////////////
                              Row(
                                children: [
                                  Container(
                                    width: 18.sp,
                                    height: 18.sp,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.r),
                                      border: Border.all(color: whiteBackground), 
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        JoyooAssetsPaths.musicNoteIcon,
                                        width: 8.sp,
                                        height: 9.sp,
                                      ),
                                    )
                                  ),
                                  SizedBox(width: 10.sp,),
                              
                                  JoyooText(
                                    text: "ound - alica_keys",
                                    textColor: whiteText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              
                              ///////////////////////////////////////////////////
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      nextScreen(context, const MyCartScreen());
                                    },
                                    child: RightIconButton(
                                      radius: 30.r,
                                      text: "Order Now",
                                      buttonColor: Colors.green,
                                      icon: JoyooAssetsPaths.cartIcon,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.sp,
                                  ),
                              
                                  TextButtonOnly(
                                    text: "\$ 50",
                                    buttonColor: Colors.transparent,
                                    borderColor: whiteBackground,
                                  ),
                                ],
                              ),
                            ],
                          ),
                              
                          //////////////////////////////////////////////////////
                          /// PHASE 2: SECOND COLUMN (ICONS)
                          //////////////////////////////////////////////////
                          Column(
                            children: [
                              /////////////////////// GIFT SECTION ////////////////
                              Column(
                                children: [
                                  Transform.scale(
                                    scale: 1.3.sp,
                                    child: Image.asset(
                                      JoyooAssetsPaths.giftIcon,
                                      height: 36.sp,
                                      width: 32.sp,
                                    ),
                                  ),
                              
                                  JoyooText(
                                    text: "Gift",
                                    textColor: whiteText,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ]
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              
                              /////////////////////// CIRCLE IMAGE ADD SECTION ////////////////
                              const StackCircularImageContainer(
                                icon: JoyooAssetsPaths.plusIcon,
                                image: JoyooAssetsPaths.humanImage,
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              
                              /////////////////////// MULTIPLE ICONS IN A COLUMN SECTION ////////////////
                              const IconColumn(
                                numOfLikes: "250,5K",
                                numOfChats: "111K",
                                numOfFolders: "23k",
                                numOfShares: "150,5K",
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              
                              /////////////////////// ROTATING ICON SECTION ////////////////////////////
                              const RotatingIcon(
                                image: JoyooAssetsPaths.humanImage,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.sp,
                      ),
                      ///////////////////////////////////////////////////////////////////////////////////
                      SearchFieldBox(
                        //readOnly: true,
                        hintText: 'Type your comment here...',
                        fillColor: Colors.transparent,
                        suffixIcon: Transform.scale(
                          scale: 0.76.sp,
                          child: Image.asset(
                            JoyooAssetsPaths.atEmojiIcon,
                            height: 3.sp,
                            width: 3.sp,
                          ),
                        ), 
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
                FloatingActionButtonLocation.startTop,
        floatingActionButton:
          isKeyboardShowing ? null : GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(
              JoyooAssetsPaths.arrowLeftIcon,
              height: 24.sp,
              width: 24.sp,
            ),
          ),
      
      ),
    );
  }
}