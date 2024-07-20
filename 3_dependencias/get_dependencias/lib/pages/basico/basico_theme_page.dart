import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basico_theme_controller.dart';

class BasicoThemePage extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  BasicoThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aparência",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "Nessa área usaremos o básico sobre dependência para mudar o tema do app",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Obx(() => RadioListTile<ThemeMode>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary: const Icon(Icons.light_mode_outlined),
                      title: const Text("Modo Claro"),
                      groupValue: themeController.themeModeSelected.value,
                      value: ThemeMode.light,
                      onChanged: (value) {
                        themeController.alterarThemeData(value!);
                      },
                    )),
                Obx(() => RadioListTile<ThemeMode>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary: const Icon(Icons.dark_mode_outlined),
                      title: const Text("Modo Escuro"),
                      groupValue: themeController.themeModeSelected.value,
                      value: ThemeMode.dark,
                      onChanged: (value) {
                        themeController.alterarThemeData(value!);
                      },
                    )),
                Obx(() => RadioListTile<ThemeMode>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary:
                          const Icon(Icons.stay_current_portrait_outlined),
                      title: const Text("Configuração do celular"),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                            "O aplicativo usará as mesmas configurações do seu celular"),
                      ),
                      groupValue: themeController.themeModeSelected.value,
                      value: ThemeMode.system,
                      onChanged: (value) {
                        themeController.alterarThemeData(value!);
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
