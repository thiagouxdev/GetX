import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/offAll/page_one.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Remove todas as telas da pilha de navegação e navega para a nova tela. Geralmente usado para navegação em situações como logout, onde todas as telas anteriores devem ser descartadas.',
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
