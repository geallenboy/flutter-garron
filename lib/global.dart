import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garron/services/index.dart';
import 'package:garron/store/index.dart';
import 'package:garron/utils/index.dart';
import 'package:get/get.dart';

/// 全局静态数据
class Global {
  /// 初始化
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Loading();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<ConfigStore>(ConfigStore());
    Get.put<UserStore>(UserStore());
  }
}
