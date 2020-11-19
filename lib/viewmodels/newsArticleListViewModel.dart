import 'package:flutter/cupertino.dart';
import 'package:news_api_app_flutter/models/news_articles.dart';
import 'package:news_api_app_flutter/services/webservice.dart';
import 'package:news_api_app_flutter/viewmodels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier{

  List <NewsArticleViewModel> articles = List <NewsArticleViewModel>();

  void populateTopHeadlines() async{
      List <NewsArticle> newsArticles = await WebService().fetchTopHeadlines();
      this.articles = newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
      notifyListeners();
  }
}