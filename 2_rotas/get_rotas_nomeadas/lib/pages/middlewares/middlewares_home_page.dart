import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  const MiddlewaresHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
