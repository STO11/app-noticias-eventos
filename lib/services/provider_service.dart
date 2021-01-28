import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:noticiaseventos/models/event_model.dart';
import 'package:noticiaseventos/models/news_model.dart';
import 'package:noticiaseventos/models/user_model.dart';

class Provider {
  Dio _dio;
  String urlPrefix = FlutterConfig.get('API_PREFIX');
  String urlBase = FlutterConfig.get('API_URL');

  Provider() {
    BaseOptions options = new BaseOptions(
      baseUrl: urlBase,
      connectTimeout: 5000,
    );
    _dio = new Dio(options);
  }

  Future getNews() async {
    try {
      Response response = await _dio.get("$urlPrefix/news");
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        return e.response.data;
        // print(e.response.data);
        // print(e.response.headers);
        // print(e.response.request);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        // print(e.request);
        // print(e.message);
        return e.message;
      }
    }
  }

  Future getEvents() async {
    try {
      Response response = await _dio.get("$urlPrefix/events");
      // var newsList = (response.data.body as List).map((item) {
      //   return EventModel.fromJson(item);
      // }).toList();
      return response;
    } on DioError catch (e) {
      return e;
    }
  }

  Future registerInApp(UserModel user) async {
    try {
      await _dio.post("$urlPrefix/register", data: user.toJson());
    } on DioError catch (e) {
      return e;
    }
  }
}
