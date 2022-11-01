import 'package:get/get.dart';
import 'package:qsunnah_final/content/video/video_controller.dart';

class VideoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoController>(() => VideoController());
  }
}
