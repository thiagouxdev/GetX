import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/offAll/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page_one'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const PageTwo();
                      },
                    ),
                    ModalRoute.withName("/OffAllHomePage"),
                  );
                },
                child: const Text("offAll to Page com Flutter nativo")),
            FilledButton.tonal(
                onPressed: () => Get.offAll(
                      const PageTwo(),
                      predicate: ModalRoute.withName("/OffAllHomePage"),
                    ),
                child: const Text("offAll to Page com GetX")),
          ],
        ),
      ),
    );
  }
}
