import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/button_widget.dart';
import 'package:joyoo/constants/widgets/divider_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/discovery/discovery_details/veiw_discovery_item.dart';
import 'package:joyoo/screens/discovery/discovery_widget/discovery_widget.dart';

class DiscoveryItemDetails extends StatefulWidget {
  const DiscoveryItemDetails({required this.image, required this.title, super.key});

  final String image;
  final String title;

  @override
  State<DiscoveryItemDetails> createState() => _DiscoveryItemDetailsState();
}

class _DiscoveryItemDetailsState extends State<DiscoveryItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //////////////////////////////////////////////////////
            /// PHASE 1: HEADER
            /////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      JoyooAssetsPaths.arrowLeftIcon,
                      height: 24.sp,
                      width: 24.sp,
                    ),
                  ),
      
                  Image.asset(
                    JoyooAssetsPaths.shareIcon,
                    height: 24.sp,
                    width: 24.sp,
                  )
                ],
              ),
            ),
            //////////////////////////////////////////////////////////
            /// PHASE 2: DIVIDER
            //////////////////////////////////////////////////////////
            const DividerWidget(),

            //////////////////////////////////////////////////////////
            /// PHASE 3: TOP SALES HEADER
            //////////////////////////////////////////////////////////
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 95.sp,
                            height: 135.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              image: DecorationImage(
                                image: AssetImage(
                                  widget.image
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(
                            width: 15.sp,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              JoyooText(
                                text: widget.title,
                                textColor: whiteText,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                          
                              JoyooText(
                                text: "23 views",
                                textColor: whiteText,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                          
                              SizedBox(
                                width: 219.sp,
                                child: JoyooText(
                                  text: "Your one-stop shop for perfect recipes, delicious deserts and food inspiration",
                                  textColor: whiteText,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const RightIconButton(
                                    text: "Join Hashtag",
                                    buttonColor: Colors.green,
                                    icon: JoyooAssetsPaths.circleAddOutlineIcon,
                                  ),
                                  SizedBox(
                                    width: 5.sp,
                                  ),

                                  RightIconButton(
                                    text: "Add to Favorites",
                                    icon: JoyooAssetsPaths.bookMarkIcon,
                                    borderColor: whiteBackground,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),

                      //////////////////////////////////////////////////////////
                      /// PHASE 3: TOP SALES HEADER
                      //////////////////////////////////////////////////////////
                      Wrap(
                        spacing: 10.sp,
                        runSpacing: 20.sp,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          for(int i = 0; i < 11; i++)
                          GestureDetector(
                            onTap: () {
                              nextScreen(context, const ViewDiscoveryItem());
                            },
                            child: DiscoveryDetailsWidget(
                              coverImage: widget.image,
                              numOfLikes: "2.0M",
                              numProportion: "15/10",
                              name: "PitFashion...",
                              profileImage: JoyooAssetsPaths.humanImage,
                              description: "What’s your favorite  cloth wedding #fashion #ifas...",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
                
          ],
        ),
      ),
    );
  }
}