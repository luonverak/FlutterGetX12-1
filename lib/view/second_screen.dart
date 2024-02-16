import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.counter.value}',
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => controller.decrease(),
            icon: Icon(Icons.remove),
          ),
          const SizedBox(
            width: 30,
          ),
          IconButton(
            onPressed: () => controller.increase(),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
