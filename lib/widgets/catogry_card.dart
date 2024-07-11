import 'package:flutter/material.dart';
import 'package:news_app/models/catogery_model.dart';

import '../views/carogery_view.dart';

class card extends StatelessWidget {
  const card({super.key, required this.catoegryy});

  final Catogerymodel catoegryy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Catogery(cat: catoegryy.name,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(catoegryy.image),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              catoegryy.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
