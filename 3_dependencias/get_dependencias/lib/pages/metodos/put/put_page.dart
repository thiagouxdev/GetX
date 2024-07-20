import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_permanent.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_tag.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController());
  final controller2 = Get.put(PutController());
  final controllerPermanent =
      Get.put(PutControllerPermanent(), permanent: true);

  //Controle Tageada
  final controllerTagX =
      Get.put(PutControllerTag(retornTag: "Retorno TagX"), tag: "TagX");
  final controllerTagY =
      Get.put(PutControllerTag(retornTag: "Retorno TagY"), tag: "TagY");
  final controllerTagZ =
      Get.put(PutControllerTag(retornTag: "Retorno sem tag"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Time put: ${controller.timestamp}",
                style: Theme.of(context).textTheme.titleMedium),
            Text("Time putPermanent: ${controllerPermanent.timestamp}",
                style: Theme.of(context).textTheme.titleSmall),
            const WidgetInterno()
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Get.find<PutControllerTag>(tag: "TagX").retornTag),
        Text(Get.find<PutControllerTag>(tag: "TagY").retornTag),
        Text(Get.find<PutControllerTag>().retornTag),
      ],
    );
  }
}
