import 'package:dio/dio.dart';
import 'package:news_app/model/response/ArticlesResponse.dart';
import 'package:news_app/model/response/sourcesDm.dart';
import 'package:news_app/model/response/sources_response.dart';

import '../model/response/articlesDm.dart';

abstract final class ApiManeger {
 static
 String defaultError = "Something went wrong";
  static Dio dio = Dio(BaseOptions(baseUrl: "https://newsapi.org/"));

  static String apiKey = "9a3591c975c74c63b9c78a0e6ed2d309";

  static Future<List<SourcesDm>> loadSources() async {
    try {
      Response response = await dio.get(
        "v2/top-headlines/sources?apiKey=$apiKey",
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        Map<String, dynamic> json = response.data;
        return SourcesResponse.fromJson(json).sources!;
      }
      throw defaultError ;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<ArticlesDm>> loadArticles(String sourceId) async {
    try {
      Response response = await dio.get(
        "v2/everything",
        queryParameters: {
          "apiKey": "9a3591c975c74c63b9c78a0e6ed2d309",
          "sources": sourceId,
        },
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        Map<String, dynamic> json = response.data;
        return ArticlesResponse.fromJson(json).articles!;
      }
      throw defaultError ;
    } catch (e) {
      rethrow;
    }
  }
}
