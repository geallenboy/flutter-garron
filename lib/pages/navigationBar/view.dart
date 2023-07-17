import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garron/common/themes/app_theme.dart';
import 'package:garron/store/app.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import 'index.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: controller.controller,
        onPageChanged: (index) => _onJumpTo(index),
        physics: const NeverScrollableScrollPhysics(),
        children: controller.pages,
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            appTheme.bottomNavigationBarTheme.backgroundColor ?? Colors.white,
            appTheme.bottomNavigationBarTheme.backgroundColor ?? Colors.white,
          ]),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 24),
          ],
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              TabBar(
                  // 震动或声音反馈
                  enableFeedback: true,
                  padding: EdgeInsets.only(left: 40.w, right: 0.w),
                  controller: controller.pageController,
                  indicatorColor: Colors.transparent,
                  labelStyle: TextStyle(
                    height: 0.5.h,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    height: 0.5.h,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(
                      key: const Key("tab_home"),
                      text: 'tab_home'.tr,
                      icon: Icon(
                        Remix.home_line,
                        size: 20.sp,
                      ),
                    ),
                    Tab(
                      key: const Key("tab_mood"),
                      text: 'tab_product'.tr,
                      icon: Icon(
                        Remix.heart_3_line,
                        size: 20.sp,
                      ),
                    ),
                    Tab(
                      key: const Key("tab_statistic"),
                      text: 'tab_my'.tr,
                      icon: Icon(
                        Remix.bar_chart_line,
                        size: 20.sp,
                      ),
                    ),
                  ]),
              // 侧栏
              Semantics(
                button: true,
                label: "打开设置",
                child: GestureDetector(
                  key: const Key("tab_screen_left"),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppStore().isDarkMode()
                            ? [
                                Colors.black12,
                                Colors.black12,
                              ]
                            : [
                                AppTheme.backgroundColor1,
                                AppTheme.backgroundColor1,
                              ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14.sp),
                        bottomRight: Radius.circular(14.sp),
                      ),
                    ),
                    child: SizedBox(
                      width: 36.w,
                      height: 42.w,
                      child: Icon(
                        Remix.arrow_right_line,
                        size: 14.sp,
                        color: AppStore().isDarkMode()
                            ? const Color(0xFFEFEFEF)
                            : Colors.black,
                      ),
                    ),
                  ),
                  onTap: () {
                    controller.toggleDrawer();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onJumpTo(int index) {
    controller.controller.jumpToPage(index);
    controller.currentIndex.value = index;
  }
}
