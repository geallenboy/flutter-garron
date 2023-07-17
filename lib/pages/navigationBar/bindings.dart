import 'package:get/get.dart';
import 'package:garron/pages/course/index.dart';
import 'package:garron/pages/home/index.dart';
import 'package:garron/pages/mine/index.dart';
import 'controller.dart';

class NavigationBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(() => NavigationBarController());
    Get.lazyPut<MineController>(() => MineController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CourseController>(() => CourseController());
  }
}
