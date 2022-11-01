import 'package:get/get.dart';
import 'package:qsunnah_final/content/menu/menu_controller.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(() => MenuController());
  }
}
