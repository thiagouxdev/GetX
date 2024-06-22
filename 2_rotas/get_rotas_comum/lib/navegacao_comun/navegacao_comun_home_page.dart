import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comun/await_params/await_home_page.dart.dart';
import 'package:get_rotas/navegacao_comun/back/back_home_page.dart.dart';
import 'package:get_rotas/navegacao_comun/off/off_home_page.dart';
import 'package:get_rotas/navegacao_comun/offAll/off_all_home_page.dart';
import 'package:get_rotas/navegacao_comun/send_params/send_params_home_page.dart';
import 'package:get_rotas/navegacao_comun/to/to_home_page.dart';

class NavegacaoComunHomePage extends StatelessWidget {
  const NavegacaoComunHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Navegação Comun"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Get.to(const ToHomePage());
              },
              label: const Text("To (Push)"),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.to(const BackHomePageDart());
              },
              label: const Text("Back (Pop)"),
            ),
            FilledButton(
              onPressed: () {
                Get.to(const OffHomePage());
              },
              child: const Text("Off (Replacement)"),
            ),
            FilledButton(
              onPressed: () {
                Get.to(const OffAllHomePage());
              },
              child: const Text("OffAll (pushAndRemoveUntil)"),
            ),
            FilledButton(
              onPressed: () {
                Get.to(const SendParamsHomePage());
              },
              child: const Text("SendParams"),
            ),
            FilledButton(
              onPressed: () {
                Get.to(const AwaitHomePage());
              },
              child: const Text("AwaitParams"),
            ),
          ],
        ),
      ),
    );
  }
}
