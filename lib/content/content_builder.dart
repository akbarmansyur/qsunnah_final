import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/config/routes/app_pages.dart';
import 'package:qsunnah_final/content/artikel/article_binding.dart';
import 'package:qsunnah_final/content/artikel/view/article_page.dart';
import 'package:qsunnah_final/content/beranda/beranda_binding.dart';
import 'package:qsunnah_final/content/beranda/view/beranda_page.dart';
import 'package:qsunnah_final/content/menu/menu_binding.dart';
import 'package:qsunnah_final/content/menu/view/menu_page.dart';
import 'package:qsunnah_final/content/quotes/quotes_binding.dart';
import 'package:qsunnah_final/content/quotes/view/quotes_page.dart';
import 'package:qsunnah_final/content/video/video_binding.dart';
import 'package:qsunnah_final/content/video/view/video_page.dart';

class ContentBuilder extends StatelessWidget {
  const ContentBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.berandaPage:
            return GetPageRoute(
              routeName: Routes.berandaPage,
              page: () => const BerandaPage(),
              binding: BerandaBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
          case Routes.article:
            return GetPageRoute(
              routeName: Routes.article,
              page: () => const ArticlePage(),
              binding: ArticleBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );

          case Routes.quotes:
            return GetPageRoute(
              routeName: Routes.quotes,
              page: () => const QuotesPage(),
              binding: QuotesBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
          case Routes.video:
            return GetPageRoute(
              routeName: Routes.video,
              page: () => const VideoPage(),
              binding: VideoBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
          case Routes.menu:
            return GetPageRoute(
              routeName: Routes.menu,
              page: () => const MenuPage(),
              binding: MenuBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );

          default:
            return GetPageRoute(
              routeName: Routes.berandaPage,
              page: () => const BerandaPage(),
              binding: BerandaBinding(),
              transition: Transition.downToUp,
              curve: Curves.fastOutSlowIn,
              transitionDuration: const Duration(milliseconds: 600),
            );
        }
      },
    );
  }
}
