import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewStile.dart';
import 'package:news_app/widgets/catogry_card.dart';
import 'package:news_app/widgets/list_view.dart';
import 'package:news_app/widgets/newsListView.dart';
import 'package:dio/dio.dart';

import '../models/Article_model.dart';
import '../services/news_service.dart';
import '../widgets/NewsBuilder.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: listView()),
            NewsListViewBilder(cat: 'Ahly'),
          ],
        ));
  }
}

