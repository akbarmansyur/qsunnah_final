import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';
import 'package:qsunnah_final/featured/section/content_section.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/section/header_section.dart';
import 'package:qsunnah_final/featured/section/sidebar_section.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sCController = ScrollController();
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
                SizedBox(
                  height: 100,
                ),
                ContentSection(),
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
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
            child: HeaderSection(),
          ),
        ),
      ],
    );
  }
}
