import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:dio/dio.dart';

import '../models/Article_model.dart';
import 'NewStile.dart';
import 'list_view.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsListView({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return newstile(
        articleModel: articles[index],
      );
    }));
  }
}
