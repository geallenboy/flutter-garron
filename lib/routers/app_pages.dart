import 'package:garron/pages/application/bindings.dart';
import 'package:garron/pages/application/view.dart';
import 'package:garron/pages/login/view.dart';
import 'package:garron/pages/course/index.dart';
import 'package:garron/pages/goods_cate/index.dart';
import 'package:garron/pages/mine/index.dart';
import 'package:get/get.dart';
import 'package:garron/pages/home/index.dart';
import 'package:garron/pages/navigationBar/index.dart';
import 'index.dart';

class AppPages {
  static const INITIAL = AppRoutes.application;
  static const INITIALLOGIN = AppRoutes.login;
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.navigationBar,
      page: () => const NavigationBarView(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
      title: '首页',
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.application,
      page: () => const ApplicationView(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
      title: '登陆',
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
      title: '我的',
      name: AppRoutes.mime,
      page: () => const MimeView(),
      binding: MineBinding(),
    ),
  ];
}
