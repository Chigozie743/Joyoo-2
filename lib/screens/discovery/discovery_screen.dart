import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/circular_image_container.dart';
import 'package:joyoo/constants/widgets/divider_widget.dart';
import 'package:joyoo/constants/widgets/image_container.dart';
import 'package:joyoo/constants/widgets/small_expand_widget.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';
import 'package:joyoo/screens/discovery/discovery_details/discovery_details.dart';
import 'package:joyoo/screens/discovery/discovery_tab_bar/discovery_tab_bar.dart';
import 'package:joyoo/screens/discovery/discovery_widget/search_history_widget.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  TextEditingController searchController = TextEditingController();
  bool showContent = false;

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        showContent = searchController.text.isNotEmpty;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //////////////////////////////////////////////////////////
              /// PHASE 1: SEARCH BAR
              //////////////////////////////////////////////////////////
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (showContent)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showContent = false;
                          searchController.clear();
                        });
                      },
                      child: Image.asset(
                        JoyooAssetsPaths.arrowLeftIcon,
                        height: 24.sp,
                        width: 24.sp,
                      ),
                    ),

                    Center(
                      child: SearchFieldBox(
                        width: showContent == true ? 280.sp : 335.sp,
                        hintText: 'Search',
                        controller: searchController,
                        prefixIcon: Transform.scale(
                          scale: 0.3.sp,
                          child: Image.asset(
                            JoyooAssetsPaths.searchIcon,
                            height: 3.sp,
                            width: 3.sp,
                          ),
                        ),
                        suffixIcon: Transform.scale(
                          scale: 0.3.sp,
                          child: Image.asset(
                            JoyooAssetsPaths.scanIcon,
                            height: 3.sp,
                            width: 3.sp,
                          ),
                        ),  
                      ),
                    ),

                    if (showContent)
                    Image.asset(
                      JoyooAssetsPaths.dropDownDotIcon,
                      height: 24.sp,
                      width: 24.sp,
                    ),
                  ],
                ),
              ),
                
              //////////////////////////////////////////////////////////
              /// PHASE 2: DIVIDER
              //////////////////////////////////////////////////////////
              if (!showContent)
              const DividerWidget(),
                
              //////////////////////////////////////////////////////////
              /// PHASE 3: TOP SALES HEADER
              //////////////////////////////////////////////////////////
              if (!showContent)
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            JoyooText(
                              text: "Top Sales",
                              textColor: whiteText,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                  
                            GestureDetector(
                              onTap:() {
                                nextScreen(context, const DiscoveryTabBar());
                              },
                              child: SmallExpandMoreBox(
                                text: "See all",
                                backgroundColor: purpleBackground,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        
                        //////////////////////////////////////////////////////////
                        /// PHASE 4: IMAGES HORIZONTAL SCROLLER
                        //////////////////////////////////////////////////////////
                        
                        SizedBox(
                          height: 270.sp,
                          child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Row(
                                children: [
                                  const ImageContainer(
                                    image: JoyooAssetsPaths.earRingImage,
                                  ),
                                  SizedBox(width: 10.sp,)
                                ],
                              );
                            },
                            
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                    
                        //////////////////////////////////////////////////////////
                        /// PHASE 5: DIVIDER
                        //////////////////////////////////////////////////////////
                        const DividerWidget(),
                        SizedBox(
                          height: 10.sp,
                        ),
                        
                        //////////////////////////////////////////////////////////
                        /// PHASE 6: SUBHEADER 
                        //////////////////////////////////////////////////////////
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircularImageContainer(
                                  image: JoyooAssetsPaths.foodHeaderImage,
                                ),
                                SizedBox(width: 5.sp,),
                    
                                JoyooText(
                                  text: "#Food",
                                  textColor: whiteText,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                  
                            GestureDetector(
                              onTap: () {
                                nextScreen(context, const DiscoveryItemDetails(
                                  image: JoyooAssetsPaths.foodHeaderImage,
                                  title: "#Food",
                                ));
                              },
                              child: SmallExpandMoreBox(
                                text: "35",
                                backgroundColor: darkGreenBackground,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        
                        //////////////////////////////////////////////////////////
                        /// PHASE 7: IMAGES HORIZONTAL SCROLLER
                        //////////////////////////////////////////////////////////
                        
                        SizedBox(
                          height: 145.sp,
                          child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Row(
                                children: [
                                  ImageContainer(
                                    width: 85.sp,
                                    height: 139.sp,
                                    image: JoyooAssetsPaths.foodImage,
                                  ),
                                  SizedBox(width: 10.sp,)
                                ],
                              );
                            },
                            
                          ),
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                    
                        //////////////////////////////////////////////////////////
                        /// PHASE 8: SUBHEADER 
                        //////////////////////////////////////////////////////////
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircularImageContainer(
                                  image: JoyooAssetsPaths.earRingImage,
                                ),
                                SizedBox(width: 5.sp,),
                    
                                JoyooText(
                                  text: "#Romance & Heartbreak",
                                  textColor: whiteText,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                  
                            GestureDetector(
                              onTap: () {
                                nextScreen(context, const DiscoveryItemDetails(
                                  image: JoyooAssetsPaths.earRingImage,
                                  title: "#Romance & Heartbreak",
                                ));
                              },
                              child: SmallExpandMoreBox(
                                text: "35",
                                backgroundColor: darkGreenBackground,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        
                        //////////////////////////////////////////////////////////
                        /// PHASE 9: IMAGES HORIZONTAL SCROLLER
                        //////////////////////////////////////////////////////////
                        
                        SizedBox(
                          height: 145.sp,
                          child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Row(
                                children: [
                                  ImageContainer(
                                    width: 85.sp,
                                    height: 139.sp,
                                    image: JoyooAssetsPaths.earRingImage,
                                  ),
                                  SizedBox(width: 10.sp,)
                                ],
                              );
                            },
                            
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              /////////////////////////////////////////////////////////////////
              /// PHASE 10: SEARCH HISTORY
              /////////////////////////////////////////////////////////////////
              if (showContent)
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          3, (index){
                            return Column(
                              children: [
                                const SearchHistoryRowWidget(
                                  text: "Fashion",
                                ),
                                SizedBox(
                                  height: 13.sp,
                                )
                              ],
                            );
                          }
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                
                        ///*********************** SEE MORE ************************/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            JoyooText(
                              text: "See more",
                              textColor: brownText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              width: 3.sp,
                            ),
                
                            Icon(
                              Icons.expand_more,
                              size: 17.sp,
                              color: brownBackground,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                
                        ///*********************** YOU MAY LIKE ************************/
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            JoyooText(
                              text: "You may like",
                              textColor: whiteText,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                
                            ...List.generate(
                              6, (index){
                                return Column(
                                  children: [
                                    const DotWidget(
                                      text: "# Foodie Ideas",
                                    ),
                                    SizedBox(
                                      height: 13.sp,
                                    )
                                  ],
                                );
                              }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}