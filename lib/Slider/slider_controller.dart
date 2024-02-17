
import 'package:get/get.dart';

class SliderController extends GetxController{
  RxDouble opac = 0.1.obs;

  onChanged(double value){
    opac.value = value;
  }
}