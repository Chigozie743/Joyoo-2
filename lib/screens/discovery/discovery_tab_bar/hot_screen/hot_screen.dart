import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/screens/discovery/discovery_details/veiw_discovery_item.dart';
import 'package:joyoo/screens/discovery/discovery_widget/discovery_widget.dart';
import 'package:joyoo/screens/discovery/discovery_widget/hash_tag_widget.dart';
import 'package:joyoo/screens/discovery/discovery_widget/live_widget.dart';
import 'package:joyoo/screens/discovery/discovery_widget/location_widget.dart';
import 'package:joyoo/screens/discovery/discovery_widget/music_widget.dart';
import 'package:joyoo/screens/discovery/discovery_widget/users_info_widget.dart';

class HotScreen extends StatefulWidget {
  const HotScreen({super.key});

  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //////////////////////////////////////////////////////////
          /// PHASE 1: Horizontal List View
          //////////////////////////////////////////////////////////
          KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              return SizedBox(
                height: isKeyboardVisible ? size.height.sp - 491.sp : size.height.sp - 250.sp,
                child: ListView(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 15.sp),
                  children: [
                    SizedBox(
                      height: 310.sp,
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  nextScreen(context, const ViewDiscoveryItem());
                                },
                                child: const DiscoveryDetailsWidget(
                                  coverImage: JoyooAssetsPaths.earRingImage,
                                  numOfLikes: "2.0M",
                                  numProportion: "15/10",
                                  name: "PitFashion...",
                                  profileImage: JoyooAssetsPaths.humanImage,
                                  description: "What’s your favorite  cloth wedding #fashion #ifas...",
                                ),
                              ),
                              SizedBox(width: 10.sp,)
                            ],
                          );
                        },
                        
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    //////////////////////////////////////////////////////////
                    /// PHASE 2: USERS SECTION
                    //////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        JoyooText(
                          text: "Users",
                          textColor: whiteText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  
                    ...List.generate(
                      2, (index){
                        return Column(
                          children: [
                            const UsersInfoWidget(
                              handle: "@fasjhionp",
                              image: JoyooAssetsPaths.humanImage,
                              userName: "fashionplaza",
                              numFollowerAndVideo: "10k Followers  | 306 videos",
                            ),
                            SizedBox(
                              height: 10.sp,
                            )
                          ],
                        );
                      }
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                  
                    //////////////////////////////////////////////////////////
                    /// PHASE 3: HASHTAG SECTION
                    //////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        JoyooText(
                          text: "Hashtags",
                          textColor: whiteText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  
                        Row(
                          children: [
                            JoyooText(
                              text: "See more",
                              textColor: whiteText,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              width: 3.sp,
                            ),
                  
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  
                    ...List.generate(
                      2, (index){
                        return Column(
                          children: [
                            const HashtagWidget(
                              image: JoyooAssetsPaths.humanImage,
                              numOfViews: "2790 views",
                              userName: "fashiontips",
                            ),
                            SizedBox(
                              height: 20.sp,
                            )
                          ],
                        );
                      }
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                  
                    //////////////////////////////////////////////////////////
                    /// PHASE 4: MUSIC SECTION
                    //////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        JoyooText(
                          text: "Music",
                          textColor: whiteText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  
                    ...List.generate(
                      3, (index){
                        return Column(
                          children: [
                            const MusicWidget(
                              image: JoyooAssetsPaths.humanImage,
                              numOfViews: "10 people",
                              title: "Just Talking (feat. Carton &...",
                              artist: "Alexie Krasnov & Vladimir Zavaza...",
                            ),
                            SizedBox(
                              height: 20.sp,
                            )
                          ],
                        );
                      }
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                  
                    //////////////////////////////////////////////////////////
                    /// PHASE 5: LIVE SECTION
                    //////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        JoyooText(
                          text: "Live",
                          textColor: whiteText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  
                    SizedBox(
                      height: 310.sp,
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //nextScreen(context, const ViewDiscoveryItem());
                                },
                                child: const LiveWidget(
                                  coverImage: JoyooAssetsPaths.earRingImage,
                                  numOfPeople: "356",
                                  status: "LIVE",
                                  name: "PitFashion...",
                                  profileImage: JoyooAssetsPaths.humanImage,
                                  description: "What’s your favorite  cloth wedding #fashion #ifas...",
                                ),
                              ),
                              SizedBox(width: 10.sp,)
                            ],
                          );
                        },
                        
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                  
                    //////////////////////////////////////////////////////////
                    /// PHASE 5: LOCATION SECTION
                    //////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        JoyooText(
                          text: "Location",
                          textColor: whiteText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  
                    ...List.generate(
                      3, (index){
                        return Column(
                          children: [
                            const LocationWidget(
                              name: "Fashion Plaza",
                              placeAndNumVideos: "Punjab House  | 306 videos",
                              address: "Open | Multan, Punjab, Pakistan",
                            ),
                            SizedBox(
                              height: 20.sp,
                            )
                          ],
                        );
                      }
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                  ],
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}