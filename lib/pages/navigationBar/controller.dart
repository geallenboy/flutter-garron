import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:get/get.dart';

import '../course/view.dart';
import '../home/view.dart';
import '../mine/view.dart';

class NavigationBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var currentIndex = 0.obs;
  static int initialPage = 0;
  final PageController controller = PageController(initialPage: initialPage);
  final zoomDrawerController = ZoomDrawerController();

  late List<Widget> pages = [
    const HomeView(),
    const CourseView(),
    const MimeView()
  ];
  //用于打开抽屉
  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    //注意一定要手动调用update！！
    update();
  }

  /// Tab控制
  late final TabController pageController = TabController(
    initialIndex: 0,
    length: pages.length,
    vsync: this,
  );

  void changeTabIndex(index) {
    currentIndex.value = index;
    update();
    controller.jumpToPage(index);
  }

  /// 初始
  @override
  void onInit() {
    super.onInit();
  }

  /// 可 async 拉取数据
  /// 可触发展示交互组件
  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
  }

  /// 关闭页面
  @override
  void onClose() {
    super.onClose();
  }

  /// 被释放
  /// 手动 释放各种内存资源
  @override
  void dispose() {
    super.dispose();
  }
}
