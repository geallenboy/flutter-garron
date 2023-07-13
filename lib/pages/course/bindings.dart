import 'package:get/get.dart';
import 'controller.dart';

class CourseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseController>(() => CourseController());
  }
}
