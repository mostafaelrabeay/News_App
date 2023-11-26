import 'package:dio/dio.dart';

import 'package:flutter_application_1/categorys/artticlesmodel.dart';

class GetNews {
  final Dio dio;

  GetNews(this.dio);
  Future<List<ArticlesModel>> fetchnews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=c408f1b55b774f7d9d83f19cc791569f&category=$category');
      //map of json data from request.
      Map<String, dynamic> jsondata = response.data;
      //list of maps jsondata .
      List<dynamic> articles = jsondata['articles'];
      //list of objects to use in fluuter.
      List<ArticlesModel> articleslist = [];
      for (var article in articles) {
        ArticlesModel articlemodel = ArticlesModel(
          img: article['urlToImage'],
          suptitle: article['description'],
          title: article['title'],
        );
        articleslist.add(articlemodel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
