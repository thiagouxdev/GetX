import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {
  const ArgumentsParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> arguments = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments["Aluno"] ?? "Nome não encontrado",
                style: Theme.of(context).textTheme.headlineSmall),
            Text(arguments["Curso"] ?? "Curso não encontrado",
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}
