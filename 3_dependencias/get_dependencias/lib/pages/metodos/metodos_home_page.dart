import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/routes/app_routes.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Métodos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.metodos.put);
            },
            child: const Text("Put"),
          ),
          OutlinedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.metodos.lazyPut);
            },
            child: const Text("LazyPut"),
          ),
        ],
      )),
    );
  }
}
