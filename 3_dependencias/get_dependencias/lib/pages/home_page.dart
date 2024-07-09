import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text(
          'Home Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Get.toNamed(AppRoutes.basico);
              },
              child: const Text("Basico (Aparência App)"),
            )
          ],
        ),
      ),
    );
  }
}
