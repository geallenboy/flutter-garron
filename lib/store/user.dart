import 'package:garron/common/storage.dart';
import 'package:garron/services/index.dart';

import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  // 令牌 token
  final _token = ''.obs;

  String get token => _token.value;
  bool get hasToken => _token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();

    _token.value = StorageService.to.getString(STORAGE_TOKEN_KEY);
  }

  // 保存 token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_TOKEN_KEY, value);
    _token.value = value;
  }

  // 注销
  Future<void> onLogout() async {
    await StorageService.to.remove(STORAGE_TOKEN_KEY);
    _token.value = '';
  }
}
