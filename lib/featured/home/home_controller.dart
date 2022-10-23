import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController sCControl = ScrollController();
  var topHeader = 0.0.obs;

  void updateTopHeader() {
    if (sCControl.position.userScrollDirection == ScrollDirection.reverse) {
      if (sCControl.position.pixels > 50) {
        topHeader(-60);
      }
    } else if (sCControl.position.userScrollDirection ==
        ScrollDirection.forward) {
      topHeader(0);
    }
  }

  @override
  void onReady() {
    updateTopHeader();

    super.onInit();
  }
}
