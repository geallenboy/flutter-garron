import 'package:garron/common/storage.dart';
import 'package:garron/services/index.dart';
import 'package:get/get.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;

  @override
  void onInit() {
    super.onInit();
    print(StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY));
    isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  // 标记用户已打开APP
  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
  }
}
