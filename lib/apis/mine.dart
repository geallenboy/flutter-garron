import 'package:garron/utils/request.dart';

class MineAPI {
  static Future Function() getInfo = () async {
    return await DioRequest().httpRequest('/api/member/getInfo', true, 'get');
  };
  static Future Function() getUserSignSum = () async {
    return await DioRequest()
        .httpRequest('/api/course/getUserSignSum', true, 'post', data: {});
  };

  static Future Function() getBindStudents = () async {
    return await DioRequest()
        .httpRequest('/api/member/getBindStudents', true, 'get');
  };
}
