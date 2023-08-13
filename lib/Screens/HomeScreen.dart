import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_manager/controllers/counter_controller.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(counterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Press to floating Button to increment number"),
              ],
            ),
            Obx(
              () => Text("${controller.counterRx}"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.Dicrement();
            },
            child: const Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
