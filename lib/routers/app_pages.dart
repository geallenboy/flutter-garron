import 'package:garron/pages/login/view.dart';
import 'package:garron/pages/course/index.dart';
import 'package:garron/pages/welcome/index.dart';
import 'package:garron/pages/goods_cate/index.dart';
import 'package:garron/pages/mine/index.dart';
import 'package:get/get.dart';

import 'package:garron/pages/home/index.dart';
import 'package:garron/middlewares/index.dart';
import 'package:garron/pages/index/index.dart';
import 'index.dart';

class AppPages {
  static const INITIAL = AppRoutes.welcome;
  static const INITIALLOGIN = AppRoutes.login;
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.index,
      page: () => const IndexView(),
      binding: IndexBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: AppRoutes.course,
      page: () => const CourseView(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: AppRoutes.goodsCate,
      page: () => const GoodsCateView(),
      binding: GoodsCateBinding(),
    ),
    GetPage(
      name: AppRoutes.mime,
      page: () => const MimeView(),
      binding: MineBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
  ];
}
