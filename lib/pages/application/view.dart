import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:garron/pages/navigationBar/index.dart';
import 'package:garron/widgets/menu/index.dart';
import 'package:get/get.dart';

class ApplicationView extends GetView<NavigationBarController> {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller.zoomDrawerController,
      menuScreen: const MenuScreenLeft(),
      mainScreen: const NavigationBarView(),
      borderRadius: 24.0,
      showShadow: true,
      angle: -0.2,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      // openCurve: Curves.fastOutSlowIn,
      // closeCurve: Curves.bounceIn,
      menuBackgroundColor: Theme.of(context).primaryColor,
    );
  }
}
