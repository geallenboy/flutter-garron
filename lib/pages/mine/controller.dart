import 'package:get/get.dart';
import 'package:garron/apis/mine.dart';

class MineController extends GetxController {
  final obj = ''.obs;
  var getInfo = <String, String>{}.obs;

  void asyncLoadDate() async {
    var res = await MineAPI.getInfo();

    getInfo['nickName'] = res.data['nickName'];
    getInfo['avatar'] = res.data['avatar'];
    getInfo['phonenumber'] = res.data['phonenumber'];
    // getInfo['muserId'] = res.data['muserId'];

    var res2 = await MineAPI.getUserSignSum();
    print(res2.data);
  }

  @override
  void onInit() {
    super.onInit();
    asyncLoadDate();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
