import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/inicial/page1");
              },
              child: const Text("Inicial Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("Pagina que não existe teste");
              },
              child: const Text("404"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/envio_paramentros/envio_parametros_home_page");
              },
              child: const Text("Envio paramentros"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/meddlewares");
              },
              child: const Text("Middlewares"),
            ),
          ],
        ),
      ),
    );
  }
}
