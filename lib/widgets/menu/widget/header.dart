import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 头部
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: "关闭设置",
      child: Row(
        children: [
          ClipRRect(
            key: const Key("widget_menu_screen_left_logo"),
            borderRadius: BorderRadius.circular(14.sp),
            child: Image.asset(
              "assets/images/logo.png",
              width: 42.w,
              height: 42.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              "garron",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
              semanticsLabel: "",
            ),
          ),
        ],
      ),
    );
  }
}
