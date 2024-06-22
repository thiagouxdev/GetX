import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/send_params/page_one.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send Params"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Este método é usado para navegar e enviar parametros para outra pagina',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            FilledButton.tonal(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const PageOne();
                    },
                    settings: const RouteSettings(
                      arguments: {
                        "text": "Paramentro enviado pelo Flutter Nativo"
                      },
                    ),
                  ),
                );
              },
              child: const Text("Enviando Paramentro com Flutter nativo"),
            ),
            FilledButton.tonal(
              onPressed: () => Get.to(() => const PageOne(),
                  arguments: {"text": "Paramentro enviado pelo GetX"}),
              child: const Text("Enviando Paramentro com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
