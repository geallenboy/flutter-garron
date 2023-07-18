import "package:dio/dio.dart";
import 'package:get/get.dart';
import 'package:garron/entity/base.dart';
import 'package:garron/store/user.dart';

/// dio网络请求配置表 自定义
class DioConfig {
  static const baseURL = ""; //域名
  static const timeout = 10000; //超时时间
}

// 网络请求工具类
class DioRequest {
  late Dio dio;
  static DioRequest? _instance;

  /// 构造函数
  DioRequest() {
    dio = Dio();
    dio.options = BaseOptions(
        baseUrl: DioConfig.baseURL,
        connectTimeout: DioConfig.timeout,
        sendTimeout: DioConfig.timeout,
        receiveTimeout: DioConfig.timeout,
        contentType: "application/json; charset=utf-8",
        headers: {});

    /// 请求拦截器 and 响应拦截机 and 错误处理
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      options.responseType = ResponseType.json;
      print("================== 请求数据 ==========================");
      print("url = ${options.uri.toString()}");
      print("headers = ${options.headers}");
      print("params = ${options.data}");
      return handler.next(options);
    }, onResponse: (response, handler) {
      if (response.data["code"] == '403') {
        UserStore.to.removeStore();
        Get.toNamed("/login");
      }
      if ((response.data["code"] == '401')) {
        UserStore.to.removeStore();
        Get.toNamed("/login");
      }
      print("================== 响应数据 ==========================");
      print("response = ${response}");
      handler.next(response);
    }, onError: (DioError e, handler) {
      Get.snackbar("网络错误", "请求失败");
      print("================== 错误响应数据 ======================");
      print("type = ${e.type}");
      print("message = ${e.message}");
      return handler.next(e);
    }));
  }

  static DioRequest getInstance() {
    return _instance ??= DioRequest();
  }

  httpRequest(
    String path,
    bool isToken,
    String method, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    Options options;
    if (isToken) {
      options = Options(
        headers: {
          "content-type": "application/json; charset=utf-8",
          "appId": "wx451ef24626489257",
          "Authorization": "Bearer ${UserStore.to.token}",
        },
        method: method,
      );
    } else {
      options = Options(
        headers: {"content-type": "application/json; charset=utf-8"},
        method: method,
      );
    }
    switch (method) {
      case "get":
        var resp = await dio.request(path,
            queryParameters: queryParameters, options: options);
        return BaseEntity.fromJson(resp.data);
      case "post":
        var resp = await dio.request(path, data: data, options: options);
        return BaseEntity.fromJson(resp.data);
      case "put":
        var resp = await dio.request(
          path,
          queryParameters: data,
          data: data,
          options: options,
        );
        return BaseEntity.fromJson(resp.data);
      case "delete":
        var resp = await dio.request(path, data: data, options: options);
        return BaseEntity.fromJson(resp.data);
    }
  }
}
