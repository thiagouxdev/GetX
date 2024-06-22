import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/to/page_one.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Este método é usado para navegar para uma nova tela. Ele empilha a nova tela na pilha de navegação.',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            FilledButton.tonal(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PageOne();
                  }));
                },
                child: const Text("Go to Page com Flutter nativo")),
            FilledButton.tonal(
                onPressed: () => Get.to(const PageOne()),
                child: const Text("Go to Page com GetX")),
          ],
        ),
      ),
    );
  }
}
