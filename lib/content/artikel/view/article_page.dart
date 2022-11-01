import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/artikel/article_controller.dart';

class ArticlePage extends GetView<ArticleController> {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text('article'),
      ],
    ));
  }
}
