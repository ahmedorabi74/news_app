import 'package:flutter/material.dart';

import '../models/catogery_model.dart';
import 'catogry_card.dart';
import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  final List<Catogerymodel> catogeries = const [
    Catogerymodel(image: 'assets/business.avif', name: 'business'),
    Catogerymodel(image: 'assets/entertaiment.avif', name: 'entertaiment'),
    Catogerymodel(image: 'assets/general.avif', name: 'general'),
    Catogerymodel(image: 'assets/health.avif', name: 'health'),
    Catogerymodel(image: 'assets/science.avif', name: 'science'),
    Catogerymodel(image: 'assets/sports.avif', name: 'sports')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: catogeries.length,
          itemBuilder: (context, index) {
            return card(
              catoegryy: catogeries[index],
            );
          }),
    );
  }
}
