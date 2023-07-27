import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 菜单列表
class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  // 图标
  final Widget? icon;
  // 标题
  final Widget title;
  // 点击事件
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title,
      textColor: Colors.white,
      iconColor: Colors.white,
      minLeadingWidth: 0.w,
      horizontalTitleGap: 28.w,
      onTap: onTap,
    );
  }
}
