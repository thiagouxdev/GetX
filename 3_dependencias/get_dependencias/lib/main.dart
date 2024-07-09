import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/routes/app_pages.dart';
import 'package:get_dependencias/utils/theme/theme.dart';
import 'pages/basico/basico_theme_controller.dart';

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
            getPages: AppPages.page,
          ),
        );
      },
    );
  }
}
