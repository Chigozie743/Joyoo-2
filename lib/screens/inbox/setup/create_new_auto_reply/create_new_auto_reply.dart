import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/assets_path.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';
import 'package:joyoo/constants/widgets/text_field_constant.dart';

class CreateNewAutoReply extends StatefulWidget {
  const CreateNewAutoReply({super.key});

  @override
  State<CreateNewAutoReply> createState() => _CreateNewAutoReplyState();
}

class _CreateNewAutoReplyState extends State<CreateNewAutoReply> {
  TextEditingController newReplyController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newReplyController = TextEditingController();
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /////////////////////////////////////////////////////////////////
                /// PHASE 1:
                /////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            JoyooAssetsPaths.arrowLeftIcon,
                            height: 20.sp,
                            width: 20.sp,
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
            
                        JoyooText(
                          text: "Create New Auto Reply",
                          textColor: whiteText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
          
                    JoyooText(
                      text: "SAVE",
                      textColor: whiteText,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(
                  height: 45.sp,
                ),
                
                /////////////////////////////////////////////////////////////////
                /// PHASE 2:
                /////////////////////////////////////////////////////////////////
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45.sp,
                        width: 285.sp,
                        child: TextField(
                          controller: newReplyController,
                          decoration: InputDecoration(
                            hintText: "Enter Message",
                            hintStyle: TextStyle(
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: whiteText,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: whiteBackground,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
      
                    Image.asset(
                      JoyooAssetsPaths.cameraIcon,
                      color: grayText,
                      width: 22.sp,
                      height: 20.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.sp,
                ),

                ///////////////////////////////////////////////////////////////////
                JoyooText(
                  text: "Enter text or select media",
                  textColor: grayText,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}