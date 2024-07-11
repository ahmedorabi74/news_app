import 'package:flutter/material.dart';
import 'package:news_app/views/homePage.dart';

void main() {
  runApp(const news());
}

class news extends StatelessWidget {
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: home());
  }
}
