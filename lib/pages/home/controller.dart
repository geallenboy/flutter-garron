import 'package:get/get.dart';
import 'package:garron/apis/home.dart';

class HomeController extends GetxController {
  var data = [].obs;
  var stuSchsPoint = [].obs;
  var menus = [].obs;
  var name = 'title'.obs;
  var tabIndex = 0;

  void changeTabIndex(int index) {
    print(index);
    tabIndex = index;
    update();
  }

  void asyncLoadHomeDate() async {
    var res = await HomeAPI.getStuSchsPoint({});
    if (res.code == 200) {
      stuSchsPoint.addAll(res.data);
    }
  }

  void getName() {
    name.value = '标题';
  }

  /// 初始
  @override
  void onInit() {
    getName();

    super.onInit();
    // asyncLoadHomeDate();
    print('onInit');
  }

  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
    print('onReady');
  }
}
