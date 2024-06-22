import 'package:flutter/material.dart';

class InicialPage1 extends StatelessWidget {
  const InicialPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Label"))
          ],
        ),
      ),
    );
  }
}
