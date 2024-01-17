import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/widgets/text_constant.dart';

class CustomBottomAppBarItem {
  final double? iconHeight;
  final double? iconWidth;
  final String imageData;
  final String text;

  CustomBottomAppBarItem(
    this.iconHeight,
    this.iconWidth,
    this.imageData, 
    this.text,
  );
}

class CustomBottomAppBar extends StatefulWidget {
  final List<CustomBottomAppBarItem> items;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? textColor;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTabSelected;
  final int activeindex;

  const CustomBottomAppBar({
    super.key,
    required this.items,
    this.height,
    this.iconSize,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.activeindex = 0,
    required this.onTabSelected,
    this.textColor,
  });

  @override
  State<StatefulWidget> createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  // Update Index
  _updatedIndex(int index) {
    widget.onTabSelected(index);
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _updatedIndex(widget.activeindex);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Generated a list of the Items for the BottomNavBar
    List<Widget> items = List.generate(
      widget.items.length,
      (int index) {
        return _buildTabItem(
          item: widget.items[index],
          index: index,
          onPressed: _updatedIndex,
        );
      },
    );
    // items.insert(items.length >> 1, _buildMiddleTabItem());

    // Bottom App Bar Implementation
    return BottomAppBar(
      color: blackBackground,
      surfaceTintColor: blackBackground,
      shadowColor: whiteBackground,
      elevation: 8.sp,
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }

  Widget _buildTabItem({
    CustomBottomAppBarItem? item,
    int? index,
    ValueChanged<int>? onPressed,
  }) {
    Color? color =
        _selectedIndex == index ? widget.selectedColor : widget.color;
    Color? textColor =
        _selectedIndex == index ? const Color.fromARGB(255, 122, 159, 233) : whiteBackground;

    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed!(index!),
            borderRadius: BorderRadius.circular(10.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  item!.imageData,
                  color: color,
                  height: item.iconHeight ?? 20.sp, // Use provided value or default
                  width: item.iconWidth ?? 20.sp,
                ),
                JoyooText(
                  text: item.text,
                  textColor: textColor,
                  fontSize: 11.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
