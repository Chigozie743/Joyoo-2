import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/nav_constant.dart';
import 'package:joyoo/screens/discovery/discovery_details/veiw_discovery_item.dart';
import 'package:joyoo/screens/discovery/discovery_widget/live_widget.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
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