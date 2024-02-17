import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Slider/slider_controller.dart';

class SliderScreen extends StatelessWidget {
   SliderScreen({super.key});
  final SliderController controller = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    debugPrint('built');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child :Obx((){
              return Column(
                children: [
                  Container(
                    color: Colors.blue.withOpacity(controller.opac.value),
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width *0.5,
                  ),
                  Slider(value: controller.opac.value, onChanged: (value){
                    controller.onChanged(value);
                  }),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
