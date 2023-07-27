import 'package:garron/pages/navigationBar/controller.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(() => NavigationBarController());
  }
}
