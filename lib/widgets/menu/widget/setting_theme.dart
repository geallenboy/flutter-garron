import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/widgets/menu/widget/DarkThemeBody.dart';
import 'package:garron/widgets/menu/widget/MultipleThemesBody.dart';

/// 主题设置
class SettingTheme extends StatefulWidget {
  const SettingTheme({super.key});

  @override
  State<SettingTheme> createState() => _SettingThemeState();
}

class _SettingThemeState extends State<SettingTheme> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      children: [
        /// 主题外观设置
        Padding(
          padding: EdgeInsets.only(left: 6.w, top: 6.w, bottom: 14.w),
          child: Text(
            '主题外观',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ),
        const DarkThemeBody(),
        SizedBox(height: 36.w),

        /// 多主题设置-可浅色、深色模式独立配色方案
        Padding(
          padding: EdgeInsets.only(left: 6.w, top: 6.w, bottom: 14.w),
          child: Text(
            '多主题',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ),
        const MultipleThemesBody(),
        SizedBox(height: 48.w)
      ],
    );
  }
}
