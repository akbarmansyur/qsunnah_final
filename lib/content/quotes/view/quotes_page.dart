import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/quotes/quotes_controller.dart';

class QuotesPage extends GetView<QuotesController> {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text('Quotes'),
      ],
    ));
  }
}
