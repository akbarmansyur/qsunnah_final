import 'package:get/get.dart';
import 'package:qsunnah_final/featured/notification/notification_controller.dart';

class NotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController());
  }
}
