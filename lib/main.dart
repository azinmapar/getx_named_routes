import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes/screen1.dart';
import 'package:getx_named_routes/screen2.dart';
import 'package:getx_named_routes/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/screen1', page: () => const Screen1()),
        GetPage(name: '/screen2', page: () => const Screen2()),
        GetPage(name: '/screen3', page: () => const Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

/**
 * $ Named Routes (Navigation)
 * * Next Screen but can't come back here
 * $ Get.offNamed('/screen')
 * * Normal next Screen
 * $ Get.toNamed('/screen')
 * * Destroys this and all prev screens and goes to next screen specified
 * $ Get.offAllNamed('/screen')
 */
