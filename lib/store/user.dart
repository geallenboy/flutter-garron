import 'dart:convert';

import 'package:garron/common/storage.dart';
import 'package:garron/services/index.dart';

import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  // 是否登录
  final _isLogin = false.obs;
  // 令牌 token
  final _token = ''.obs;
  // 用户 profile
  final _profile = <String, String>{}.obs;

  bool get isLogin => _isLogin.value;
  dynamic get profile => _profile;
  String get token => _token.value;
  bool get hasToken => _token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    _token.value = StorageService.to.getString(STORAGE_TOKEN_KEY);
    // var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    // if (profileOffline.isNotEmpty) {
    //   _profile.value = jsonDecode(profileOffline);
    // }
  }

  // 保存 token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_TOKEN_KEY, value);
    _token.value = value;
  }

  // 保存 profile
  Future<void> saveProfile(dynamic profile) async {
    _isLogin.value = true;
    StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  }

  // 注销
  Future<void> onLogout() async {
    await StorageService.to.remove(STORAGE_TOKEN_KEY);
    _isLogin.value = false;
    _token.value = '';
  }

  // remove
  Future<void> removeStore() async {
    await StorageService.to.remove(STORAGE_TOKEN_KEY);
    _isLogin.value = false;
    _token.value = '';
  }
}
