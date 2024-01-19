import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:joyoo/constants/assets_path.dart";
import "package:joyoo/constants/color_constants.dart";
import "package:joyoo/constants/widgets/button_widget.dart";
import "package:joyoo/constants/widgets/circular_image_container.dart";
import "package:joyoo/constants/widgets/text_constant.dart";
import "package:joyoo/constants/widgets/text_field_constant.dart";
import "package:joyoo/screens/profile/message/message_widget/message_widget.dart";

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> messages = [];

  TextEditingController messageController = TextEditingController();

  String _getDummyResponse() {
    // Simulate a dummy response from the receiver
    return "This is a dummy response.";
  }

  void _sendMessage() {
    String message = messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message);
        // Simulate receiver's response
        messages.add(_getDummyResponse());
        messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ashColor,
        titleSpacing: 0.0,
        title: Padding(
          padding: EdgeInsets.only(top: 5.sp, left: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                JoyooAssetsPaths.arrowLeftIcon,
                height: 24.sp,
                width: 24.sp,
              ),
            ),
            SizedBox(width: 10.sp),
        
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: blueBackground),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: CircularImageContainer(
                image: JoyooAssetsPaths.humanSecondImage,
                height: 34.sp,
                width: 34.sp,
              ),
            ),
              Expanded(
                child: Center(
                  child: JoyooText(
                    text: "Kaymash",
                    textColor: whiteText,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.sp, top: 2.sp),
            child: Row(
              children: [
                Icon(
                  Icons.more_vert,
                  color: whiteText,
                ),
                SizedBox(width: 20.sp),
              ],
            ),
          ),
        ]
      ),

      //////////////////////////////////////////////////////////////////////////////
      /// PHASE 2: BOBY SECTION
      //////////////////////////////////////////////////////////////////////////////
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              String message = messages[index];
              bool isSender = index % 2 == 0; // Check if the message is from the sender

              return Align(
                alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 10.sp),
                  child: ChatBubble(
                    text: message,
                    dateText: "12:23pm",
                    boxColor: isSender ? null : transparentColor,
                    borderColor: isSender ? null : blueBackground,
                    columnAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    rowAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
                  ),
                ),
              );
            },
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SearchFieldBox(
                  //readOnly: true,
                  width: 277.sp,
                  controller: messageController,
                  hintText: 'Type your comment here...',
                  fillColor: ashColor,
                  suffixIcon: Transform.scale(
                    scale: 0.45.sp,
                    child: Image.asset(
                      JoyooAssetsPaths.emojiIcon,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                  ), 
                ),
                SizedBox(
                  width: 10.sp,
                ),

                InkWell(
                  onTap:() {
                    _sendMessage();
                  },
                  child: const RoundIconButtonGradient(
                    icon: JoyooAssetsPaths.sendIcon,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}