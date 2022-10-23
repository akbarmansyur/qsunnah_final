import 'package:get/get.dart';
import 'package:qsunnah_final/config/routes/app_pages.dart';

class SplashController extends GetxController {
  // final ApiRepositoryInterface apiRepositoryInterface;
  // final LocalRepositoryInterface localRepositoryInterface;

  // SplashController({
  //   required this.apiRepositoryInterface,
  //   required this.localRepositoryInterface,
  // });

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(Routes.home),
    );
    super.onInit();
  }
}
