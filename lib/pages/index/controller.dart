import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  var currentIndex = 0.obs;
  static int initialPage = 0;
  final PageController controller = PageController(initialPage: initialPage);
  late List<Widget> pages;
  void changeTabIndex(index) {
    currentIndex.value = index;
    update();
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
