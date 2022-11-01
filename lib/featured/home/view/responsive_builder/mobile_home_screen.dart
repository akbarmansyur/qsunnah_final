import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/content_builder.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';
import 'package:qsunnah_final/featured/section/content_section.dart';
import 'package:qsunnah_final/featured/section/header_section.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Stack(
      children: [
        ContentBuilder(),
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
