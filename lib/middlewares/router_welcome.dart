import 'package:flutter/material.dart';
import 'package:garron/routers/index.dart';
import 'package:garron/store/index.dart';

import 'package:get/get.dart';

/// 第一次欢迎页面
class RouteWelcomeMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (ConfigStore.to.isFirstOpen == false) {
      return null;
    } else {
      if (UserStore.to.hasToken) {
        return const RouteSettings(name: AppRoutes.index);
      } else {
        return const RouteSettings(name: AppRoutes.login);
      }
    }
  }
}
