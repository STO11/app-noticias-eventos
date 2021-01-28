import 'package:dio/dio.dart';
import 'package:noticiaseventos/models/news_model.dart';
import 'package:noticiaseventos/services/provider_service.dart';

class PrivderRepository {
  Provider _provider = new Provider();

  Future<List<NewsModel>> getNews() async {
    Response response = await _provider.getNews();
    if (response.statusCode == 200) {
      var newsList = (response.data.body as List).map((item) {
        return NewsModel.fromJson(item);
      }).toList();
      return newsList;
    }
    return [];
  }
}
