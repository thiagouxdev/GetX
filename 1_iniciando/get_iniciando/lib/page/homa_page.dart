import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_iniciando/page/page_1.dart';
import 'package:get_iniciando/page/page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Center(
          child: Column(
        children: [
          FilledButton(
            onPressed: () {
              Get.to(const PageOne());
            },
            child: const Text("Ir para page 1"),
          ),
          FilledButton(
            onPressed: () {
              Get.to(const PageTwo());
            },
            child: const Text("Ir para page 2"),
          ),
        ],
      )),
    );
  }
}
