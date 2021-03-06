import 'package:news_api_app_flutter/models/news_articles.dart';

class NewsArticleViewModel{

  NewsArticle _newsArticle;
  NewsArticleViewModel({NewsArticle article}): _newsArticle = article;

  String get title{
    return _newsArticle.title;
  }
  String get description{
    return _newsArticle.description;
  }
  String get imageUrl{
    return _newsArticle.urlToImage;
  }
  String get url{
    return _newsArticle.url;
  }
}