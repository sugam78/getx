import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Switch/switch_controller.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SwitchController controller = Get.put(SwitchController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('On/Off'),
              Obx(() {
                return Switch(
                    value: controller.value.value, onChanged: (value){
                  controller.onTap();
                });
              })

            ],
          ),
        ],
      ),
    );
  }
}
