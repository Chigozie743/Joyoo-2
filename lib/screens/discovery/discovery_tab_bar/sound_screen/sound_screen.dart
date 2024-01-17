import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/screens/discovery/discovery_widget/music_widget.dart';

class SoundScreen extends StatefulWidget {
  const SoundScreen({super.key});

  @override
  State<SoundScreen> createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
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
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 15.sp),
                  children: [
                    
                    ...List.generate(
                      21, (index){
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
                      height: 10.sp,
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