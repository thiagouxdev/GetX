import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_dependencias/pages/basico/basico_home_page.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GetMaterialApp(
          title: 'Dependencias',
          debugShowCheckedModeBanner: false,
          darkTheme: TAppTheme.darkTheme(context),
          theme: TAppTheme.lightTheme(context),
          themeMode: ThemeMode.system,
          getPages: [
            GetPage(
              name: "/",
              page: () => const HomePage(),
            ),
            GetPage(
              name: "/basico",
              page: () => const BasicoHomePage(),
            ),
          ],
        );
      },
    );
  }
}
