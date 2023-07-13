import 'package:garron/utils/request.dart';

class UserAPI {
  static Future Function() getUserInfo = () async {
    return await DioRequest().httpRequest('/api/member/getInfo', true, 'get');
  };
}
