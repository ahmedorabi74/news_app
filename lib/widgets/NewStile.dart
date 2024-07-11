import 'package:flutter/material.dart';
import 'package:news_app/models/Article_model.dart';

class newstile extends StatelessWidget {
  const newstile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ClipRRect(
            //borderRadius: BorderRadius.circular(6),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.network(
                  articleModel.image ?? 'https://data.textstudio.com/output/sample/animated/4/1/5/5/news-22-5514.gif',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          height: 12,
        ),
         Text(
          articleModel.title?? " football News ",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          articleModel.subtitle?? "Maybe this new removed keep scrolling :) ",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 19, color: Colors.grey, fontWeight: FontWeight.w900),
        ),
      ]),
    );
  }
}
