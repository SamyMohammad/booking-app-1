import 'package:dio/dio.dart';

import '../network/end_points.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: '$BASE_URL$VERSION',
      receiveDataWhenStatusError: true,
      // queryParameters: {'Content-Type': 'application/json', 'lang': 'en'}
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    return await dio.get(url, queryParameters: query);
  }

  static Future<Response?> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token,
    };

    return await dio.post(url, data: data);
  }


  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token,
    };

    return await dio.put(url, data: data);
  }
}
