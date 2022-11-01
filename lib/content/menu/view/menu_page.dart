import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/menu/menu_controller.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text('Menu content')
        ],
      ),
    );
  }
}
