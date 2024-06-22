import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final nativeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final paramNativo = nativeArgs?['key'] ?? "ParamNative não recebido";

    final paramGet = Get.arguments[key] ?? "ParamGet não recebido";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recebendo Parametros"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Paramento recebigo Flutter Nativo: ${paramNativo.toString()}"),
            Text("Paramento recebigo GetX: $paramGet"),
          ],
        ),
      ),
    );
  }
}
