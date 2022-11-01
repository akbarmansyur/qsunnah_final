import 'package:get/get.dart';
import 'package:qsunnah_final/content/beranda/beranda_controller.dart';

class BerandaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BerandaController>(() => BerandaController());
  }
}
