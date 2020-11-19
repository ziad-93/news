import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:news_api_app_flutter/pages/newsList.dart';
import 'package:news_api_app_flutter/viewmodels/newsArticleListViewModel.dart';
import 'package:news_api_app_flutter/viewmodels/newsArticleViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fresh news",
      home:
      ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child: NewsList()
      )
    );
  }
}
