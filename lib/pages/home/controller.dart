import 'package:flutter/widgets.dart';
import 'package:garron/pages/home/widgets/category.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var data = [].obs;
  var stuSchsPoint = [].obs;
  var menus = [].obs;
  var name = 'title'.obs;
  var tabIndex = 0;
  int pageNum = 1;
  List<Widget> categoryList = [];
  List<Map> allCategoryLists = [];

  void getCategoryItem() {
    categoryList.add(CategoryWidget(
      key: GlobalKey(),
      category: 'category',
      classify: "classify",
    ));
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  void getName() {
    name.value = '标题';
  }

  /// 初始
  @override
  void onInit() {
    getName();

    super.onInit();
    getCategoryItem();
    print('onInit');
  }

  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
    print('onReady');
  }
}
