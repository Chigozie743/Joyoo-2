import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/screens/discovery/discovery_details/veiw_discovery_item.dart';
import 'package:joyoo/screens/discovery/discovery_widget/discovery_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //////////////////////////////////////////////////////////
          /// PHASE 1: Horizontal List View
          //////////////////////////////////////////////////////////
          KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              return SizedBox(
                height: isKeyboardVisible ? size.height.sp - 491.sp : size.height.sp - 250.sp,
                child: ListView(
                  padding: EdgeInsets.only(left: 20.sp, right: 10.sp, top: 15.sp),
                  children: [
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
                          child: const DiscoveryDetailsWidget(
                            coverImage: JoyooAssetsPaths.earRingImage,
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
              );
            }
          ),
        ],
      ),
    );
  }
}