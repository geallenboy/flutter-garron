import 'package:flutter/material.dart';
import 'package:garron/routers/index.dart';

import 'package:get/get.dart';
import 'package:garron/store/user.dart';

/// 检查是否登录
class RouteAuthMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.hasToken) {
      return null;
    } else {
      Future.delayed(
          Duration(seconds: 1), () => Get.snackbar("提示", "登录过期,请重新登录"));
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}
