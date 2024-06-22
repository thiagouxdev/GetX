import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/await_params/page_one.dart';

class AwaitHomePage extends StatelessWidget {
  const AwaitHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Retorna para a tela anterior na pilha de navegação. É para passar os valores da proxima tela para aterior',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 24,
            ),
            FilledButton.tonal(
                onPressed: () async {
                  final result = await Get.to(const PageOne());
                  debugPrint(result);
                },
                child: const Text("Back to Page com GetX")),
          ],
        ),
      ),
    );
  }
}
