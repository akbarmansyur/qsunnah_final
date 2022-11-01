import 'package:get/get.dart';
import 'package:qsunnah_final/content/artikel/article_controller.dart';

class ArticleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(() => ArticleController());
  }
}
