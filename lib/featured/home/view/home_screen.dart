import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';
import 'package:qsunnah_final/featured/home/view/responsive_builder/desktop_home_screen.dart';
import 'package:qsunnah_final/featured/home/view/responsive_builder/landscape_home_screen.dart';
import 'package:qsunnah_final/featured/home/view/responsive_builder/mobile_home_screen.dart';
import 'package:qsunnah_final/featured/home/view/responsive_builder/tablet_home_screen.dart';
import 'package:qsunnah_final/featured/layout/responsive_layout.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ResponsiveLayout(
          mobileDevice: MobileHomeScreen(),
          tabletDevice: TabletHomeScreen(),
          desktopDevice: DeskTopHomeScreen(),
          landscapeDevice: LandscapeHomeScreen(),
        ),
      ),
    );
  }
}
