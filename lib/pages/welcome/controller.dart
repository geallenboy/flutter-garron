import 'package:garron/routers/index.dart';
import 'package:garron/store/index.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final obj = ''.obs;

  WelcomeController();

  // 跳转 注册界面
  handleNavSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.index);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
