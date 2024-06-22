import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/off/page_one.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Navega para uma nova tela e remove todas as telas anteriores da pilha de navegação. Útil para navegar para uma nova tela e limpar a pilha de navegação, por exemplo, após um login bem-sucedido.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PageOne();
                }));
              },
              child: const Text("Off to Page com Flutter nativo"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const PageOne()),
              child: const Text("Off to Page com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
