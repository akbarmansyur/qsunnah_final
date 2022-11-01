import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qsunnah_final/config/routes/app_pages.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';

class HeaderMenuSection extends StatelessWidget {
  const HeaderMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Obx(() => SizedBox(
          height: 50,
          child: GNav(
              onTabChange: (index) {
                controller.updateSelectedIndexMenuHeader(index);
                if (index == 0) {
                  Get.offAllNamed(Routes.berandaPage, id: 1);
                }
                if (index == 1) {
                  Get.offAllNamed(Routes.article, id: 1);
                }
                if (index == 2) {
                  Get.offAllNamed(Routes.quotes, id: 1);
                }
                if (index == 3) {
                  Get.offAllNamed(Routes.video, id: 1);
                }
                if (index == 4) {
                  Get.offAllNamed(Routes.menu, id: 1);
                }
              },
              selectedIndex: controller.selectedIndexMenuHeader.value,
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              // tab button shadow
              curve: Curves.fastOutSlowIn, // tab animation curves
              gap: 4, // the tab button gap between icon and text
              color: Colors.grey, // unselected icon color
              activeColor: Colors.black, // selected icon and text color
              iconSize: 24, // tab button icon size
              duration: const Duration(milliseconds: 300),
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              tabBackgroundColor: Colors.black
                  .withOpacity(0.1), // selected tab background color

              tabs: [
                customGButton(
                  icon: Icons.home,
                  text: 'beranda',
                  left: 10,
                ),
                customGButton(
                  icon: Icons.push_pin,
                  text: 'artikel',
                ),
                customGButton(
                  icon: Icons.image,
                  text: 'quotes',
                ),
                customGButton(
                  icon: Icons.play_arrow,
                  text: 'video',
                ),
                customGButton(
                  right: 10,
                  icon: Icons.dashboard,
                  text: 'menu',
                )
              ]),
        ));
  }

  GButton customGButton(
      {required String text,
      required IconData icon,
      double? left,
      double? right}) {
    return GButton(
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(left: left ?? 0, right: right ?? 0),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      icon: icon,
      text: text,
    );
  }
}
