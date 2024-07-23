import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put_permanent_tags/put_page.dart';
import '../pages/basico/basico_theme_page.dart';
import '../pages/home_page.dart';

class AppPages {
  static final page = [
    GetPage(
      name: "/",
      page: () => const HomePage(),
    ),
    GetPage(
      name: "/basico",
      page: () => BasicoThemePage(),
    ),
    GetPage(
      name: "/metodos",
      page: () => const MetodosHomePage(),
      children: [
        GetPage(
          name: "/put",
          page: () => const PutPage(),
        ),
        GetPage(
          name: "/lazy_put",
          page: () => LazyPutPage(),
        ),
      ],
    ),
  ];
}
