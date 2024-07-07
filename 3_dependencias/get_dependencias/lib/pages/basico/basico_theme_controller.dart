import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var themeModeSelected =
      ThemeMode.light.obs; // Observável para o tema selecionado

  void alterarThemeData(ThemeMode newThemeMode) {
    themeModeSelected.value = newThemeMode; // Atualiza o tema selecionado
  }
}
