part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const berandaPage = _Paths.berandaPage;
  static const article = _Paths.article;
  static const quotes = _Paths.quotes;
  static const video = _Paths.video;
  static const menu = _Paths.menu;
  static const notif = _Paths.notif;
  static const profile = _Paths.profile;
  static const search = _Paths.search;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const splashScreen = '/splashscreen';
  static const login = '/login';
  static const home = '/home';
  static const berandaPage = '/beranda_page';
  static const article = '/article_page';
  static const quotes = '/quotes_page';
  static const video = '/video_page';
  static const menu = '/menu_page';
  static const notif = '/notif';
  static const profile = '/profile';
  static const search = '/search';

  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
}
