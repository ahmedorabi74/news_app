import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Article_model.dart';
import '../services/news_service.dart';
import 'package:dio/dio.dart';

import 'newsListView.dart';

class NewsListViewBilder extends StatefulWidget {
  const NewsListViewBilder({super.key,required this.cat});
final String cat;

  @override
  State<NewsListViewBilder> createState() => _NewsListViewBilderState();
}

class _NewsListViewBilderState extends State<NewsListViewBilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(cat: widget.cat);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                "Oops, try again please",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
