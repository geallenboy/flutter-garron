import 'package:flutter/material.dart';

/// Packages
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

/// 外层抽屉菜单（左）
class MenuScreenLeft extends StatelessWidget {
  const MenuScreenLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withAlpha(155),
      body: GestureDetector(
        child: const SafeArea(
          child: MenuScreenLeftBody(),
        ),
        onTap: () {
          ZoomDrawer.of(context)?.toggle.call();
        },
      ),
    );
  }
}

class MenuScreenLeftBody extends StatelessWidget {
  const MenuScreenLeftBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 72.w,
                bottom: 48.w,
                left: 24.w,
                right: 24.w,
              ),
              child: const Header(),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 24.w,
                left: 24.w,
                right: 24.w,
              ),
              child: const Menu(),
            ),
          ],
        ),
      ],
    );
  }
}

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

/// 菜单
class Menu extends StatelessWidget {
  const Menu({super.key});
  static final _titleTextSize = 14.sp;
  static final _titleIconSize = 20.sp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuList(
          icon: Icon(
            Remix.bubble_chart_line,
            size: _titleIconSize,
          ),
          title: Text(
            '主题',
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("主题");

            /// 底部内容弹出
            // showModalBottomDetail(
            //   context: context,
            //   child: const SettingTheme(),
            // );
          },
        ),
        MenuList(
          icon: Icon(
            Remix.global_line,
            size: _titleIconSize,
          ),
          title: Text(
            '语言',
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("语言");

            /// 底部内容弹出
            // showModalBottomDetail(
            //   context: context,
            //   child: const SettingLanguage(),
            // );
          },
        ),
        MenuList(
          icon: Icon(
            Remix.heart_3_line,
            size: _titleIconSize,
          ),
          title: Text(
            '关于',
            style: TextStyle(
              fontSize: _titleTextSize,
            ),
          ),
          onTap: () {
            debugPrint("关于");
          },
        ),
      ],
    );
  }
}

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
