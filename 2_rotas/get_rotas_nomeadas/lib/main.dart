import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/envio_paramentros/arguments_param_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/middlewares_home_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_paramentros/path_param_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_paramentros/query_param_page.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page_1.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/route_middelewares.dart';
import 'package:get_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada.dart';
import 'pages/envio_paramentros/envio_parametros_home_page.dart';
import 'pages/nested_navigation/home_nested_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get middlewares => null;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00b131)),
        useMaterial3: true,
      ),
      unknownRoute: GetPage(
        name: "/404",
        page: () => const RotaNaoEncontrada(),
      ),
      initialRoute: "/home",

      // Utilizado para salvar as rotas, bem util para analitics onde precisamos saber as paginas e fluxo mais acessados
      routingCallback: (Routing? routing) {
        debugPrint(routing?.current);
        debugPrint(routing?.previous);
      },
      getPages: [
        GetPage(
          name: "/home",
          page: () => const HomePage(),
        ),
        GetPage(
          name: "/inicial/page1",
          page: () => const InicialPage(),
        ),
        GetPage(
          name: "/envio_paramentros/",
          page: () => const EnvioParametrosHomePage(),
          children: [
            ///A rota para os itens abaixo são concatenadas com o item de cima. Ex: /envio_paramentros/arguments
            GetPage(
              name: "/arguments",
              page: () => const ArgumentsParamPage(),
            ),
            GetPage(
              ///Esse items aluno precisa ser passado para que você continui com a rota
              name: "/pathParam/:aluno/jornadaGetX",
              page: () => const PathParamPage(),
            ),
            GetPage(
              name: "/queryParam",
              page: () => const QueryParamPage(),
            ),
          ],
        ),
        GetPage(
          name: "/middlewares",
          page: () => MiddlewaresHomePage(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
        GetPage(
          name: "/accessDenied",
          page: () => const Text("Página principal"),
        ),
        GetPage(
          name: "/nested_navigation",
          page: () => HomeNestedNavigation(),
        )
      ],
    );
  }
}
