import 'package:news_app/model/response/sources_response.dart';

import 'articlesDm.dart';

class ArticlesResponse {
  String? status;
  int? totalResults;
  List<ArticlesDm>? articles;

  ArticlesResponse({this.status, this.totalResults, this.articles});

  ArticlesResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <ArticlesDm>[];
      json['articles'].forEach((v) {
        articles!.add(new ArticlesDm.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
