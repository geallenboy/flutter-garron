import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:garron/common/themes/app_theme.dart';
import 'package:garron/pages/navigationBar/index.dart';
import 'package:garron/store/app.dart';
import 'package:garron/widgets/menu/index.dart';
import 'package:get/get.dart';

class ApplicationView extends GetView<NavigationBarController> {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller.zoomDrawerController,
      menuScreen: MenuScreenLeft(),
      mainScreen: const NavigationBarView(),
      borderRadius: 36.w,
      showShadow: true,
      disableDragGesture: false,
      angle: -0.2,
      mainScreenScale: 0.3,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.70,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      style: DrawerStyle.defaultStyle,
      menuBackgroundColor: Theme.of(context).primaryColor,
    );
  }
}
