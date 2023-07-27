import 'package:flutter/material.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_cyan.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_default.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_green.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_orange.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_purple.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_red.dart';
import 'package:garron/common/themes/multiple_themes_mode/theme_yellow.dart';

enum AppMultipleThemesMode { light, dark }

/// 多主题
Map<String, Map<AppMultipleThemesMode, ThemeData>> appMultipleThemesMode = {
  "default": {
    AppMultipleThemesMode.light: AppThemeDefault.lightTheme,
    AppMultipleThemesMode.dark: AppThemeDefault.darkTheme,
  },
  "red": {
    AppMultipleThemesMode.light: AppThemeRed.lightTheme,
    AppMultipleThemesMode.dark: AppThemeRed.darkTheme,
  },
  "orange": {
    AppMultipleThemesMode.light: AppThemeOrange.lightTheme,
    AppMultipleThemesMode.dark: AppThemeOrange.darkTheme,
  },
  "yellow": {
    AppMultipleThemesMode.light: AppThemeYellow.lightTheme,
    AppMultipleThemesMode.dark: AppThemeYellow.darkTheme,
  },
  "green": {
    AppMultipleThemesMode.light: AppThemeGreen.lightTheme,
    AppMultipleThemesMode.dark: AppThemeGreen.darkTheme,
  },
  "cyan": {
    AppMultipleThemesMode.light: AppThemeCyan.lightTheme,
    AppMultipleThemesMode.dark: AppThemeCyan.darkTheme,
  },
  "purple": {
    AppMultipleThemesMode.light: AppThemePurple.lightTheme,
    AppMultipleThemesMode.dark: AppThemePurple.darkTheme,
  }
};

/// 主题基础
class AppTheme {
  String multipleThemesMode = "default";
  AppTheme(this.multipleThemesMode);

  /// 设备参考大小
  static const double wdp = 360.0;
  static const double hdp = 690.0;

  /// 次要颜色
  static const subColor = Color(0xFFAFB8BF);

  /// 背景色系列
  static const backgroundColor1 = Color(0xFFE8ECF0);
  static const backgroundColor2 = Color(0xFFFCFBFC);
  static const backgroundColor3 = Color(0xFFF3F2F3);

  /// 多主题 light
  ThemeData? multipleThemesLightMode() {
    ThemeData? lightTheme =
        appMultipleThemesMode["default"]![AppMultipleThemesMode.light];
    if (appMultipleThemesMode[multipleThemesMode] != null) {
      lightTheme = appMultipleThemesMode[multipleThemesMode]![
          AppMultipleThemesMode.light];
    }
    return lightTheme;
  }

  /// 多主题 dark
  ThemeData? multipleThemesDarkMode() {
    ThemeData? darkTheme =
        appMultipleThemesMode["default"]![AppMultipleThemesMode.dark];
    if (appMultipleThemesMode[multipleThemesMode] != null) {
      darkTheme = appMultipleThemesMode[multipleThemesMode]![
          AppMultipleThemesMode.dark];
    }
    return darkTheme;
  }
}

/// system(默认)：跟随系统 light：普通 dark：深色
ThemeMode darkThemeMode(String mode) {
  ThemeMode themeMode = ThemeMode.system;
  switch (mode) {
    case "system":
      themeMode = ThemeMode.system;
      break;
    case "dark":
      themeMode = ThemeMode.dark;
      break;
    case "light":
      themeMode = ThemeMode.light;
      break;
    default:
      themeMode = ThemeMode.system;
      break;
  }
  return themeMode;
}
