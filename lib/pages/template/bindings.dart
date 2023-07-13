import 'package:get/get.dart';
import 'controller.dart';

class TemplateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TemplateController>(() => TemplateController());
  }
}
