import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  MiddlewaresHomePage({super.key}) {
    debugPrint("Criando o MiddlewaresHomePages");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Executando middlaware onPageCalled");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Label"),
            ),
          ],
        ),
      ),
    );
  }
}
