import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';
import 'package:qsunnah_final/featured/section/content_section.dart';
import 'package:qsunnah_final/featured/section/footer_section.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/section/header_section.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            controller: controller.sCControl,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const ContentSection(),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => AnimatedPositioned(
            top: controller.topHeader.value,
            height: 100,
            left: 0,
            right: 0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
            child: const HeaderSection(),
          ),
        ),
      ],
    );
  }
}
