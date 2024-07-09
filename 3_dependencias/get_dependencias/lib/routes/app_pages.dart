import 'package:get/get.dart';

import '../pages/basico/basico_theme_page.dart';
import '../pages/home_page.dart';

class AppPages {
  static final page = [
    GetPage(
      name: "/",
      page: () => const HomePage(),
    ),
    GetPage(
      name: "/basico_theme_page",
      page: () => ThemePage(),
    ),
  ];
}
