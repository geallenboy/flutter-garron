import 'package:get/get.dart';
import 'package:garron/common/colors.dart';
import 'package:garron/pages/home/view.dart';
import 'package:garron/pages/mine/index.dart';
import 'package:garron/pages/course/index.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.pages = [const HomeView(), const CourseView(), const MimeView()];
    return Scaffold(
      body: PageView(
        controller: controller.controller,
        onPageChanged: (index) => _onJumpTo(index),
        physics: const NeverScrollableScrollPhysics(),
        children: controller.pages,
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: AppColor.secondaryText,
            selectedItemColor: AppColor.primaryText,
            onTap: (index) => _onJumpTo(index),
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "课程"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的")
            ],
          )),
    );
  }

  _onJumpTo(int index) {
    controller.controller.jumpToPage(index);
    controller.currentIndex.value = index;
  }
}
