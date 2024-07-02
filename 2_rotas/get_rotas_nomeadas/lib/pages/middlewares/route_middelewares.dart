import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint("Executando middleware onPageCalled");
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint("Executando middleware OnPageBuilt");
    return Theme(
      data: ThemeData.light(),
      child: page,
    );
  }
}
