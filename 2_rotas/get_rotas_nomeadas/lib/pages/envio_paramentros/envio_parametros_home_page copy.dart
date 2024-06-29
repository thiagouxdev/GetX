import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio Paramentros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Pode envia list, objetos, map e etc "Isso já temos no flutter", o envio desses itens é opcinal.
                Get.toNamed("/envio_paramentros/arguments",
                    arguments: {"Aluno": "Thiago", "Curso": "GetX"});
              },
              child: const Text("Arguments"),
            ),
            ElevatedButton(
              onPressed: () {
                //Item não tem em fluter somente GetX
                Get.toNamed(
                  // "/envio_paramentros/pathParam/jornadaGetX", //Assim não sera possivel navegar
                  "/envio_paramentros/pathParam/ThiagoSilva/jornadaGetX",
                );
              },
              child: const Text("Path Param"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Query Param"),
            ),
          ],
        ),
      ),
    );
  }
}
