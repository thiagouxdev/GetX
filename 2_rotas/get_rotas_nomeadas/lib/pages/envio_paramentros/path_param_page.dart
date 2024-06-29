import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamPage extends StatelessWidget {
  const PathParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Page'),
      ),
      // Foi adicionado um "!" no final do ["nome"]! pois eu teoricamente estou garantindo que não será null...
      body: Center(
        child: Text(Get.parameters["aluno"]!),
      ),
    );
  }
}
