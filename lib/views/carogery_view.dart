import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsBuilder.dart';
import 'package:news_app/widgets/newsListView.dart';

class Catogery extends StatelessWidget {
  const Catogery({super.key,required this.cat});
  final String cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView (
        slivers: [
          NewsListViewBilder(cat: cat),

        ],
      ),
    );
  }
}
