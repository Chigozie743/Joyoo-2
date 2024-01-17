import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/widgets/column_text_widget.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: size.height.sp - 825.sp,
            child: ListView(
              padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 15.sp),
              children: const [
                Center(
                  child: ColumnTextWidget(
                    headText: "This account is private",
                    bodyText: "Follow this account to see their likes and posts",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}