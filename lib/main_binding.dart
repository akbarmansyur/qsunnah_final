import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
    // Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoriyImpl());
  }
}
