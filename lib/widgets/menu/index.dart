import 'package:flutter/material.dart';

/// Packages
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/menu/widget/header.dart';
import 'package:garron/widgets/menu/widget/menu.dart';
import 'package:get/get.dart';

/// 外层抽屉菜单（左）
class MenuScreenLeft extends StatelessWidget {
  MenuScreenLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStore>(builder: (config) {
      return Scaffold(
        backgroundColor: AppStore.to.isDarkMode()
            ? Theme.of(context).primaryColor.withAlpha(155)
            : Theme.of(context).primaryColor,
        body: GestureDetector(
          child: const SafeArea(
            child: MenuScreenLeftBody(),
          ),
          onTap: () {
            ZoomDrawer.of(context)?.toggle.call();
          },
        ),
      );
    });
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
