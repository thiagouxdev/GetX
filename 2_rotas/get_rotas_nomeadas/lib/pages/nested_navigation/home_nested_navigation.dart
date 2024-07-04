import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/pages/apple_page.dart';
import 'pages/android_page.dart';
import 'pages/flutter_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  HomeNestedNavigation({super.key});

  final currentBottonIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation'),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          fixedColor: Colors.green,
          iconSize: 28,
          currentIndex: currentBottonIndex.value,
          onTap: (value) {
            currentBottonIndex(value);
            switch (value) {
              case 0:
                Get.offNamed("/apple", id: 1);
                break;
              case 1:
                Get.offNamed("/flutter", id: 1);
                break;
              case 2:
                Get.offNamed("/android", id: 1);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apple_outlined),
              activeIcon: Icon(Icons.apple),
              label: "Apple",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flutter_dash_outlined),
              activeIcon: Icon(Icons.flutter_dash_sharp),
              label: "Flutter",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.android_outlined),
              activeIcon: Icon(Icons.android),
              label: "Android",
            ),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: "/",
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if (settings.name == "/apple") {
            page = const ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == "/flutter") {
            page = const FlutterPage();
            transition = Transition.zoom;
          } else {
            page = const AndroidPage();
            transition = Transition.rightToLeft;
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
