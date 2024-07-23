import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lazy_put_controller.dart';

import 'lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    Get.lazyPut(() => LazyPutController());
    // Mata a instancia, porém ele mantem a factory ativa dentro do Get fazendo com que,// tenha a possibilidade de acessa-la de qualquer lugar para sempre dentro do Get

    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
    // Mantem a instanv=cia dentro do Get, sendo assim quando você pedir a classe
    // ele retorna-ra a mesma instancia anterior!!!

    // Get.put(LazyPutFenixController(), permanent: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = "";
  String nomeFenix = "";
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LazyPut'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _textController,
                autofocus: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Text("Nome: $nome"),
              Text("NomeFenix: $nomeFenix"),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      nome = "";
                    });
                  },
                ),
                TextButton(
                  onPressed: () {
                    final controller = Get.find<LazyPutController>();
                    setState(() {
                      nome = controller.nome;
                    });
                  },
                  child: const Text("Fabricar Memoria"),
                ),
                FilledButton(
                  onPressed: () {
                    final controller = Get.find<LazyPutController>();
                    setState(() {
                      controller.nome = _textController.text;
                      nome = controller.nome;
                    });
                  },
                  child: const Text("Atualizar memoria"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      nomeFenix = "";
                    });
                  },
                ),
                TextButton(
                  onPressed: () {
                    final controller = Get.find<LazyPutFenixController>();
                    setState(() {
                      nomeFenix = controller.nome;
                    });
                  },
                  child: const Text("Fabricar Fenix"),
                ),
                FilledButton(
                  onPressed: () {
                    final controller = Get.find<LazyPutFenixController>();
                    setState(() {
                      controller.nome = _textController.text;
                      nomeFenix = controller.nome;
                    });
                  },
                  child: const Text("Atualizar Fenix"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
