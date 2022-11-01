import 'package:get/get.dart';
import 'package:qsunnah_final/featured/profile/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
