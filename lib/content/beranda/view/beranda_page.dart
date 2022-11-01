import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/beranda/beranda_controller.dart';

class BerandaPage extends GetView<BerandaController> {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text('Beranda'),
      ],
    ));
  }
}
