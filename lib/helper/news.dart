import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_api/models/article.dart';
import 'package:news_app_api/secret.dart';

class News {
  List<Article> news = [];

  Future<void> getNews() async {
    final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=$apiKey',
    );

    try {
      final response = await http.get(url);
      if (response.statusCode != 200) return;

      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;

      if (jsonData['status'] == 'ok') {
        for (final element in jsonData['articles'] as List) {
          if (element['urlToImage'] != null &&
              element['description'] != null) {
            final article = Article(
              title: element['title'] as String?,
              author: element['author'] as String?,
              description: element['description'] as String?,
              urlToImage: element['urlToImage'] as String?,
              publshedAt: DateTime.parse(element['publishedAt'] as String),
              content: element['content'] as String?,
              articleUrl: element['url'] as String?,
            );
            news.add(article);
          }
        }
      }
    } catch (e) {
      debugPrint('Error fetching news: $e');
    }
  }
}

class NewsForCategorie {
  List<Article> news = [];

  Future<void> getNewsForCategory(String category) async {
    final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$apiKey',
    );

    try {
      final response = await http.get(url);
      if (response.statusCode != 200) return;

      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;

      if (jsonData['status'] == 'ok') {
        for (final element in jsonData['articles'] as List) {
          if (element['urlToImage'] != null &&
              element['description'] != null) {
            final article = Article(
              title: element['title'] as String?,
              author: element['author'] as String?,
              description: element['description'] as String?,
              urlToImage: element['urlToImage'] as String?,
              publshedAt: DateTime.parse(element['publishedAt'] as String),
              content: element['content'] as String?,
              articleUrl: element['url'] as String?,
            );
            news.add(article);
          }
        }
      }
    } catch (e) {
      debugPrint('Error fetching category news: $e');
    }
  }
}
