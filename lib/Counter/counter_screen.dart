import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Counter/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  int num = 0;
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Obx(
                  (){
                    return Text(
                      counterController.counter.toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  }
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
