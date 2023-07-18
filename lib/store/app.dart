import 'package:flutter/material.dart';
import 'package:garron/common/storage.dart';
import 'package:garron/common/themes/app_theme.dart';
import 'package:garron/services/index.dart';
import 'package:get/get.dart';

class AppStore extends GetxController {
  static AppStore get to => Get.find();

  /// 主题模式 默认获取系统
  ThemeMode themeMode = ThemeMode.system;

  /// 多主题模式颜色设置
  String multipleThemesMode = "default";

  Locale locale = const Locale('zh', 'CN');

  @override
  void onInit() {
    super.onInit();
    onInitLocale();
  }

  ///设置主题模式
  void setThemeMode(String themeModeValue) {
    themeMode = darkThemeMode(themeModeValue);
    StorageService.to.setString(STORAGE_THEME, themeModeValue);
    update();
  }

  /// 设置-多主题模式
  void setMultipleThemesMode(String multipleThemesModeValue) {
    multipleThemesMode = multipleThemesModeValue;
    StorageService.to.setString(STORAGE_COLOR, multipleThemesModeValue);
    update();
  }

  ///获取主题模式
  ThemeMode getThemeMode() {
    var theme = StorageService.to.getString(STORAGE_THEME);
    if (theme.isEmpty) {
      themeMode = darkThemeMode('system');
    }
    return darkThemeMode(theme);
  }

  bool isDarkMode() {
    return getThemeMode() == 'dark';
  }

  ///获取多主题颜色模式
  String getMultipleThemesMode() {
    var theme = StorageService.to.getString(STORAGE_COLOR);
    if (theme.isEmpty) {
      multipleThemesMode = 'default';
    }
    return theme;
  }

  /// 初始化- app地区语言
  void onInitLocale() {
    var langCode = StorageService.to.getString(STORAGE_LANGUAGE_CODE);
    if (langCode.isEmpty) {
      StorageService.to.setString(STORAGE_LANGUAGE_CODE, locale.toString());
    } else {
      locale = strToLocale(langCode);
      StorageService.to.setString(STORAGE_LANGUAGE_CODE, langCode);
    }
  }

  ///获取- app地区语言
  String getAppLocal() {
    var langCode = StorageService.to.getString(STORAGE_LANGUAGE_CODE);
    if (langCode.isEmpty) {
      return locale.toString();
    } else {
      return langCode;
    }
  }

  /// 把string类型转化为locale
  Locale strToLocale(String value) {
    final str = value.split('_');
    Locale newVal = Locale(str[0].toString(), str[1].toString());
    return newVal;
  }

  ///设置- app地图语言
  void onLocaleUpdate(String value) {
    locale = strToLocale(value);
    Get.updateLocale(strToLocale(value));
    StorageService.to.setString(STORAGE_LANGUAGE_CODE, value);
  }
}
