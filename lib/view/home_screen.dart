import 'package:demo2/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
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
