import 'package:flutter/material.dart';

class RotaNaoEncontrada extends StatefulWidget {
  const RotaNaoEncontrada({super.key});

  @override
  State<RotaNaoEncontrada> createState() => _RotaNaoEncontradaState();
}

class _RotaNaoEncontradaState extends State<RotaNaoEncontrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "404",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              " Página Não Encontrada",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 88)
          ],
        ),
      ),
    );
  }
}
