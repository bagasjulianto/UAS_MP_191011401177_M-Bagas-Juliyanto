import 'package:flutter/material.dart';
import 'package:newsapp/models/model_artikel.dart';
import 'package:newsapp/services/news_service.dart';

class NewsProvider extends ChangeNotifier {
  late NewsModel newsModel = NewsModel();
  final NewsService _newsService = NewsService();

  tampilkanNews() async {
    newsModel = await _newsService.getNews();

    notifyListeners();
  }

  NewsProvider() {
    tampilkanNews();
  }
}
