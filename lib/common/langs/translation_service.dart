import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'en_US.dart';
import 'zh_CN.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;

  /// 语言配置
  static final languageConfig = [
    {"text": "简体中文", "value": Locale('zh', 'CN')},
    {"text": "English", "value": Locale('en', 'US')},
  ];
  static final fallbackLocale = Locale('zh', 'CN');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_CN': zh_CN,
      };
}
