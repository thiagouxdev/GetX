import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/utils/theme/theme.dart';
import 'pages/basico/basico_theme_controller.dart';
import 'pages/basico/basico_theme_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Builder(
      builder: (context) {
        return Obx(
          () => GetMaterialApp(
            title: 'Dependencias',
            debugShowCheckedModeBanner: false,
            darkTheme: TAppTheme.darkTheme(context),
            theme: TAppTheme.lightTheme(context),
            themeMode: themeController.themeModeSelected.value,
            getPages: [
              GetPage(
                name: "/",
                page: () => const HomePage(),
              ),
              GetPage(
                name: "/basico",
                page: () => ThemePage(),
              ),
            ],
          ),
        );
      },
    );
  }
}
