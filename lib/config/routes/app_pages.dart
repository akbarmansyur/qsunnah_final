import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/home/home_binding.dart';
import 'package:qsunnah_final/featured/home/view/home_screen.dart';
import 'package:qsunnah_final/featured/splash/splash_binding.dart';
import 'package:qsunnah_final/featured/splash/view/splash_screen.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: _Paths.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      curve: Curves.fastOutSlowIn,
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.zoom,
    ),
  ];
}
