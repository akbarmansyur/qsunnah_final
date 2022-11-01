import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController sCControl = ScrollController();
  var topHeader = 0.0.obs;
  var selectedIndexMenuHeader = 0.obs;
  var categorySelectedIndex = 0.obs;

  void updateSelectedIndexMenuHeader(index) {
    selectedIndexMenuHeader(index);
  }

  void updateCategorySelectedIndex(index) {
    categorySelectedIndex(index);
  }

  void updateTopHeader() {
    if (sCControl.hasClients) {
      if (sCControl.position.userScrollDirection == ScrollDirection.reverse) {
        if (sCControl.position.pixels > 50) {
          topHeader(-50);
        }
      } else if (sCControl.position.userScrollDirection ==
          ScrollDirection.forward) {
        topHeader(0);
      }
    }
  }

  @override
  void onReady() {
    updateTopHeader();

    super.onInit();
  }
}
