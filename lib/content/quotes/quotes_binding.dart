import 'package:get/get.dart';
import 'package:qsunnah_final/content/beranda/beranda_controller.dart';
import 'package:qsunnah_final/content/quotes/quotes_controller.dart';

class QuotesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuotesController>(() => QuotesController());
  }
}
