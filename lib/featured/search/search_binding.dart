import 'package:get/get.dart';
import 'package:qsunnah_final/featured/search/search_controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
