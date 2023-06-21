import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // * Next Page but this page get destroyed ig (You can't come back here)
                Get.offNamed('/screen2');
              },
              child: const Text('Screen 2'),
            )
          ],
        ),
      ),
    );
  }
}
