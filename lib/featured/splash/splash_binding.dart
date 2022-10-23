import 'package:get/get.dart';
import 'package:qsunnah_final/featured/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
          // apiRepositoryInterface: Get.find(),
          // localRepositoryInterface: Get.find(),
          ),
    );
  }
}
