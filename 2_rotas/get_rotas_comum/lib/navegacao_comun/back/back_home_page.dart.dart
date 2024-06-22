import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackHomePageDart extends StatelessWidget {
  const BackHomePageDart({super.key});

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
              'Retorna para a tela anterior na pilha de navegação. É usado principalmente para voltar da tela atual para a tela anterior.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 24,
            ),
            FilledButton.tonal(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Back to Page com Flutter nativo")),
            FilledButton.tonal(
                onPressed: () => Get.back(),
                child: const Text("Back to Page com GetX")),
          ],
        ),
      ),
    );
  }
}
