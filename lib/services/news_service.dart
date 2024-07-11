import 'package:dio/dio.dart';

import '../models/Article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String cat}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/everything?q=$cat&apiKey=b59759029c0a49c89f03da682bb9b410");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      // TODO
    }
    {
      return [];
    }
  }
}
