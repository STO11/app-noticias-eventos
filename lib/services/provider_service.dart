import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';

class Provider {
  Dio _dio;

  Provider() {
    String urlBase = FlutterConfig.get('API_URL');
    BaseOptions options = new BaseOptions(
      baseUrl: urlBase,
      connectTimeout: 5000,
    );
    _dio = new Dio(options);
  }

  getNews() async {
    try {
      Response response = await _dio.get("/api/news");
      // var newsList = (response.data as List).map((item) {
      //   return News.fromJson(item);
      // }));
    } on DioError catch (err) {
      return err;
    }
  }
}
