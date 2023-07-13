import 'package:garron/utils/request.dart';

class HomeAPI {
  static Future Function(dynamic data) getStuSchsPoint = (data) async {
    return await DioRequest().httpRequest(
        '/api/classDate/getStuSchsPoint', true, 'post',
        data: data);
  };

  static Future Function(dynamic data) getBindStudents = (data) async {
    return await DioRequest()
        .httpRequest('/api/member/getBindStudents', true, 'post', data: data);
  };
}
