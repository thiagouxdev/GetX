import 'package:flutter/material.dart';

class BasicoHomePage extends StatefulWidget {
  const BasicoHomePage({super.key});

  @override
  State<BasicoHomePage> createState() => _BasicoHomePageState();
}

class _BasicoHomePageState extends State<BasicoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basico'),
      ),
      body: Container(),
    );
  }
}
